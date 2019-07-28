object BookingForm: TBookingForm
  Left = 230
  Top = 3
  Width = 1018
  Height = 697
  Caption = 'Booking Form'
  Color = 15451300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 150
    Align = alTop
    ParentColor = True
    TabOrder = 0
    object GroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Booking Details'
      TabOrder = 0
      Height = 148
      Width = 1000
      object DBText2: TDBText
        Left = 286
        Top = 91
        Width = 50
        Height = 13
        AutoSize = True
        DataField = 'bookings_id'
        DataSource = BookingDS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 5
        Top = 23
        Caption = 'Principal'
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 5
        Top = 69
        Caption = 'Country'
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 5
        Top = 92
        Caption = 'Reference'
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 218
        Top = 67
        Caption = 'Currency'
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 218
        Top = 91
        Caption = 'Booking ID'
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 5
        Top = 46
        Caption = 'Web User'
        Transparent = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 70
        Top = 90
        DataBinding.DataField = 'reference'
        DataBinding.DataSource = BookingDS
        Style.Color = 16247513
        TabOrder = 4
        Width = 144
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 70
        Top = 44
        DataBinding.DataField = 'web_users_id'
        DataBinding.DataSource = BookingDS
        Properties.ClearKey = 46
        Properties.DropDownWidth = 250
        Properties.KeyFieldNames = 'web_users_id'
        Properties.ListColumns = <
          item
            FieldName = 'web_user'
          end>
        Properties.ListSource = BackOfficeDataModule.WebUsersDS
        Style.Color = 16247513
        TabOrder = 1
        Width = 270
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 70
        Top = 67
        DataBinding.DataField = 'countries_id'
        DataBinding.DataSource = BookingDS
        Properties.ClearKey = 46
        Properties.DropDownWidth = 200
        Properties.KeyFieldNames = 'countries_id'
        Properties.ListColumns = <
          item
            FieldName = 'country'
          end>
        Properties.ListSource = BackOfficeDataModule.CountriesDS
        Style.Color = 16247513
        TabOrder = 2
        Width = 146
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 272
        Top = 67
        DataBinding.DataField = 'currencies_id'
        DataBinding.DataSource = BookingDS
        Properties.ClearKey = 46
        Properties.DropDownWidth = 200
        Properties.KeyFieldNames = 'currencies_id'
        Properties.ListColumns = <
          item
            FieldName = 'currency'
          end>
        Properties.ListSource = BackOfficeDataModule.CurrenciesDS
        Style.Color = 16247513
        TabOrder = 3
        Width = 152
      end
      object AgentLCB: TcxDBLookupComboBox
        Left = 70
        Top = 21
        DataBinding.DataField = 'addressbook_id'
        DataBinding.DataSource = BookingDS
        Properties.ClearKey = 46
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'Addressbook_id'
        Properties.ListColumns = <
          item
            FieldName = 'Organisation'
          end>
        Properties.ListSource = BackOfficeDataModule.PrinAgentDS
        Properties.OnEditValueChanged = AgentLCBPropertiesEditValueChanged
        Properties.OnValidate = cxDBLookupComboBox3PropertiesValidate
        Style.Color = 16247513
        TabOrder = 0
        Width = 270
      end
      object Panel1: TPanel
        Left = 440
        Top = 20
        Width = 566
        Height = 126
        Color = 15451300
        TabOrder = 5
        object cxGrid2: TcxGrid
          Left = 1
          Top = 1
          Width = 564
          Height = 124
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            OnDblClick = cxGridDBTableView1DblClick
            OnKeyDown = cxGridDBTableView1KeyDown
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = BookingToursDS
            DataController.KeyFieldNames = 'bookingstours_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            object cxGridDBTableView1tourcode: TcxGridDBColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'tourcode'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'TourCode'
              Properties.ListColumns = <
                item
                  FieldName = 'TourCode'
                end>
              Properties.ListSource = BackOfficeDataModule.TourDS
            end
            object cxGridDBTableView1tourdate: TcxGridDBColumn
              Caption = 'Tour Date'
              DataBinding.FieldName = 'tourdate'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.EditMask = '!99/99/0000;1;_'
              Properties.OnButtonClick = cxGridDBTableView1tourdatePropertiesButtonClick
              SortIndex = 0
              SortOrder = soDescending
              Width = 105
            end
            object cxGridDBTableView1TourLeader: TcxGridDBColumn
              Caption = 'TL'
              DataBinding.FieldName = 'tourleader'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView1TourleaderTrainee: TcxGridDBColumn
              Caption = 'TTL'
              DataBinding.FieldName = 'tourleadertrainee'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView1bookedon: TcxGridDBColumn
              Caption = 'Booked On'
              DataBinding.FieldName = 'bookedon'
              PropertiesClassName = 'TcxDateEditProperties'
              Width = 101
            end
            object cxGridDBTableView1confirmedon: TcxGridDBColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'confirmedon'
              PropertiesClassName = 'TcxDateEditProperties'
              Width = 101
            end
            object cxGridDBTableView1cancelledon: TcxGridDBColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'cancelledon'
              PropertiesClassName = 'TcxDateEditProperties'
              Width = 101
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object cxButton2: TcxButton
        Left = 276
        Top = 118
        Width = 146
        Height = 25
        Caption = 'SS / LP / Share With'
        TabOrder = 6
        OnClick = cxButton2Click
      end
      object cxButton3: TcxButton
        Left = 6
        Top = 118
        Width = 109
        Height = 25
        Caption = 'Edit Booking'
        TabOrder = 7
        OnClick = cxButton3Click
      end
    end
  end
  object GridsPanel: TPanel
    Left = 0
    Top = 319
    Width = 1002
    Height = 288
    Align = alClient
    TabOrder = 1
    object GridsGB: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      TabOrder = 0
      Height = 286
      Width = 1000
      object cxPageControl1: TcxPageControl
        Left = 3
        Top = 18
        Width = 994
        Height = 265
        ActivePage = AccomodationTab
        Align = alClient
        Images = ImageList2
        TabOrder = 0
        ClientRectBottom = 259
        ClientRectLeft = 3
        ClientRectRight = 988
        ClientRectTop = 27
        object TicketsTab: TcxTabSheet
          Caption = 'Tickets          '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 0
          ParentFont = False
          object TicketsGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 985
            Height = 232
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            PopupMenu = PopupMenu1
            TabOrder = 0
            object cxGridDBTableView7: TcxGridDBTableView
              OnDblClick = cxGridDBTableView7DblClick
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = TicketsDS
              DataController.KeyFieldNames = 'bookingstickets_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object cxGridDBTableView7Agent_cities_id: TcxGridDBColumn
                Caption = 'Agent City'
                DataBinding.FieldName = 'Agent_Cities_id'
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
              object cxGridDBTableView7addressbook_id: TcxGridDBColumn
                Caption = 'Agent'
                DataBinding.FieldName = 'AgentLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView7addressbook_idPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 140
              end
              object cxGridDBTableView7tickets_id: TcxGridDBColumn
                Caption = 'Mode'
                DataBinding.FieldName = 'tickets_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 75
                Properties.KeyFieldNames = 'tickets_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'details'
                  end>
                Properties.ListSource = BackOfficeDataModule.TicketsDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 60
              end
              object cxGridDBTableView7nooftickets: TcxGridDBColumn
                Caption = 'Tickets'
                DataBinding.FieldName = 'nooftickets'
                Options.Filtering = False
                Options.Grouping = False
                Width = 63
              end
              object cxGridDBTableView7traveldate: TcxGridDBColumn
                Caption = 'Travel Date'
                DataBinding.FieldName = 'traveldate'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 91
              end
              object cxGridDBTableView7from_cities_id: TcxGridDBColumn
                Caption = 'From City'
                DataBinding.FieldName = 'from_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = BackOfficeDataModule.CitiesDS
                Options.Filtering = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soAscending
              end
              object cxGridDBTableView7to_cities_id: TcxGridDBColumn
                Caption = 'To City'
                DataBinding.FieldName = 'to_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = BackOfficeDataModule.CitiesDS
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView7flightno: TcxGridDBColumn
                Caption = 'Travel Option'
                DataBinding.FieldName = 'flightno'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView7flightnoPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 118
              end
              object cxGridDBTableView7from_trainstations_id: TcxGridDBColumn
                Caption = 'From Station'
                DataBinding.FieldName = 'FromTrainStationLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView7from_trainstations_idPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 92
              end
              object cxGridDBTableView7to_trainstations_id: TcxGridDBColumn
                Caption = 'To Station'
                DataBinding.FieldName = 'ToTrainStationLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView7to_trainstations_idPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 87
              end
              object cxGridDBTableView7ClassLookup: TcxGridDBColumn
                Caption = 'Class'
                DataBinding.FieldName = 'ClassLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView7ClassLookupPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 80
              end
              object cxGridDBTableView7etd: TcxGridDBColumn
                Caption = 'ETD'
                DataBinding.FieldName = 'etd'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Options.Grouping = False
                Width = 65
              end
              object cxGridDBTableView7eta: TcxGridDBColumn
                Caption = 'ETA'
                DataBinding.FieldName = 'eta'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Options.Grouping = False
                Width = 71
              end
              object cxGridDBTableView7TourCode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView7TourDate: TcxGridDBColumn
                Caption = 'Tour Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 90
              end
              object cxGridDBTableView7bookedon: TcxGridDBColumn
                Caption = 'Booked On'
                DataBinding.FieldName = 'bookedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 91
              end
              object cxGridDBTableView7confirmedon: TcxGridDBColumn
                Caption = 'Confirmed On'
                DataBinding.FieldName = 'confirmedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 105
              end
              object cxGridDBTableView7cancelledon: TcxGridDBColumn
                Caption = 'Cancelled On'
                DataBinding.FieldName = 'cancelledon'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 101
              end
              object cxGridDBTableView7quoted: TcxGridDBColumn
                Caption = 'Quotation'
                DataBinding.FieldName = 'quoted'
                Options.Filtering = False
                Options.Grouping = False
                Width = 82
              end
              object cxGridDBTableView7vouchers_id: TcxGridDBColumn
                Caption = 'Voucher No'
                DataBinding.FieldName = 'VoucherLookup'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 95
              end
              object cxGridDBTableView7DBNoBooked: TcxGridDBColumn
                Caption = 'Booked'
                DataBinding.FieldName = 'nobooked'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView7DBNoCancelled: TcxGridDBColumn
                Caption = 'Cancelled'
                DataBinding.FieldName = 'nocancelled'
                Options.Filtering = False
                Options.Grouping = False
              end
            end
            object cxGridLevel7: TcxGridLevel
              GridView = cxGridDBTableView7
            end
          end
        end
        object AccomodationTab: TcxTabSheet
          Caption = 'Accomodation     '
          ImageIndex = 1
          object AccomodationGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 985
            Height = 232
            Align = alClient
            PopupMenu = PopupMenu1
            TabOrder = 0
            object cxGridDBTableView6: TcxGridDBTableView
              OnDblClick = cxGridDBTableView6DblClick
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = AccDS
              DataController.KeyFieldNames = 'bookingsaccommodation_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object cxGridDBTableView6Hotel_cities_id: TcxGridDBColumn
                Caption = 'Hotel City'
                DataBinding.FieldName = 'Hotel_Cities_id'
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
              object cxGridDBTableView6addressbook_id: TcxGridDBColumn
                Caption = 'Hotel'
                DataBinding.FieldName = 'HotelLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView6addressbook_idPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 112
              end
              object cxGridDBTableView6datein: TcxGridDBColumn
                Caption = 'Date In'
                DataBinding.FieldName = 'datein'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
                Width = 75
              end
              object cxGridDBTableView6dateout: TcxGridDBColumn
                Caption = 'Date Out'
                DataBinding.FieldName = 'dateout'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 76
              end
              object cxGridDBTableView6Nights: TcxGridDBColumn
                DataBinding.FieldName = 'Nights'
                Options.Filtering = False
                Options.Grouping = False
                Width = 74
              end
              object cxGridDBTableView6singles: TcxGridDBColumn
                Caption = 'Singles'
                DataBinding.FieldName = 'singles'
                Options.Filtering = False
                Options.Grouping = False
                Width = 76
              end
              object cxGridDBTableView6doubles: TcxGridDBColumn
                Caption = 'Doubles'
                DataBinding.FieldName = 'doubles'
                Options.Filtering = False
                Options.Grouping = False
                Width = 68
              end
              object cxGridDBTableView6Triples: TcxGridDBColumn
                Caption = 'Triples'
                DataBinding.FieldName = 'triples'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView6Twins: TcxGridDBColumn
                Caption = 'Twins'
                DataBinding.FieldName = 'twins'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView6RoomTypeLookup: TcxGridDBColumn
                Caption = 'Room Type'
                DataBinding.FieldName = 'RoomTypeLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView6RoomTypeLookupPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 100
              end
              object cxGridDBTableView6ac: TcxGridDBColumn
                Caption = 'AC'
                DataBinding.FieldName = 'ac'
                Options.Filtering = False
                Options.Grouping = False
                Width = 47
              end
              object cxGridDBTableView6MealPlanLookup: TcxGridDBColumn
                Caption = 'Meal Plan'
                DataBinding.FieldName = 'mealplans_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'mealplans_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'plan'
                  end>
                Properties.ListSource = BackOfficeDataModule.MealPlanDs
                Options.Filtering = False
                Options.Grouping = False
                Width = 70
              end
              object cxGridDBTableView6TourCode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 70
              end
              object cxGridDBTableView6TourDate: TcxGridDBColumn
                Caption = 'Tour Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 84
              end
              object cxGridDBTableView6bookedon: TcxGridDBColumn
                Caption = 'Booked On'
                DataBinding.FieldName = 'bookedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 108
              end
              object cxGridDBTableView6confirmedon: TcxGridDBColumn
                Caption = 'Confirmed On'
                DataBinding.FieldName = 'confirmedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 106
              end
              object cxGridDBTableView6cancelledon: TcxGridDBColumn
                Caption = 'Cancelled On'
                DataBinding.FieldName = 'cancelledon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 106
              end
              object cxGridDBTableView6quoted: TcxGridDBColumn
                Caption = 'Quotation'
                DataBinding.FieldName = 'quoted'
                Options.Filtering = False
                Options.Grouping = False
                Width = 97
              end
              object cxGridDBTableView6vouchers_id: TcxGridDBColumn
                Caption = 'Voucher No'
                DataBinding.FieldName = 'VoucherLookup'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 112
              end
            end
            object cxGridLevel6: TcxGridLevel
              GridView = cxGridDBTableView6
            end
          end
        end
        object SightTab: TcxTabSheet
          Caption = 'Sight Seeing     '
          ImageIndex = 2
          object SightGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 985
            Height = 232
            Align = alClient
            PopupMenu = PopupMenu1
            TabOrder = 0
            object cxGridDBTableView5: TcxGridDBTableView
              OnDblClick = cxGridDBTableView5DblClick
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = SightDS
              DataController.KeyFieldNames = 'bookingsservices_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object cxGridDBTableView5date: TcxGridDBColumn
                Caption = 'Date'
                DataBinding.FieldName = 'date'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
                Width = 91
              end
              object cxGridDBTableView5service_cities_id: TcxGridDBColumn
                Caption = 'Service City'
                DataBinding.FieldName = 'service_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 180
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = BackOfficeDataModule.CitiesDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 99
              end
              object cxGridDBTableView5ServicesLookup: TcxGridDBColumn
                Caption = 'Service'
                DataBinding.FieldName = 'ServicesLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView5ServicesLookupPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 131
              end
              object cxGridDBTableView5Guide: TcxGridDBColumn
                Caption = 'Guide'
                DataBinding.FieldName = 'guide'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView5entrancefees: TcxGridDBColumn
                Caption = 'Entrance Fees'
                DataBinding.FieldName = 'entrancefees'
                Options.Filtering = False
                Options.Grouping = False
                Width = 104
              end
              object cxGridDBTableView5AgentLookup: TcxGridDBColumn
                Caption = 'Agent'
                DataBinding.FieldName = 'AgentLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView5AgentLookupPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 126
              end
              object cxGridDBTableView5Hotel_Addressbook_id: TcxGridDBColumn
                Caption = 'Hotel'
                DataBinding.FieldName = 'hotel_addressbook_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 350
                Properties.KeyFieldNames = 'Addressbook_id'
                Properties.ListColumns = <
                  item
                    MinWidth = 200
                    FieldName = 'Organisation'
                  end
                  item
                    MinWidth = 150
                    FieldName = 'City'
                  end>
                Properties.ListSource = BackOfficeDataModule.HoteDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 111
              end
              object cxGridDBTableView5Transport: TcxGridDBColumn
                DataBinding.FieldName = 'Transport'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView5Vehicles_id: TcxGridDBColumn
                Caption = 'Vehicle'
                DataBinding.FieldName = 'vehicles_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'Vehicles_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Vehicle'
                  end>
                Properties.ListSource = BackOfficeDataModule.VehicleDS
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView5ac: TcxGridDBColumn
                Caption = 'AC'
                DataBinding.FieldName = 'ac'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView5NoOfVehicles: TcxGridDBColumn
                Caption = 'No Of Vehicles'
                DataBinding.FieldName = 'NoOfVehicles'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView5eta: TcxGridDBColumn
                Caption = 'Timing'
                DataBinding.FieldName = 'eta'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.UseCtrlIncrement = True
                Options.Filtering = False
                Options.Grouping = False
                Width = 76
              end
              object cxGridDBTableView5TourCode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView5TourDate: TcxGridDBColumn
                Caption = 'Tour Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 84
              end
              object cxGridDBTableView5bookedon: TcxGridDBColumn
                Caption = 'Booked On'
                DataBinding.FieldName = 'bookedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 107
              end
              object cxGridDBTableView5confirmedon: TcxGridDBColumn
                Caption = 'Confirmed On'
                DataBinding.FieldName = 'confirmedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 107
              end
              object cxGridDBTableView5cancelledon: TcxGridDBColumn
                Caption = 'Cancelled On'
                DataBinding.FieldName = 'cancelledon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 115
              end
              object cxGridDBTableView5quoted: TcxGridDBColumn
                Caption = 'Quotation'
                DataBinding.FieldName = 'quoted'
                Options.Filtering = False
                Options.Grouping = False
                Width = 107
              end
              object cxGridDBTableView5vouchers_id: TcxGridDBColumn
                Caption = 'Voucher No'
                DataBinding.FieldName = 'VoucherLookup'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 102
              end
            end
            object cxGridLevel5: TcxGridLevel
              GridView = cxGridDBTableView5
            end
          end
        end
        object TransferTab: TcxTabSheet
          Caption = 'Transfer          '
          ImageIndex = 3
          object TransferGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 985
            Height = 232
            Align = alClient
            PopupMenu = PopupMenu1
            TabOrder = 0
            object cxGridDBTableView4: TcxGridDBTableView
              OnDblClick = cxGridDBTableView4DblClick
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = TransferDS
              DataController.KeyFieldNames = 'bookingsservices_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object cxGridDBTableView4DBTransferTypes_id: TcxGridDBColumn
                Caption = 'Transfer Type'
                DataBinding.FieldName = 'transfertypes_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'transfertypes_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'transfercode'
                  end>
                Properties.ListSource = BackOfficeDataModule.TransferTypesDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 97
              end
              object cxGridDBTableView4date: TcxGridDBColumn
                Caption = 'Date'
                DataBinding.FieldName = 'date'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
                Width = 82
              end
              object cxGridDBTableView4from_cities_id: TcxGridDBColumn
                Caption = 'From City'
                DataBinding.FieldName = 'from_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = BackOfficeDataModule.CitiesDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 101
              end
              object cxGridDBTableView4to_cities_id: TcxGridDBColumn
                Caption = 'To City'
                DataBinding.FieldName = 'to_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = BackOfficeDataModule.CitiesDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 96
              end
              object cxGridDBTableView4service_cities_id: TcxGridDBColumn
                Caption = 'Service City'
                DataBinding.FieldName = 'service_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = BackOfficeDataModule.CitiesDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 107
              end
              object cxGridDBTableView4ServicesLookup: TcxGridDBColumn
                Caption = 'Service'
                DataBinding.FieldName = 'ServicesLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView4ServicesLookupPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 150
              end
              object cxGridDBTableView4AgentLookup: TcxGridDBColumn
                Caption = 'Agent'
                DataBinding.FieldName = 'AgentLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView4AgentLookupPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 143
              end
              object cxGridDBTableView4hotel_addressbook_id: TcxGridDBColumn
                Caption = 'Hotel'
                DataBinding.FieldName = 'hotel_addressbook_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 250
                Properties.KeyFieldNames = 'Addressbook_id'
                Properties.ListColumns = <
                  item
                    MinWidth = 150
                    FieldName = 'Organisation'
                  end
                  item
                    MinWidth = 100
                    FieldName = 'City'
                  end>
                Properties.ListSource = BackOfficeDataModule.HoteDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 115
              end
              object cxGridDBTableView4flightno: TcxGridDBColumn
                Caption = 'Travel Option'
                DataBinding.FieldName = 'flightno'
                Options.Filtering = False
                Options.Grouping = False
                Width = 107
              end
              object cxGridDBTableView4eta: TcxGridDBColumn
                Caption = 'Timing'
                DataBinding.FieldName = 'eta'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.UseCtrlIncrement = True
                Options.Filtering = False
                Options.Grouping = False
                Width = 89
              end
              object cxGridDBTableView4vehicles_id: TcxGridDBColumn
                Caption = 'Vehicle'
                DataBinding.FieldName = 'vehicles_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'Vehicles_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Vehicle'
                  end>
                Properties.ListSource = BackOfficeDataModule.VehicleDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 109
              end
              object cxGridDBTableView4NoOfVehicles: TcxGridDBColumn
                Caption = 'Vehicles'
                DataBinding.FieldName = 'NoOfVehicles'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView4ac: TcxGridDBColumn
                Caption = 'AC'
                DataBinding.FieldName = 'ac'
                Options.Filtering = False
                Options.Grouping = False
                Width = 47
              end
              object cxGridDBTableView4TourCode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView4TourDate: TcxGridDBColumn
                Caption = 'Tour Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 84
              end
              object cxGridDBTableView4bookedon: TcxGridDBColumn
                Caption = 'Booked On'
                DataBinding.FieldName = 'bookedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 95
              end
              object cxGridDBTableView4confirmedon: TcxGridDBColumn
                Caption = 'Confirmed On'
                DataBinding.FieldName = 'confirmedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 99
              end
              object cxGridDBTableView4cancelledon: TcxGridDBColumn
                Caption = 'Cancelled On'
                DataBinding.FieldName = 'cancelledon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 107
              end
              object cxGridDBTableView4quoted: TcxGridDBColumn
                Caption = 'Quotation'
                DataBinding.FieldName = 'quoted'
                Options.Filtering = False
                Options.Grouping = False
                Width = 113
              end
              object cxGridDBTableView4vouchers_id: TcxGridDBColumn
                Caption = 'Voucher No'
                DataBinding.FieldName = 'VoucherLookup'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 102
              end
              object cxGridDBTableView4GenerateVoucher: TcxGridDBColumn
                Caption = 'Gen Voucher'
                DataBinding.FieldName = 'generatevoucher'
                Visible = False
                Options.Filtering = False
                Options.Grouping = False
              end
            end
            object cxGridLevel4: TcxGridLevel
              GridView = cxGridDBTableView4
            end
          end
        end
        object PackagesTab: TcxTabSheet
          Caption = 'Packages     '
          ImageIndex = 4
          object Label5: TcxLabel
            Left = 400
            Top = 96
            Caption = 'VoucherLookup'
          end
          object PackagesGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 985
            Height = 232
            Align = alClient
            PopupMenu = PopupMenu1
            TabOrder = 0
            object cxGridDBTableView3: TcxGridDBTableView
              OnDblClick = cxGridDBTableView3DblClick
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = PackDS
              DataController.KeyFieldNames = 'bookingspackages_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object cxGridDBTableView3packages_id: TcxGridDBColumn
                Caption = 'Packages'
                DataBinding.FieldName = 'packages_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 400
                Properties.KeyFieldNames = 'Packages_id'
                Properties.ListColumns = <
                  item
                    MinWidth = 200
                    FieldName = 'Package'
                  end
                  item
                    MinWidth = 200
                    FieldName = 'Organisation'
                  end>
                Properties.ListSource = BackOfficeDataModule.PackagesDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 138
              end
              object cxGridDBTableView3addressbook_id: TcxGridDBColumn
                Caption = 'Agent'
                DataBinding.FieldName = 'addressbook_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 200
                Properties.KeyFieldNames = 'Addressbook_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Organisation'
                  end>
                Properties.ListSource = BackOfficeDataModule.AgentDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 125
              end
              object cxGridDBTableView3from_date: TcxGridDBColumn
                Caption = 'From Date'
                DataBinding.FieldName = 'from_date'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
                Width = 98
              end
              object cxGridDBTableView3from_time: TcxGridDBColumn
                Caption = 'From Time'
                DataBinding.FieldName = 'from_time'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Options.Grouping = False
                Width = 89
              end
              object cxGridDBTableView3from_place: TcxGridDBColumn
                Caption = 'From Place'
                DataBinding.FieldName = 'from_place'
                Options.Filtering = False
                Options.Grouping = False
                Width = 96
              end
              object cxGridDBTableView3to_time: TcxGridDBColumn
                Caption = 'To Time'
                DataBinding.FieldName = 'to_time'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Options.Grouping = False
                Width = 91
              end
              object cxGridDBTableView3to_place: TcxGridDBColumn
                Caption = 'To Place'
                DataBinding.FieldName = 'to_place'
                Options.Filtering = False
                Options.Grouping = False
                Width = 82
              end
              object cxGridDBTableView3from_addressbook_id: TcxGridDBColumn
                Caption = 'From Agent'
                DataBinding.FieldName = 'from_addressbook_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 200
                Properties.KeyFieldNames = 'Addressbook_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Organisation'
                  end
                  item
                    FieldName = 'City'
                  end>
                Properties.ListSource = BackOfficeDataModule.AgentDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 116
              end
              object cxGridDBTableView3transport: TcxGridDBColumn
                Caption = 'Transport'
                DataBinding.FieldName = 'transport'
                Options.Filtering = False
                Options.Grouping = False
                Width = 104
              end
              object cxGridDBTableView3ac: TcxGridDBColumn
                Caption = 'AC'
                DataBinding.FieldName = 'ac'
                Options.Filtering = False
                Options.Grouping = False
                Width = 51
              end
              object cxGridDBTableView3TourCode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView3TourDate: TcxGridDBColumn
                Caption = 'Tour Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 84
              end
              object cxGridDBTableView3vehicleLookup: TcxGridDBColumn
                Caption = 'Vehicle'
                DataBinding.FieldName = 'VehicleLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView3vehicles_idPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView3noofvehicles: TcxGridDBColumn
                Caption = 'No Of Vehicles'
                DataBinding.FieldName = 'noofvehicles'
                Options.Filtering = False
                Options.Grouping = False
                Width = 111
              end
              object cxGridDBTableView3bookedon: TcxGridDBColumn
                Caption = 'Booked On'
                DataBinding.FieldName = 'bookedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 93
              end
              object cxGridDBTableView3confirmedon: TcxGridDBColumn
                Caption = 'Confirmed On'
                DataBinding.FieldName = 'confirmedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 103
              end
              object cxGridDBTableView3cancelledon: TcxGridDBColumn
                Caption = 'Cancelled On'
                DataBinding.FieldName = 'cancelledon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 122
              end
              object cxGridDBTableView3quoted: TcxGridDBColumn
                Caption = 'Quotation'
                DataBinding.FieldName = 'quoted'
                Options.Filtering = False
                Options.Grouping = False
                Width = 116
              end
              object cxGridDBTableView3vouchers_id: TcxGridDBColumn
                Caption = 'Voucher No'
                DataBinding.FieldName = 'VoucherLookup'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 112
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
        end
        object TransportTab: TcxTabSheet
          Caption = 'Transport          '
          ImageIndex = 5
          object TransportGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 985
            Height = 232
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView2: TcxGridDBTableView
              OnDblClick = cxGridDBTableView2DblClick
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = TransportDS
              DataController.KeyFieldNames = 'bookingstransport_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object cxGridDBTableView2from_cities_id: TcxGridDBColumn
                Caption = 'From City'
                DataBinding.FieldName = 'from_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = BackOfficeDataModule.CitiesDS
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView2fromplace: TcxGridDBColumn
                Caption = 'From Place'
                DataBinding.FieldName = 'fromplace'
                Options.Filtering = False
                Options.Grouping = False
                Width = 122
              end
              object cxGridDBTableView2to_cities_id: TcxGridDBColumn
                Caption = 'To City'
                DataBinding.FieldName = 'to_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = BackOfficeDataModule.CitiesDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 94
              end
              object cxGridDBTableView2toplace: TcxGridDBColumn
                Caption = 'To Place'
                DataBinding.FieldName = 'toplace'
                Options.Filtering = False
                Options.Grouping = False
                Width = 149
              end
              object cxGridDBTableView2fromdate: TcxGridDBColumn
                Caption = 'From Date'
                DataBinding.FieldName = 'fromdate'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
                Width = 88
              end
              object cxGridDBTableView2fromtime: TcxGridDBColumn
                Caption = 'From Time'
                DataBinding.FieldName = 'fromtime'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Options.Grouping = False
                Width = 94
              end
              object cxGridDBTableView2todate: TcxGridDBColumn
                Caption = 'To Date'
                DataBinding.FieldName = 'todate'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 78
              end
              object cxGridDBTableView2totime: TcxGridDBColumn
                Caption = 'To Time'
                DataBinding.FieldName = 'totime'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Options.Grouping = False
                Width = 83
              end
              object cxGridDBTableView2noofpax: TcxGridDBColumn
                Caption = 'No. Of Pax'
                DataBinding.FieldName = 'noofpax'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView2Agent_Cities_id: TcxGridDBColumn
                Caption = 'Agent City'
                DataBinding.FieldName = 'Agent_Cities_id'
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
              object cxGridDBTableView2addressbook_id: TcxGridDBColumn
                Caption = 'Agent'
                DataBinding.FieldName = 'AgentLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView2addressbook_idPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 139
              end
              object cxGridDBTableView2vehicleLookup: TcxGridDBColumn
                Caption = 'Vehicle'
                DataBinding.FieldName = 'VehicleLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridDBTableView2vehicleLookupPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 105
              end
              object cxGridDBTableView2ac: TcxGridDBColumn
                Caption = 'AC'
                DataBinding.FieldName = 'ac'
                Options.Filtering = False
                Options.Grouping = False
                Width = 45
              end
              object cxGridDBTableView2noofvehicles: TcxGridDBColumn
                Caption = 'No.Of Vehicles'
                DataBinding.FieldName = 'noofvehicles'
                Options.Filtering = False
                Options.Grouping = False
                Width = 109
              end
              object cxGridDBTableView2dropoffdays: TcxGridDBColumn
                Caption = 'Drop Off Days'
                DataBinding.FieldName = 'dropoffdays'
                Options.Filtering = False
                Options.Grouping = False
                Width = 101
              end
              object cxGridDBTableView2dropoffkms: TcxGridDBColumn
                Caption = 'Drop Off Kms.'
                DataBinding.FieldName = 'dropoffkms'
                Options.Filtering = False
                Options.Grouping = False
                Width = 99
              end
              object cxGridDBTableView2TourCode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxGridDBTableView2TourDate: TcxGridDBColumn
                Caption = 'Tour Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 84
              end
              object cxGridDBTableView2cancelledon: TcxGridDBColumn
                Caption = 'Cancelled On'
                DataBinding.FieldName = 'cancelledon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 101
              end
              object cxGridDBTableView2bookedon: TcxGridDBColumn
                Caption = 'Booked On'
                DataBinding.FieldName = 'bookedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 92
              end
              object cxGridDBTableView2confirmedon: TcxGridDBColumn
                Caption = 'Confirmed On'
                DataBinding.FieldName = 'confirmedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 101
              end
              object cxGridDBTableView2quoted: TcxGridDBColumn
                Caption = 'Quotation'
                DataBinding.FieldName = 'quoted'
                Options.Filtering = False
                Options.Grouping = False
                Width = 118
              end
              object cxGridDBTableView2vouchers_id: TcxGridDBColumn
                Caption = 'Voucher No.'
                DataBinding.FieldName = 'VoucherLookup'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 108
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
        object HistoryTab: TcxTabSheet
          Caption = 'History             '
          ImageIndex = 6
          object Label7: TcxLabel
            Left = 5
            Top = 3
            Caption = 'History'
          end
          object Label9: TcxLabel
            Left = 4
            Top = 108
            Caption = 'Notes for Situation List'
          end
          object DBMemo2: TDBMemo
            Left = 0
            Top = 18
            Width = 1004
            Height = 79
            Color = 16054261
            DataField = 'history'
            DataSource = BookingDS
            Enabled = False
            TabOrder = 0
          end
          object DBMemo3: TDBMemo
            Left = 0
            Top = 121
            Width = 993
            Height = 115
            Align = alBottom
            Color = 16054261
            DataField = 'notes'
            DataSource = BookingDS
            Enabled = False
            TabOrder = 1
          end
        end
      end
    end
  end
  object ClientsPanel: TPanel
    Left = 0
    Top = 150
    Width = 1002
    Height = 165
    Align = alTop
    TabOrder = 2
    object GroupBox3: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Client Details'
      TabOrder = 0
      Height = 163
      Width = 1000
      object cxGrid1: TcxGrid
        Left = 3
        Top = 18
        Width = 994
        Height = 142
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = BookingClientsDS
          DataController.KeyFieldNames = 'bookingsclients_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object cxGrid1DBTableView1name: TcxGridDBColumn
            DataBinding.FieldName = 'name'
            Options.Filtering = False
            Width = 148
          end
          object cxGrid1DBTableView1male: TcxGridDBColumn
            Caption = 'Sex'
            DataBinding.FieldName = 'male'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownRows = 2
            Properties.Items.Strings = (
              'Mr.'
              'Ms.')
            Options.Filtering = False
            Width = 43
          end
          object cxGrid1DBTableView1DateOfBirth: TcxGridDBColumn
            Caption = 'DOB'
            DataBinding.FieldName = 'dateofbirth'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Options.Grouping = False
            Width = 90
          end
          object cxGrid1DBTableView1passportno: TcxGridDBColumn
            DataBinding.FieldName = 'passportno'
            Options.Filtering = False
            Width = 91
          end
          object cxGrid1DBTableView1dateofissue: TcxGridDBColumn
            DataBinding.FieldName = 'dateofissue'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Width = 115
          end
          object cxGrid1DBTableView1placeofissue: TcxGridDBColumn
            Caption = 'Issue Place'
            DataBinding.FieldName = 'placeofissue'
            Options.Filtering = False
            Width = 114
          end
          object cxGrid1DBTableView1validto: TcxGridDBColumn
            DataBinding.FieldName = 'validto'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Width = 90
          end
          object cxGrid1DBTableView1countries_id: TcxGridDBColumn
            DataBinding.FieldName = 'countries_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'countries_id'
            Properties.ListColumns = <
              item
                FieldName = 'country'
              end>
            Properties.ListSource = BackOfficeDataModule.CountriesDS
            Options.Filtering = False
            Width = 104
          end
          object cxGrid1DBTableView1resident_countries_id: TcxGridDBColumn
            DataBinding.FieldName = 'resident_countries_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'countries_id'
            Properties.ListColumns = <
              item
                FieldName = 'country'
              end>
            Properties.ListSource = BackOfficeDataModule.CountriesDS
            Options.Filtering = False
            Width = 128
          end
          object cxGrid1DBTableView1LeadPaxOrder: TcxGridDBColumn
            Caption = 'Lead Pax Order'
            DataBinding.FieldName = 'LeadPaxOrder'
            Options.Filtering = False
            Options.Grouping = False
          end
          object cxGrid1DBTableView1Email: TcxGridDBColumn
            DataBinding.FieldName = 'Email'
            Visible = False
            Width = 80
          end
          object cxGrid1DBTableView1TravelEmail: TcxGridDBColumn
            Caption = 'Travel Email'
            DataBinding.FieldName = 'TravelEmail'
            Visible = False
            Width = 80
          end
          object cxGrid1DBTableView1PreferredPhone: TcxGridDBColumn
            Caption = 'Preferred Phone'
            DataBinding.FieldName = 'PreferredPhone'
            Visible = False
            Width = 80
          end
          object cxGrid1DBTableView1EmergencyContact: TcxGridDBColumn
            Caption = 'Emergency Contact'
            DataBinding.FieldName = 'EmergencyContact'
            Visible = False
            Width = 80
          end
          object cxGrid1DBTableView1EmergencyEmail: TcxGridDBColumn
            Caption = 'Emergency Email'
            DataBinding.FieldName = 'EmergencyEmail'
            Visible = False
            Width = 80
          end
          object cxGrid1DBTableView1EmergencyHomePhone: TcxGridDBColumn
            Caption = 'Emergency Home Phone'
            DataBinding.FieldName = 'EmergencyHomePhone'
            Visible = False
            Width = 80
          end
          object cxGrid1DBTableView1EmergencyMobilePhone: TcxGridDBColumn
            Caption = 'Emergency Mobile Phone'
            DataBinding.FieldName = 'EmergencyMobilePhone'
            Visible = False
            Width = 80
          end
          object cxGrid1DBTableView1PaxPassportName: TcxGridDBColumn
            Caption = 'Passport Name'
            DataBinding.FieldName = 'PaxPassportName'
            Width = 200
          end
          object cxGrid1DBTableView1StartDate: TcxGridDBColumn
            Caption = 'Start Date'
            DataBinding.FieldName = 'StartDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ShowTime = False
            Width = 93
          end
          object cxGrid1DBTableView1StartTime: TcxGridDBColumn
            Caption = 'Time'
            DataBinding.FieldName = 'StartDate'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Width = 55
          end
          object cxGrid1DBTableView1EndDate: TcxGridDBColumn
            Caption = 'End Date'
            DataBinding.FieldName = 'EndDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ShowTime = False
            Width = 98
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Time'
            DataBinding.FieldName = 'EndDate'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Width = 45
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 607
    Width = 1002
    Height = 48
    Align = alBottom
    TabOrder = 3
    object KeyIdDbText: TDBText
      Left = 843
      Top = 18
      Width = 65
      Height = 17
      DataField = 'packages_id'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 560
      Top = 15
      Width = 185
      Height = 25
      Hint = 'View Bookings'
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = BookingDS
      LookAndFeel.NativeStyle = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object cxButton1: TcxButton
      Left = 920
      Top = 9
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
    object cxSearchGB: TcxRadioGroup
      Left = 8
      Top = 4
      Caption = 'Search'
      Properties.Columns = 4
      Properties.Items = <
        item
          Caption = 'Ref'
        end
        item
          Caption = 'ID'
        end
        item
          Caption = 'Name'
        end
        item
          Caption = 'Tour Code'
        end>
      ItemIndex = 0
      TabOrder = 2
      Height = 39
      Width = 321
    end
    object cxSearchEdit: TcxTextEdit
      Left = 344
      Top = 16
      TabOrder = 3
      OnKeyPress = cxSearchEditKeyPress
      Width = 137
    end
  end
  object cxSplitter2: TcxSplitter
    Left = 0
    Top = 315
    Width = 1002
    Height = 4
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salTop
    Control = TopPanel
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 655
    Width = 1002
    Height = 4
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salBottom
    Control = BottomPanel
  end
  object BookingDS: TDataSource
    DataSet = BookingCds
    OnStateChange = BookingDSStateChange
    Left = 174
  end
  object BookingDSP: TDataSetProvider
    DataSet = BookingSds
    UpdateMode = upWhereKeyOnly
    Left = 134
  end
  object BookingCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BookingDSP'
    BeforeInsert = BookingCdsBeforeInsert
    AfterInsert = BookingCdsAfterInsert
    BeforeEdit = BookingCdsBeforeEdit
    BeforePost = BookingCdsBeforePost
    AfterPost = BookingCdsAfterPost
    AfterCancel = BookingCdsAfterCancel
    BeforeDelete = BookingCdsBeforeDelete
    AfterDelete = BookingCdsAfterDelete
    AfterScroll = BookingCdsAfterScroll
    Left = 158
    object BookingCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object BookingCdsbooked: TSQLTimeStampField
      FieldName = 'booked'
    end
    object BookingCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object BookingCdsreference: TStringField
      FieldName = 'reference'
      Size = 50
    end
    object BookingCdsconfirmed: TSQLTimeStampField
      FieldName = 'confirmed'
    end
    object BookingCdshistory: TMemoField
      FieldName = 'history'
      BlobType = ftMemo
    end
    object BookingCdscancelled: TSQLTimeStampField
      FieldName = 'cancelled'
    end
    object BookingCdsnotes: TMemoField
      FieldName = 'notes'
      BlobType = ftMemo
    end
    object BookingCdstravellingwith_bookings_id: TIntegerField
      FieldName = 'travellingwith_bookings_id'
    end
    object BookingCdsbookingsclients_id: TIntegerField
      FieldName = 'bookingsclients_id'
    end
    object BookingCdscountries_id: TIntegerField
      FieldName = 'countries_id'
      OnChange = BookingCdscountries_idChange
    end
    object BookingCdscreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object BookingCdssessionid: TStringField
      FieldName = 'sessionid'
      Size = 50
    end
    object BookingCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object BookingCdsweb_bookings_id: TIntegerField
      FieldName = 'web_bookings_id'
    end
    object BookingCdsweb_users_id: TIntegerField
      FieldName = 'web_users_id'
    end
    object BookingCdsCountryLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'CountryLookUp'
      LookupDataSet = BackOfficeDataModule.CountriesCds
      LookupKeyFields = 'countries_id'
      LookupResultField = 'country'
      KeyFields = 'countries_id'
      Size = 80
      Lookup = True
    end
    object BookingCdsCurrenciesLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'CurrenciesLookUp'
      LookupDataSet = BackOfficeDataModule.CurrenciesCds
      LookupKeyFields = 'currencies_id'
      LookupResultField = 'currency'
      KeyFields = 'currencies_id'
      Size = 80
      Lookup = True
    end
    object BookingCdsAgentName: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentName'
      LookupDataSet = BackOfficeDataModule.AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 80
      Lookup = True
    end
  end
  object BookingSds: TSQLDataSet
    CommandText = 'bookings'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 118
  end
  object BookingClientsDS: TDataSource
    DataSet = BookingClientsCds
    Left = 80
    Top = 192
  end
  object BookingClientsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'BookingClientsDSP'
    BeforeInsert = BookingClientsCdsBeforeInsert
    AfterInsert = BookingClientsCdsAfterInsert
    BeforeEdit = BookingClientsCdsBeforeEdit
    BeforePost = BookingClientsCdsBeforePost
    AfterPost = BookingClientsCdsAfterPost
    BeforeDelete = BookingClientsCdsBeforeDelete
    AfterDelete = BookingClientsCdsAfterDelete
    Left = 72
    Top = 192
    object BookingClientsCdsbookingsclients_id: TIntegerField
      FieldName = 'bookingsclients_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object BookingClientsCdsname: TStringField
      DisplayLabel = 'Name'
      FieldName = 'name'
    end
    object BookingClientsCdsdateofbirth: TSQLTimeStampField
      DisplayLabel = 'Date Of Birth'
      FieldName = 'dateofbirth'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object BookingClientsCdspassportno: TStringField
      DisplayLabel = 'Passport No'
      FieldName = 'passportno'
    end
    object BookingClientsCdsdateofissue: TSQLTimeStampField
      DisplayLabel = 'Issue Date '
      FieldName = 'dateofissue'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object BookingClientsCdsplaceofissue: TStringField
      DisplayLabel = 'Place Of Issue'
      FieldName = 'placeofissue'
      Size = 50
    end
    object BookingClientsCdsvalidto: TSQLTimeStampField
      DisplayLabel = 'Validity'
      FieldName = 'validto'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object BookingClientsCdscountries_id: TIntegerField
      DisplayLabel = 'Nationality'
      FieldName = 'countries_id'
      OnChange = BookingClientsCdscountries_idChange
    end
    object BookingClientsCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object BookingClientsCdsroomno: TIntegerField
      FieldName = 'roomno'
    end
    object BookingClientsCdsmale: TBooleanField
      FieldName = 'male'
      DisplayValues = 'Mr.;Ms.'
    end
    object BookingClientsCdssinglesupplement: TBooleanField
      DisplayLabel = 'Single Supplement'
      FieldName = 'singlesupplement'
      DisplayValues = 'Yes;No'
    end
    object BookingClientsCdsresident_countries_id: TIntegerField
      DisplayLabel = 'Resident Of'
      FieldName = 'resident_countries_id'
    end
    object BookingClientsCdscreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object BookingClientsCdsweb_bookingsclients_id: TIntegerField
      FieldName = 'web_bookingsclients_id'
    end
    object BookingClientsCdslocalpayment: TBooleanField
      DisplayLabel = 'Local Payment'
      FieldName = 'localpayment'
      DisplayValues = 'Yes;No'
    end
    object BookingClientsCdsLeadPaxOrder: TIntegerField
      FieldName = 'LeadPaxOrder'
    end
    object BookingClientsCdsEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object BookingClientsCdsTravelEmail: TStringField
      FieldName = 'TravelEmail'
      Size = 50
    end
    object BookingClientsCdsPreferredPhone: TStringField
      FieldName = 'PreferredPhone'
      Size = 50
    end
    object BookingClientsCdsEmergencyContact: TStringField
      FieldName = 'EmergencyContact'
      Size = 50
    end
    object BookingClientsCdsEmergencyEmail: TStringField
      FieldName = 'EmergencyEmail'
      Size = 50
    end
    object BookingClientsCdsEmergencyHomePhone: TStringField
      FieldName = 'EmergencyHomePhone'
      Size = 50
    end
    object BookingClientsCdsEmergencyMobilePhone: TStringField
      FieldName = 'EmergencyMobilePhone'
      Size = 50
    end
    object BookingClientsCdsPaxPassportName: TStringField
      FieldName = 'PaxPassportName'
      Size = 100
    end
    object BookingClientsCdsStartDate: TSQLTimeStampField
      FieldName = 'StartDate'
    end
    object BookingClientsCdsEndDate: TSQLTimeStampField
      FieldName = 'EndDate'
    end
  end
  object BookingClientsSds: TSQLDataSet
    CommandText = 'bookingsclients'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 40
    Top = 192
  end
  object BookingClientsDsp: TDataSetProvider
    DataSet = BookingClientsSds
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 192
  end
  object BookingToursSds: TSQLDataSet
    CommandText = 'bookingstours'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 496
    Top = 64
  end
  object BookingToursDS: TDataSource
    DataSet = BookingToursCds
    Left = 536
    Top = 64
  end
  object BookingToursCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'BookingToursDsp'
    BeforeInsert = BookingToursCdsBeforeInsert
    AfterInsert = BookingToursCdsAfterInsert
    BeforeEdit = BookingToursCdsBeforeEdit
    BeforePost = BookingToursCdsBeforePost
    AfterPost = BookingToursCdsAfterPost
    BeforeDelete = BookingToursCdsBeforeDelete
    AfterDelete = BookingToursCdsAfterPost
    Left = 520
    Top = 64
    object BookingToursCdsbookingstours_id: TIntegerField
      FieldName = 'bookingstours_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object BookingToursCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object BookingToursCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object BookingToursCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object BookingToursCdstourleader: TBooleanField
      FieldName = 'tourleader'
    end
    object BookingToursCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object BookingToursCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object BookingToursCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object BookingToursCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object BookingToursCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object BookingToursCdsweb_bookingstours_id: TIntegerField
      FieldName = 'web_bookingstours_id'
    end
    object BookingToursCdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object BookingToursCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object BookingToursCdstourleadertrainee: TBooleanField
      FieldName = 'tourleadertrainee'
    end
  end
  object BookingToursDsp: TDataSetProvider
    DataSet = BookingToursSds
    UpdateMode = upWhereKeyOnly
    Left = 504
    Top = 64
  end
  object TicketsDS: TDataSource
    DataSet = TicketsCds
    Left = 8
    Top = 560
  end
  object TicketsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'TicketsDSP'
    BeforeInsert = TicketsCdsBeforeInsert
    AfterInsert = TicketsCdsAfterInsert
    BeforeEdit = TicketsCdsBeforeEdit
    BeforePost = TicketsCdsBeforePost
    AfterPost = TicketsCdsAfterPost
    BeforeDelete = TicketsCdsBeforeDelete
    AfterDelete = TicketsCdsAfterDelete
    Left = 24
    Top = 560
    object vou: TIntegerField
      FieldName = 'bookingstickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TicketsCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object TicketsCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object TicketsCdsnooftickets: TIntegerField
      FieldName = 'nooftickets'
    end
    object TicketsCdsflightno: TStringField
      FieldName = 'flightno'
    end
    object TicketsCdsclassid: TIntegerField
      FieldName = 'classid'
    end
    object TicketsCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object TicketsCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object TicketsCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object TicketsCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object TicketsCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object TicketsCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object TicketsCdsto_trainstations_id: TIntegerField
      FieldName = 'to_trainstations_id'
    end
    object TicketsCdsfrom_trainstations_id: TIntegerField
      FieldName = 'from_trainstations_id'
    end
    object TicketsCdsnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object TicketsCdsnocancelled: TIntegerField
      FieldName = 'nocancelled'
    end
    object TicketsCdscreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object TicketsCdsnobooked: TIntegerField
      FieldName = 'nobooked'
    end
    object TicketsCdsduration: TStringField
      FieldName = 'duration'
      Size = 254
    end
    object TicketsCdsnocancelled_resident: TIntegerField
      FieldName = 'nocancelled_resident'
    end
    object TicketsCdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object TicketsCdsweb_bookingstickets_id: TIntegerField
      FieldName = 'web_bookingstickets_id'
    end
    object TicketsCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object TicketsCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object TicketsCdstraveldate: TSQLTimeStampField
      FieldName = 'traveldate'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TicketsCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TicketsCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TicketsCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TicketsCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TicketsCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TicketsCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TicketsCdstiming: TSQLTimeStampField
      FieldName = 'timing'
      DisplayFormat = 'HH:mm'
      EditMask = '!90:00;1;_'
    end
    object TicketsCdsetd: TSQLTimeStampField
      FieldName = 'etd'
      DisplayFormat = 'HH:mm'
      EditMask = '!90:00;1;_'
    end
    object TicketsCdseta: TSQLTimeStampField
      FieldName = 'eta'
      DisplayFormat = 'HH:mm'
      EditMask = '!90:00;1;_'
    end
    object TicketsCdsClassLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ClassLookup'
      LookupDataSet = BackOfficeDataModule.ClassCds
      LookupKeyFields = 'Class_id'
      LookupResultField = 'class'
      KeyFields = 'classid'
      Size = 30
      Lookup = True
    end
    object TicketsCdsAgent_Cities_id: TIntegerField
      FieldName = 'Agent_Cities_id'
    end
    object TicketsCdsAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = BackOfficeDataModule.AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 30
      Lookup = True
    end
    object TicketsCdsVoucherLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = BackOfficeDataModule.VoucherCDS
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
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
  end
  object TicketsSds: TSQLDataSet
    CommandText = 'bookingstickets'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 8
    Top = 584
  end
  object TicketsDsp: TDataSetProvider
    DataSet = TicketsSds
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 584
  end
  object AccCDS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'AccDSP'
    BeforeInsert = AccCDSBeforeInsert
    AfterInsert = AccCDSAfterInsert
    BeforeEdit = AccCDSBeforeEdit
    BeforePost = AccCDSBeforePost
    AfterPost = AccCDSAfterPost
    BeforeDelete = AccCDSBeforeDelete
    AfterDelete = AccCDSAfterDelete
    OnCalcFields = AccCDSCalcFields
    Left = 88
    Top = 560
    object AccCDSbookingsaccommodation_id: TIntegerField
      FieldName = 'bookingsaccommodation_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object AccCDSdatein: TSQLTimeStampField
      FieldName = 'datein'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object AccCDSroomsizes_id: TIntegerField
      FieldName = 'roomsizes_id'
    end
    object AccCDSroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object AccCDSdateout: TSQLTimeStampField
      FieldName = 'dateout'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCDSmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object AccCDSbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object AccCDSquantity: TIntegerField
      FieldName = 'quantity'
    end
    object AccCDStourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object AccCDStourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCDSintimated: TBooleanField
      FieldName = 'intimated'
    end
    object AccCDSac: TBooleanField
      FieldName = 'ac'
    end
    object AccCDSgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object AccCDSbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCDSconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCDSvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object AccCDScities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object AccCDSsingles: TIntegerField
      FieldName = 'singles'
    end
    object AccCDSdoubles: TIntegerField
      FieldName = 'doubles'
    end
    object AccCDScreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object AccCDSeta: TSQLTimeStampField
      FieldName = 'eta'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object AccCDSbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object AccCDScancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object AccCDScancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCDSweb_bookingsaccommodation_id: TIntegerField
      FieldName = 'web_bookingsaccommodation_id'
    end
    object AccCDSquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object AccCDSnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object AccCDSinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object AccCDSNights: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nights'
      Size = 80
      Calculated = True
    end
    object AccCDSRoomTypeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'RoomTypeLookup'
      LookupDataSet = BackOfficeDataModule.RoomTypeCds
      LookupKeyFields = 'roomtypes_id'
      LookupResultField = 'roomtype'
      KeyFields = 'roomtypes_id'
      Size = 30
      Lookup = True
    end
    object AccCDSMealPlanLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'MealPlanLookup'
      LookupDataSet = BackOfficeDataModule.MealPlanCds
      LookupKeyFields = 'mealplans_id'
      LookupResultField = 'plan'
      KeyFields = 'mealplans_id'
      Size = 30
      Lookup = True
    end
    object AccCDSHotel_Cities_id: TIntegerField
      FieldName = 'Hotel_Cities_id'
    end
    object AccCDSHotelLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'HotelLookup'
      LookupDataSet = BackOfficeDataModule.HotelCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 30
      Lookup = True
    end
    object AccCDSVoucherLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = BackOfficeDataModule.VoucherCDS
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
    object AccCDStriples: TIntegerField
      FieldName = 'triples'
    end
    object AccCDStwins: TIntegerField
      FieldName = 'twins'
    end
  end
  object AccDS: TDataSource
    DataSet = AccCDS
    Left = 72
    Top = 560
  end
  object AccSDS: TSQLDataSet
    CommandText = 'bookingsaccommodation'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 72
    Top = 584
  end
  object AccDSP: TDataSetProvider
    DataSet = AccSDS
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 584
  end
  object SightCDS: TClientDataSet
    Aggregates = <>
    Filter = 'Transfer=0'
    Filtered = True
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'SightDSP'
    BeforeInsert = SightCDSBeforeInsert
    AfterInsert = SightCDSAfterInsert
    BeforeEdit = SightCDSBeforeEdit
    BeforePost = SightCDSBeforePost
    AfterPost = SightCDSAfterPost
    BeforeDelete = SightCDSBeforeDelete
    AfterDelete = SightCDSAfterDelete
    Left = 152
    Top = 560
    object SightCDSbookingsservices_id: TIntegerField
      FieldName = 'bookingsservices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SightCDSdate: TSQLTimeStampField
      FieldName = 'date'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCDSflightno: TStringField
      FieldName = 'flightno'
      Size = 30
    end
    object SightCDStransfer: TBooleanField
      FieldName = 'transfer'
    end
    object SightCDSbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object SightCDSeta: TSQLTimeStampField
      FieldName = 'eta'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SightCDSvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object SightCDStourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object SightCDStourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object SightCDSplacefrom: TStringField
      FieldName = 'placefrom'
    end
    object SightCDSplaceto: TStringField
      FieldName = 'placeto'
    end
    object SightCDSgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object SightCDSvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object SightCDSservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object SightCDSac: TBooleanField
      FieldName = 'ac'
    end
    object SightCDShotel_addressbook_id: TIntegerField
      FieldName = 'hotel_addressbook_id'
    end
    object SightCDSfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object SightCDSto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object SightCDSservice_cities_id: TIntegerField
      FieldName = 'service_cities_id'
    end
    object SightCDStransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object SightCDSobsolete1: TIntegerField
      FieldName = 'obsolete1'
    end
    object SightCDSobsolete2: TIntegerField
      FieldName = 'obsolete2'
    end
    object SightCDSentrancefees: TBooleanField
      FieldName = 'entrancefees'
    end
    object SightCDSnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object SightCDScreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object SightCDSbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object SightCDScancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object SightCDSbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCDSconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCDScancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCDSguide: TBooleanField
      FieldName = 'guide'
    end
    object SightCDSquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object SightCDSnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object SightCDSinvoices_id: TIntegerField
      FieldName = 'invoices_id'
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
    object SightCDSAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = BackOfficeDataModule.AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 30
      Lookup = True
    end
    object SightCDSHotelLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'HotelLookup'
      LookupDataSet = BackOfficeDataModule.HotelCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'hotel_addressbook_id'
      Size = 30
      Lookup = True
    end
    object SightCDSVehicleLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'VehicleLookup'
      LookupDataSet = BackOfficeDataModule.VehicleCds
      LookupKeyFields = 'Vehicles_id'
      LookupResultField = 'Vehicle'
      KeyFields = 'vehicles_id'
      Size = 30
      Lookup = True
    end
    object SightCDSNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object SightCDSTransport: TBooleanField
      FieldName = 'Transport'
    end
    object SightCDSVoucherLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = BackOfficeDataModule.VoucherCDS
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
  end
  object SightDS: TDataSource
    DataSet = SightCDS
    Left = 136
    Top = 560
  end
  object SightSDS: TSQLDataSet
    CommandText = 'bookingsservices'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 136
    Top = 584
  end
  object SightDSP: TDataSetProvider
    DataSet = SightSDS
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 584
  end
  object TransferCDS: TClientDataSet
    Aggregates = <>
    Filter = 'Transfer=1'
    Filtered = True
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'TransferDSP'
    BeforeInsert = TransferCDSBeforeInsert
    AfterInsert = TransferCDSAfterInsert
    BeforeEdit = TransferCDSBeforeEdit
    BeforePost = TransferCDSBeforePost
    AfterPost = TransferCDSAfterPost
    BeforeDelete = TransferCDSBeforeDelete
    AfterDelete = TransferCDSAfterDelete
    Left = 216
    Top = 560
    object TransferCDSbookingsservices_id: TIntegerField
      FieldName = 'bookingsservices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TransferCDSdate: TSQLTimeStampField
      FieldName = 'date'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransferCDSflightno: TStringField
      FieldName = 'flightno'
      Size = 30
    end
    object TransferCDStransfer: TBooleanField
      FieldName = 'transfer'
    end
    object TransferCDSbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object TransferCDSeta: TSQLTimeStampField
      FieldName = 'eta'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object TransferCDSvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object TransferCDStourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object TransferCDStourdate: TSQLTimeStampField
      FieldName = 'tourdate'
    end
    object TransferCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object TransferCDSplacefrom: TStringField
      FieldName = 'placefrom'
    end
    object TransferCDSplaceto: TStringField
      FieldName = 'placeto'
    end
    object TransferCDSgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object TransferCDSvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object TransferCDSservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object TransferCDSac: TBooleanField
      FieldName = 'ac'
    end
    object TransferCDShotel_addressbook_id: TIntegerField
      FieldName = 'hotel_addressbook_id'
    end
    object TransferCDSfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object TransferCDSto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object TransferCDSservice_cities_id: TIntegerField
      FieldName = 'service_cities_id'
    end
    object TransferCDSobsolete1: TIntegerField
      FieldName = 'obsolete1'
    end
    object TransferCDSobsolete2: TIntegerField
      FieldName = 'obsolete2'
    end
    object TransferCDSentrancefees: TBooleanField
      FieldName = 'entrancefees'
    end
    object TransferCDSnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object TransferCDScreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object TransferCDSbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object TransferCDScancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object TransferCDSbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransferCDSconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransferCDScancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransferCDSguide: TBooleanField
      FieldName = 'guide'
    end
    object TransferCDSquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object TransferCDSnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object TransferCDSinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object TransferCDSServicesLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicesLookup'
      LookupDataSet = BackOfficeDataModule.ServicesCDS
      LookupKeyFields = 'Services_id'
      LookupResultField = 'Service'
      KeyFields = 'services_id'
      Size = 30
      Lookup = True
    end
    object TransferCDSAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = BackOfficeDataModule.AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 30
      Lookup = True
    end
    object TransferCDStransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object TransferCDSNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object TransferCDSTransport: TBooleanField
      FieldName = 'Transport'
    end
    object TransferCDSVoucherLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = BackOfficeDataModule.VoucherCDS
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
  end
  object TransferDS: TDataSource
    DataSet = TransferCDS
    Left = 200
    Top = 560
  end
  object TransferSDS: TSQLDataSet
    CommandText = 'bookingsservices'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 200
    Top = 584
  end
  object TransferDSP: TDataSetProvider
    DataSet = TransferSDS
    UpdateMode = upWhereKeyOnly
    Left = 216
    Top = 584
  end
  object PackCDS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'PackDSP'
    BeforeInsert = PackCDSBeforeInsert
    AfterInsert = PackCDSAfterInsert
    BeforeEdit = PackCDSBeforeEdit
    BeforePost = PackCDSBeforePost
    AfterPost = PackCDSAfterPost
    BeforeDelete = PackCDSBeforeDelete
    AfterDelete = PackCDSAfterDelete
    Left = 280
    Top = 560
    object PackCDSbookingspackages_id: TIntegerField
      FieldName = 'bookingspackages_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PackCDSbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object PackCDSpackages_id: TIntegerField
      FieldName = 'packages_id'
      OnChange = PackCDSpackages_idChange
    end
    object PackCDSfrom_date: TSQLTimeStampField
      FieldName = 'from_date'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object PackCDSfrom_time: TSQLTimeStampField
      FieldName = 'from_time'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object PackCDSfrom_addressbook_id: TIntegerField
      FieldName = 'from_addressbook_id'
    end
    object PackCDSto_time: TSQLTimeStampField
      FieldName = 'to_time'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object PackCDSto_place: TStringField
      FieldName = 'to_place'
      Size = 30
    end
    object PackCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object PackCDStourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object PackCDStourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object PackCDSgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object PackCDSvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object PackCDSbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object PackCDSconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object PackCDScancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object PackCDStransport: TBooleanField
      FieldName = 'transport'
    end
    object PackCDSac: TBooleanField
      FieldName = 'ac'
    end
    object PackCDSvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object PackCDSnoofvehicles: TIntegerField
      FieldName = 'noofvehicles'
    end
    object PackCDSfrom_place: TStringField
      FieldName = 'from_place'
      Size = 30
    end
    object PackCDSbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object PackCDScancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object PackCDSquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object PackCDSnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object PackCDSVehicleLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'VehicleLookup'
      LookupDataSet = BackOfficeDataModule.VehicleCds
      LookupKeyFields = 'Vehicles_id'
      LookupResultField = 'Vehicle'
      KeyFields = 'vehicles_id'
      Size = 30
      Lookup = True
    end
    object PackCDSVoucherLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = BackOfficeDataModule.VoucherCDS
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
  end
  object PackDS: TDataSource
    DataSet = PackCDS
    Left = 264
    Top = 560
  end
  object PackSDS: TSQLDataSet
    CommandText = 'bookingspackages'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 264
    Top = 584
  end
  object PackDSP: TDataSetProvider
    DataSet = PackSDS
    UpdateMode = upWhereKeyOnly
    Left = 280
    Top = 584
  end
  object TransportCDS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'TransportDSP'
    BeforeInsert = TransportCDSBeforeInsert
    AfterInsert = TransportCDSAfterInsert
    BeforeEdit = TransportCDSBeforeEdit
    BeforePost = TransportCDSBeforePost
    AfterPost = TransportCDSAfterPost
    BeforeDelete = TransportCDSBeforeDelete
    AfterDelete = TransportCDSAfterDelete
    Left = 344
    Top = 560
    object TransportCDSbookingstransport_id: TIntegerField
      FieldName = 'bookingstransport_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TransportCDSbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object TransportCDSfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object TransportCDSfromdate: TSQLTimeStampField
      FieldName = 'fromdate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCDSfromtime: TSQLTimeStampField
      FieldName = 'fromtime'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object TransportCDSfromplace: TStringField
      FieldName = 'fromplace'
      Size = 100
    end
    object TransportCDSto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object TransportCDStodate: TSQLTimeStampField
      FieldName = 'todate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCDStotime: TSQLTimeStampField
      FieldName = 'totime'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object TransportCDStoplace: TStringField
      FieldName = 'toplace'
      Size = 100
    end
    object TransportCDSvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object TransportCDSdropoffdays: TIntegerField
      FieldName = 'dropoffdays'
    end
    object TransportCDSdropoffkms: TIntegerField
      FieldName = 'dropoffkms'
    end
    object TransportCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object TransportCDStourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object TransportCDStourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCDSvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object TransportCDSgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object TransportCDSac: TBooleanField
      FieldName = 'ac'
    end
    object TransportCDScreated: TSQLTimeStampField
      FieldName = 'created'
    end
    object TransportCDSnoofvehicles: TIntegerField
      FieldName = 'noofvehicles'
    end
    object TransportCDSnoofpax: TIntegerField
      FieldName = 'noofpax'
    end
    object TransportCDScancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
    end
    object TransportCDSbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
    end
    object TransportCDSbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCDSconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCDScancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCDSweb_bookingstransport_id: TIntegerField
      FieldName = 'web_bookingstransport_id'
    end
    object TransportCDSquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object TransportCDSnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object TransportCDSVehicleLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'VehicleLookup'
      LookupDataSet = BackOfficeDataModule.VehicleCds
      LookupKeyFields = 'Vehicles_id'
      LookupResultField = 'Vehicle'
      KeyFields = 'vehicles_id'
      Size = 30
      Lookup = True
    end
    object TransportCDSAgent_Cities_id: TIntegerField
      FieldName = 'Agent_Cities_id'
    end
    object TransportCDSAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = BackOfficeDataModule.AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 30
      Lookup = True
    end
    object TransportCDSVoucherLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = BackOfficeDataModule.VoucherCDS
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
  end
  object TransportDS: TDataSource
    DataSet = TransportCDS
    Left = 328
    Top = 560
  end
  object TransportSDS: TSQLDataSet
    CommandText = 'bookingstransport'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'bookings_id'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 328
    Top = 584
  end
  object TransportDSP: TDataSetProvider
    DataSet = TransportSDS
    UpdateMode = upWhereKeyOnly
    Left = 344
    Top = 584
  end
  object ContactDS: TDataSource
    DataSet = ContactCDS
    Left = 936
    Top = 512
  end
  object ContactCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ContactDSP'
    Left = 952
    Top = 512
    object ContactCDScontact: TStringField
      FieldName = 'contact'
      Size = 30
    end
  end
  object ContactSDS: TSQLDataSet
    CommandText = 
      'select cast((organisation+'#39' \n'#39'+address+'#39'\n'#39'+city+'#39'  '#39'+postalcod' +
      'e+'#39'\n'#39'+c.country+'#39'\n\nPhone : '#39'+phone+'#39'\nFax   : '#39#13#10'+fax+'#39'\nE-ma' +
      'il: '#39'+email+'#39'\nWWW   :'#39'+www) as varchar) as contact  from addres' +
      'sbook a join countries c on a.countries_id=c.countries_id'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 928
    Top = 536
  end
  object ContactDSP: TDataSetProvider
    DataSet = ContactSDS
    Left = 952
    Top = 536
  end
  object ImageList2: TImageList
    Left = 672
    Top = 336
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000000000000000000000000000EFEFEF00D6D6D600E7E7E700F7F7
      F700FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005242F7005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF00DEA52900B584180084733900636B
      6B007B7B7B009C9C9C00BDBDBD00DEDEDE00EFEFEF00FFFFFF00FFFFFF00DEDE
      DE00F7F7F7000000000000000000000000002973B50000000800000008000029
      290052738C005AADD6006BBDF7007BB5CE008CA5CE0094B5DE00EFFFFF00D6DE
      FF00E7FFFF00CED6FF00DEF7FF005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005242F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A42FF00EFBD6B00F7D6AD00F7DEB500F7DE
      B500F7DEB500EFC67B00DEA529009C7B29007B6B42006B6B6B006B8C52004A7B
      29008C8C8C00DEDEDE00F7F7F700000000000000080000000800000010000000
      1000000021000000080000000000394A63008CA5CE006373940000000000739C
      CE005A84A5006B9CBD00A5BDDE005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000008000018102100211831000000
      10000000000000000000000000005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A42FF00EFCE9400E7BD6300F7E7C600F7E7
      C600F7E7C600F7DEC600F7DEBD00F7DEBD00EFD6B500ADA584008CBD63007BCE
      9C00638C2100947331008C8C8C00000000000000080000001000000008000000
      0000000008000000100000001000001039000000100010316300637394000010
      39008C94B5000000210031425A005A42FF000000000000000000000000000000
      000000000000000000000008000010101000524A6B00ADADCE00DEDEF700CED6
      EF00ADA5CE0000000000000000005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000810100000081000000000000000
      00000000000000000000000000005A42FF00EFCE9400F7CE9C00E7AD4200F7E7
      CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00B5AD9C0063AD21007BCE8C0073CE
      8C007BCE940084A531006B6B6B00FFFFFF000000080000000800000000000000
      080000001000000010000000100000001000000010000010390000103900525A
      840094D6DE005A638400000021005A42FF000000000000000000000000000000
      000000000000080808004A4A6300D6D6FF00EFF7FF00F7FFFF00FFFFFF00E7E7
      EF00F7FFFF00BDC6CE00000000005A42FF000000000000000000000000000000
      00000000000000000000000000000821BD000810C6001842FF00101029000000
      00000000000000000000000000005A42FF00EFCE9400F7D69C00F7DEB500DEAD
      3100FFEFDE00FFEFDE00FFEFDE00C6B5AD004AA50000A5DEA5006BC6730073C6
      7B0073CE84007BCE8C0042632900D6D6D6000000080000003900000021000000
      080000001000000010000000210000002100001094001852DE00639CFF006BB5
      FF0073A5FF008CADD600295A9C005A42FF000000000000000000000000000000
      000018183100948CBD00D6D6FF00EFF7FF00F7FFFF00EFEFFF007B6BBD005A42
      940042397300EFE7FF00000000005A42FF000000000000000000080808000821
      BD000810520000081000000810000010DE000821EF001831FF001018B500945A
      18001018180000000000000000005A42FF00EFCE9400F7D6A500F7DEB500F7E7
      C600DEA52900FFF7EF00FFF7EF00FFF7EF00BDCE9C0052A531008CCE84006BC6
      6B006BC67B00529C210052942100F7F7F70018314A005A636B00AD9C8C00A5AD
      AD009CA5A500A5B5BD001018290031395200EFEFFF00FFFFFF00FFFFFF00DEF7
      FF00EFFFFF00EFFFFF00DEE7FF005A42FF000000000000000000000000003131
      5A00A59CC600CECEF700EFE7FF00E7E7EF00FFFFFF008C73CE008473C6005242
      8C0021105200CECEE700000000005A42FF0000000000000000000010D6000821
      D6000821FF00A5ADC600D6EFF7000829D600294AFF000018F700DE841800EF84
      1800D673180021211800000000005A42FF00EFCE9400F7D6A500F7DEB500F7E7
      C600FFEFD600E7BD5A00FFFFF700FFFFF700FFFFF700BDBDB500A5C6840063BD
      63006BC66B00F7E7CE006B6B6B00FFFFFF005A638400A5B5BD008CADAD006394
      940094A5B50094949C00EFF7F700FFF7FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF0000000000081010004A427300ADAD
      DE00BDADEF00E7D6FF00F7EFFF00FFFFFF00ADADDE007B73CE00847BCE005242
      8C00000021008C8C9C00000000005A42FF0000000000000000000021E7001831
      EF000818E7006BD6EF0063CEEF00D6E7EF00BDCED600FFAD1800FFA52900FFA5
      2100FF9C2100DE842100000000005A42FF00EFCE9400F7D6A500F7DEB500F7E7
      C600F7E7CE00C6B56B00CEA53900E7AD4200CEB5730073940000ADD6940063BD
      4A00529C2900FFEFD6008C848400F7F7F700395A9C000000BD000008F7000008
      F700CEDEEF001029FF000008FF00316BD600314AE700104AFF001873FF00638C
      F700638CF700639CFF00849CFF005A42FF00181829005A4A9C00AD9CDE00C6CE
      E7009C94CE0000001000FFFFFF00C6B5E7005239A50052399400392973003129
      6B004A427B0021183100000000005A42FF0000000000000000005A4A4A003952
      EF00D6E7E700CEEFF700EFFFFF00EFFFFF00F7FFF700FFBD3900FFAD2900FFAD
      2900F7A53100FFAD3100212118005A42FF00EFCE9400F7D6A500F7DEB500E7B5
      5A00C6E7EF00BDE7FF00ADD6EF0094ADC6007BA59C00428C000063BD31005AB5
      3100EFEFDE00FFF7E700847B6300F7F7F700001094000008F7000008F700ADBD
      EF00C6E7FF000008FF000008F7000008F7001029FF000039FF000042FF006B9C
      BD0073A5CE00215A8400EFFFFF005A42FF004231840000005200847BB5006B6B
      8C00000000009C9CAD00FFFFFF001000730021108C0010008400000052000000
      00008C7BB50000000000000000005A42FF000000000000000000BD731800EFFF
      FF00EFF7F700949C94005A6B6300212118005A6363004A525200946B2900FFC6
      3900FFAD2900F7A53100080808005A42FF00EFCE9400F7D69C00D6BD6B00D6EF
      FF0063AD29005AA531005AA521004A9C00008CB563006BBD210052A50800CEAD
      3900FFFFF700FFFFF700846B4A00F7F7F7000010100010180000001010000000
      08000000100010180000101800004242210063739400FFFFFF000042FF005284
      CE008CB5D60010528C00EFFFFF005A42FF000000000000000000525273008C84
      AD0052527300FFFFFF004A4273000000730021108C0010007300000000000000
      00005252730000000000000000005A42FF000000000000000000B5844200DED6
      AD000000000000080000D6DEDE0031424200D6DEDE0008100000182118003939
      2100FFBD390042393100000000005A42FF00DEAD3900E7F7FF00EFF7FF00E7F7
      FF00E7F7FF00D6EFEF00BDDEBD0094BD8400B5D6BD00D6EFFF00D6EFFF00D6EF
      FF00D6AD3900FFFFFF00846B4A00F7F7F7001010180000291800002929002942
      2100001010000000100000000800000800007B737B00FFF7FF000029E700427B
      D60084BDDE00084A7300E7E7FF005A42FF00000000004A427300A59CDE00B5B5
      D600FFFFFF00CECEF7006352AD005242A5005242A50029217B00000000003129
      52000000000000000000000000005A42FF00000000000000000010181800CE94
      2100B5C6CE0000080800ADBDBD00EFF7EF003142390018211800212921001831
      29004A4A4A0000000000000000005A42FF00EFD69C009CC6BD0084CEFF0084CE
      FF0084CEFF0084CEFF0084CEFF0084CEFF0084CEFF0084CEFF008CD6FF0084C6
      FF0084CEFF00BDAD5A009C8C6300FFFFFF001018290000101000002918002942
      210000000800000008000000000000000800737B9400EFFFFF000018EF005AAD
      FF007BB5FF005A8CFF00106BFF005A42FF00C6BDEF00BDB5DE00EFEFFF00F7F7
      FF00DED6F7009484D6008473C6008C7BCE006B5AA5006B5A9C005A4A84000000
      00000000000000000000000000005A42FF000000000000000000000000000008
      08007B7B6300C6CECE00F7F7FF000821FF007384E70084949400395252003131
      31000000000000000000000000005A42FF000000000000000000D6AD4A008CD6
      FF0094D6FF0094D6FF009CD6FF009CDEFF00A5DEFF00ADDEFF00ADDEFF00B5DE
      FF00BDCEBD00CEAD6300FFFFFF0000000000001010000008D600001063000008
      84000008840000107B0010316300001063007B84F700A5C6FF00106BFF005A94
      FF00B5E7FF00DEF7FF00FFFFFF005A42FF00F7EFFF00FFFFFF00EFEFFF00EFEF
      F700EFEFFF00DEE7EF00CED6EF00D6D6F7006B6B9C0000000000000000000000
      00000000000000000000000000005A42FF000000000000000000000000000000
      00000000000000000000312929008C9CEF00B5C6F70094A5D600080808000000
      00000000000000000000000000005A42FF00000000000000000000000000FFF7
      EF00CEB55A00BDE7FF00C6E7FF00C6EFFF00CEEFFF00CEEFFF00D6E7DE00CEA5
      4200F7F7F7000000000000000000000000000000000018218C000008E7000008
      9C004A63CE000008F7000008FF000018FF007394FF00FFFFFF00FFFFFF00E7E7
      E700394A630000101000000000005A42FF00948CC6006B63A500BDB5F700EFE7
      FF00D6CEFF00C6BDE70000003900000000000000000000000000000000000000
      00000000000000000000000000005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A42FF000000000000000000000000000000
      000000000000EFCE8C00E7DEBD00F7FFFF00F7F7EF00CEA53900F7F7F7000000
      000000000000000000000000000000000000000000000000000000000800295A
      9C008C94B500DEDEFF00E7FFF700C6CEDE0052525A0010101800000000000000
      00000000000000000000000000005A42FF00EFEFFF00E7DEFF00847BC6003129
      6B00000010000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00EFEFEF00D6D6D600CECECE00D6D6D600DEDEDE00F7F7F7000000
      0000000000000000000000000000000000005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF00FFD68C00FFEF8C00FFDE8C00FFD6
      9C00FFD67B00FFDE7B00FFDE8400FFE79C00FFFFCE00FFFFA500FFE79C00FFEF
      C600FFF7D600FFFFDE00FFF7D6005A42FF0000000000EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00000000000000000000000000FFFFFF00E7E7
      E700947B7B008C101800AD2121009C0000009C000000732929006B6B6B00BDBD
      BD00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFD68C00FFE78C00FFDE8C00FFD6
      8C00FFD67B00FFDE8400FFD68400FFE7AD00FFFFE700FFFF6B00FFE79C00FFE7
      C600FFFFDE00FFF7CE00FFF7D6005A42FF000000000000000000EFEFEF00EFEF
      EF0000000000ADADAD0000000000EFEFEF00EFEFEF0000000000ADADAD00ADAD
      AD00ADADAD00ADADAD00000000000000000000000000FFFFFF00C6BDBD009C00
      00009C0000009C000000FFD68400DE9C94009C0000009C0000009C0000007318
      18008C8C8C00F7F7F7000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFD68400FFD68400FFD68400FFD6
      9400FFDE8C00FFD68400FFD66300FFF7DE00FFF7A500FFE77B00FFD69400FFDE
      BD00FFF7D600FFFFD600FFF7D6005A42FF000000000000000000000000000000
      000000000000ADADAD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEC6C6009C0000009C00
      00009C0000009C000000CE6B6300FFDEA500FFD68C00AD2118009C0000009C00
      00008C0808008C8C8C00F7F7F70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000029181000A5948C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFD66B00FFBD8400FFCE8C00FFE7
      8C00FFD66B00FFC68C00FFE77300FFEFCE00FFD67300FFE77300FFCE9400FFD6
      AD00FFF7B500FFF7DE00FFF7D6005A42FF000000000000000000000000000000
      000000000000ADADAD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7009C0000009C0000009C00
      00009C000000B5313100FFF7D600FFEFD600FFEFBD00FFDE94009C0000009C00
      00009C00000073181800BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006363520031291000088CB50000637B0000738C00218CB5007BE7FF000008
      100000081000B5ADAD00FFFFFF005A42FF00FFD67300EF845A00FFCEA500FFE7
      8400FFEFBD0000000000F7D69C00FFCEAD00FFD69C00FFDE7B00FFD68400FFCE
      9400FFEF9C00FFEFBD00FFF7CE005A42FF000000000000000000EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF0000000000ADADAD00ADAD
      AD00ADADAD00ADADAD000000000000000000A5313100A5080800AD181000AD21
      1000AD211800FFFFF700FFFFF700FFFFEF00FFF7DE00FFE7B500FFCE8C009C00
      00009C0000009C0000006B6B6B00F7F7F700FFFFFF00FFFFFF00FFFFFF000039
      2900291810005A4239000873940000527300106B8C0000526B00000000000000
      000000000000000000007B7B7B005A42FF00FFD673000000000000000000FFF7
      AD00F7C67B0000000000000000000000000000000000FFE77B00FFDE8400FFCE
      8C00FFDE9C00FFDE9C00FFE7AD005A42FF000000000000000000EFEFEF000000
      000000000000000000000063CE00EFEFEF00EFEFEF0000000000000000000000
      000000000000000000000000000000000000B5211800BD392100C64A3100C652
      3100C6523100FFEFE700FFFFFF00FFFFFF00FFF7EF00FFEFC600C65A31009C00
      00009C000000BD525200845A5A00DEDEDE00FFFFFF000000000000314A000029
      3100393939000000000042ADB5008CD6C600ADEFE700A5E7FF00A5E7FF008CDE
      FF0000000000AD9C5A00395242005A42FF00FFC66B0084631800000000000000
      0000FFDEC6000000000000000000FFCE7300FFDEA500FFDE8C00FFCE8400FFCE
      8400FFCE9400FFDE8C00FFE78C005A42FF000000000000000000EFEFEF00EFEF
      EF000000000000000000EFEFEF00EFEFEF00EFEFEF00000000000063CE000063
      CE000063CE000063CE000000000000000000C6523100D66B4200DE7B4A00DE8C
      5200EFBD9C00E7AD9400FFFFF700FFFFF700E7B59C00A51008009C0000009C00
      00009C000000FFFFFF00EFE7DE00D6D6D60039393900004A6B0000395A000042
      52000000000031BDCE0042185A00BDB58C00FFFFF700BDCEBD0094DEEF000000
      000000313100FFFFFF00004A63005A42FF00FFCE7B00FFEFBD00000000000000
      0000000000000000000000103100FFCEA500FFC69400FFCE8C00FFCE9400FFC6
      7B00FFCE8C00FFE78400FFDE8C005A42FF00000000000000000000000000EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00000000000063CE000063CE000063
      CE000063CE00000000000000000000000000D67B4A00E79C5A00EFAD6B00FFE7
      C600FFF7E700EFAD6300F7D6B500CE633900CE5A3900B5312100A50808009C00
      00009C000000FFFFF700FFFFEF00CECECE0000313100004A5A00105A73003163
      7B009CF7F70042B5C6006BDEDE00ADEFE700BDEFFF009CE7FF00B5EFFF00CEE7
      FF00FFFFFF00219CCE00A5BD94005A42FF00FFC68400FFD66B006B4A18000000
      0000000000000000000000000000000000000000000000000000F7AD3900FFC6
      7300FFDE7B00FFD68400FFD694005A42FF000000000000000000000000000000
      0000EFEFEF00EFEFEF00EFEFEF0000000000000000000063CE000063CE000063
      CE0000000000000000000000000000000000EFA56300FFC67300FFFFEF00E7BD
      A500FFDEA500FFF7E700FFC67300EFA56300D67B4A00C64A3100AD2110009C00
      00009C000000FFF7EF00FFF7DE00D6D6D60010636300105A730073847B00B5F7
      FF00F7FFEF00FFFFFF00E7FFF700DEFFEF00D6F7D600FFFFF700FFFFFF00BDEF
      FF005AC6F700A5D6FF00CECEB5005A42FF00FFCE6B00FFD68400FFE7CE000000
      0000000000000000000000000000000000000000000000000000FFF7A500FFE7
      7B00FFE77B00FFD68400FFCE8C005A42FF000000000000000000000000000000
      000000000000EFEFEF000000000000000000ADADAD000063CE000063CE000000
      000000000000000000000000000000000000F7BD7300FFDE9C00FFFFFF00FFFF
      FF00EFCEB500FFEFD600FFDE9C00F7C67300E7945A00CE633900B5312100A500
      0000B5424200FFF7D600C69C8C00EFEFEF00B5C6C6004A524200CEE7CE000000
      0000000000000000000063635200ADAD8C004A9C9C006BCEE70031BDD60063B5
      AD00C6CECE00F7F7F700FFFFFF005A42FF00FFD67300FFDE7B00FFCE8C000000
      000000000000000000000000000039420000CEDEAD00D6EFB500FFFF7B00FFE7
      7B00FFD67300FFD68400FFD684005A42FF000000000000000000000000000000
      0000EFEFEF0000000000EFEFEF0000000000ADADAD0000000000000000000000
      000000000000000000000000000000000000FFD68400FFF7EF00FFFFFF00FFFF
      FF00FFFFF700FFF7E700E7BD8C00FFD68400EFA56300D6734A00BD422900A510
      0800CE7B7B00A5080800947B7B00FFFFFF00FFFFFF008C8C6300FFFFFF007B7B
      7B006363630084848400CECECE00FFFFFF00FFFFFF0031291000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFD67B00FFDE7B00FFD67B005A18
      000010080000F7FFC600FFE7AD00FFD68400FFD67B00FFDE7B00FFCE8400FFCE
      8400FFD68C00FFDE7B00EFFF73005A42FF00000000000000000000000000EFEF
      EF00EFEFEF0000000000EFEFEF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFF7EF00FFF7E700FFFFF700FFFF
      EF00FFF7E700FFF7D600FFEFBD00E7A56300EFAD6B00DE845200EFBDA500FFEF
      C600EFBD8400B5392900E7E7E70000000000FFFFFF00FFFFFF00D6D6D600B5BD
      B5009CA5940084846B009CA59400848C7300C6CEC600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFC67B00FFE77300FFE79C000000
      0000FFE7D600FFE78400FFCE8C00FFCE8C00FFCE8400FFD68400FFCE7B00FFCE
      8C00FFCE8400FFD68400CEE7A5005A42FF000000000000000000000000000000
      0000EFEFEF0000000000EFEFEF00000000000063CE0000000000000000000000
      00000000000000000000000000000000000000000000FFEFCE00FFF7E700FFF7
      DE00FFF7D600F7D6B500FFE7B500FFD6A500E7945200D67B4A00BD422900A510
      08009C000000C6BDBD00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFC67B00FFDE7300FFEF9C000000
      0000E7BD9400FFDE8400FFCE8C00FFCE8C00FFCE8C00FFD68400FFD68400FFD6
      9400FFD67B00FFD68400CEE7A5005A42FF000000000000000000000000000000
      000000000000EFEFEF00000000000063CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFEFD600FFEF
      C600FFE7B500FFE7A500FFCE8C00FFD68400E79C5A00D66B4200BD392100A508
      0800CEC6C600FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFD67B00FFDE8400FFDE6B00F7E7
      AD00FFCE7B00FFDE8C00FFD69400FFD68C00FFCE8C00FFCE8C00FFCE8C00FFCE
      8400FFE77B00FFDE7B00D6EFAD005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFF7
      EF00FFDE9400FFD68400FFD68400E7A55A00DE845200C65A3100B5524200F7F7
      F70000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00424D3E000000000000003E000000
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
  object PopupMenu1: TPopupMenu
    Left = 323
    Top = 448
    object ChangeTourCode1: TMenuItem
      Caption = 'Change Tour Code'
      OnClick = ChangeTourCode1Click
    end
  end
end
