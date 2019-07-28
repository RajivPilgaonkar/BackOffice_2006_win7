object Custom_BookingsForm: TCustom_BookingsForm
  Left = 200
  Top = 197
  Width = 1124
  Height = 648
  Caption = 'Custom_BookingsForm'
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
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 150
    Align = alTop
    ParentColor = True
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Booking Details'
      TabOrder = 0
      Height = 148
      Width = 1106
      object DBText2: TDBText
        Left = 291
        Top = 92
        Width = 50
        Height = 13
        AutoSize = True
        DataField = 'bookings_id'
        DataSource = BookingDs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object cxAgentLcmb: TcxDBLookupComboBox
        Left = 68
        Top = 21
        DataBinding.DataField = 'addressbook_id'
        DataBinding.DataSource = BookingDs
        Properties.ClearKey = 46
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'Addressbook_id'
        Properties.ListColumns = <
          item
            FieldName = 'Organisation'
          end
          item
            FieldName = 'City'
          end>
        Properties.ListSource = PrinAgentDs
        Style.Color = clWindow
        TabOrder = 0
        Width = 270
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 68
        Top = 44
        DataBinding.DataField = 'web_users_id'
        DataBinding.DataSource = BookingDs
        Properties.ClearKey = 46
        Properties.DropDownWidth = 270
        Properties.KeyFieldNames = 'web_users_id'
        Properties.ListColumns = <
          item
            FieldName = 'web_user'
          end>
        Properties.ListSource = WebUsersDs
        Style.Color = clWindow
        TabOrder = 1
        Width = 270
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 68
        Top = 67
        DataBinding.DataField = 'countries_id'
        DataBinding.DataSource = BookingDs
        Properties.ClearKey = 46
        Properties.DropDownWidth = 150
        Properties.KeyFieldNames = 'countries_id'
        Properties.ListColumns = <
          item
            FieldName = 'country'
          end>
        Properties.ListSource = CountriesDs
        Style.Color = clWindow
        TabOrder = 2
        Width = 146
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 68
        Top = 90
        DataBinding.DataField = 'reference'
        DataBinding.DataSource = BookingDs
        Style.Color = clWindow
        TabOrder = 3
        Width = 146
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 292
        Top = 67
        DataBinding.DataField = 'currencies_id'
        DataBinding.DataSource = BookingDs
        Properties.ClearKey = 46
        Properties.DropDownWidth = 150
        Properties.KeyFieldNames = 'currencies_id'
        Properties.ListColumns = <
          item
            FieldName = 'currency'
          end>
        Properties.ListSource = CurrenciesDs
        Style.Color = clWindow
        TabOrder = 4
        Width = 146
      end
      object cxButton2: TcxButton
        Left = 276
        Top = 118
        Width = 146
        Height = 25
        Caption = 'SS / LP / Share With'
        TabOrder = 5
      end
      object cxButton3: TcxButton
        Left = 6
        Top = 118
        Width = 109
        Height = 25
        Caption = 'Edit Booking'
        TabOrder = 6
      end
      object Panel1: TPanel
        Left = 643
        Top = 18
        Width = 460
        Height = 127
        Align = alRight
        Color = 15451300
        TabOrder = 7
        object cxGrid2: TcxGrid
          Left = 1
          Top = 1
          Width = 458
          Height = 125
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = BookingToursDs
            DataController.KeyFieldNames = 'bookingstours_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsData.Appending = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object cxGridDBTableView1TourCode: TcxGridDBColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'tourcode'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 70
              Properties.KeyFieldNames = 'TourCode'
              Properties.ListColumns = <
                item
                  FieldName = 'TourCode'
                end>
              Properties.ListSource = TourDs
              Options.Sorting = False
              Width = 69
            end
            object cxGridDBTableView1TourDate: TcxGridDBColumn
              Caption = 'Tour Date'
              DataBinding.FieldName = 'tourdate'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.EditMask = '!99/99/0000;1;_'
              SortIndex = 0
              SortOrder = soDescending
              Width = 77
            end
            object cxGridDBTableView1TourLeader: TcxGridDBColumn
              Caption = 'TL'
              DataBinding.FieldName = 'tourleader'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Options.Filtering = False
              Options.Grouping = False
              Options.Sorting = False
              Width = 30
            end
            object cxGridDBTableView1TourleaderTrainee: TcxGridDBColumn
              Caption = 'TTL'
              DataBinding.FieldName = 'tourleadertrainee'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Options.Grouping = False
              Options.Sorting = False
              Width = 36
            end
            object cxGridDBTableView1BookeOon: TcxGridDBColumn
              Caption = 'Booked On'
              DataBinding.FieldName = 'bookedon'
              PropertiesClassName = 'TcxDateEditProperties'
              Options.Sorting = False
              Width = 72
            end
            object cxGridDBTableView1ConfirmedOn: TcxGridDBColumn
              Caption = 'Confirmed On'
              DataBinding.FieldName = 'confirmedon'
              PropertiesClassName = 'TcxDateEditProperties'
              Options.Sorting = False
              Width = 85
            end
            object cxGridDBTableView1CancelledOn: TcxGridDBColumn
              Caption = 'Cancelled On'
              DataBinding.FieldName = 'cancelledon'
              PropertiesClassName = 'TcxDateEditProperties'
              Options.Sorting = False
              Width = 83
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object cxLabel1: TcxLabel
        Left = 218
        Top = 68
        Caption = 'Currency'
        Transparent = True
      end
      object cxLabel2: TcxLabel
        Left = 218
        Top = 91
        Caption = 'Booking ID'
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 2
        Top = 68
        Caption = 'Country'
        Transparent = True
      end
      object cxLabel4: TcxLabel
        Left = 2
        Top = 91
        Caption = 'Reference'
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 2
        Top = 23
        Caption = 'Principal'
        Transparent = True
      end
      object cxLabel6: TcxLabel
        Left = 2
        Top = 45
        Caption = 'Web User'
        Transparent = True
      end
    end
  end
  object ClientsPanel: TPanel
    Left = 0
    Top = 150
    Width = 1108
    Height = 147
    Align = alTop
    TabOrder = 1
    object cxGroupBox3: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Client Details'
      TabOrder = 0
      Height = 145
      Width = 1106
      object cxGrid1: TcxGrid
        Left = 3
        Top = 18
        Width = 1100
        Height = 124
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = BookingClientsDs
          DataController.KeyFieldNames = 'bookingsclients_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object cxGrid1DBTableView1Name: TcxGridDBColumn
            DataBinding.FieldName = 'name'
            Options.Filtering = False
            Width = 148
          end
          object cxGrid1DBTableView1Male: TcxGridDBColumn
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
          object cxGrid1DBTableView1PassportNo: TcxGridDBColumn
            DataBinding.FieldName = 'passportno'
            Options.Filtering = False
            Width = 91
          end
          object cxGrid1DBTableView1DateOfIssue: TcxGridDBColumn
            DataBinding.FieldName = 'dateofissue'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Width = 115
          end
          object cxGrid1DBTableView1PlaceOfIssue: TcxGridDBColumn
            Caption = 'Issue Place'
            DataBinding.FieldName = 'placeofissue'
            Options.Filtering = False
            Width = 114
          end
          object cxGrid1DBTableView1ValidTo: TcxGridDBColumn
            DataBinding.FieldName = 'validto'
            PropertiesClassName = 'TcxDateEditProperties'
            Options.Filtering = False
            Width = 90
          end
          object cxGrid1DBTableView1Resident_Countries_id: TcxGridDBColumn
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
          object cxGrid1DBTableView1Countries_id: TcxGridDBColumn
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
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object GridsPanel: TPanel
    Left = 0
    Top = 297
    Width = 1108
    Height = 265
    Align = alClient
    TabOrder = 2
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      TabOrder = 0
      Height = 263
      Width = 1106
      object cxPageControl1: TcxPageControl
        Left = 3
        Top = 18
        Width = 1100
        Height = 242
        ActivePage = TicketsTab
        Align = alClient
        Images = ImageList2
        TabOrder = 0
        ClientRectBottom = 236
        ClientRectLeft = 3
        ClientRectRight = 1094
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
            Width = 1091
            Height = 209
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object TicketsGridDBTableView: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = TicketsDs
              DataController.KeyFieldNames = 'bookingstickets_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object TicketsGridDBTableViewAgent_cities_id: TcxGridDBColumn
                Caption = 'Agent City'
                DataBinding.FieldName = 'Agent_Cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 100
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = CitiesDS
                Options.Filtering = False
                Options.Grouping = False
              end
              object TicketsGridDBTableViewAddressBook_id: TcxGridDBColumn
                Caption = 'Agent'
                DataBinding.FieldName = 'AgentLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 140
              end
              object TicketsGridDBTableViewTickets_id: TcxGridDBColumn
                Caption = 'Mode'
                DataBinding.FieldName = 'tickets_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 75
                Properties.KeyFieldNames = 'tickets_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'details'
                  end>
                Properties.ListSource = TktDs
                Options.Filtering = False
                Options.Grouping = False
                Width = 60
              end
              object TicketsGridDBTableViewNoOfTickets: TcxGridDBColumn
                Caption = 'Tickets'
                DataBinding.FieldName = 'nooftickets'
                Options.Filtering = False
                Options.Grouping = False
                Width = 63
              end
              object TicketsGridDBTableViewTravelDate: TcxGridDBColumn
                Caption = 'Travel Date'
                DataBinding.FieldName = 'traveldate'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 91
              end
              object TicketsGridDBTableViewFrom_Cities_id: TcxGridDBColumn
                Caption = 'From City'
                DataBinding.FieldName = 'from_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 100
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = CitiesDS
                Options.Filtering = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soAscending
              end
              object TicketsGridDBTableViewTo_Cities_id: TcxGridDBColumn
                Caption = 'To City'
                DataBinding.FieldName = 'to_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 100
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = CitiesDS
                Options.Filtering = False
                Options.Grouping = False
              end
              object TicketsGridDBTableViewFlightNo: TcxGridDBColumn
                Caption = 'Travel Option'
                DataBinding.FieldName = 'flightno'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 118
              end
              object TicketsGridDBTableViewFrom_TrainStations_id: TcxGridDBColumn
                Caption = 'From Station'
                DataBinding.FieldName = 'FromTrainStationLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 92
              end
              object TicketsGridDBTableViewTo_TrainStations_id: TcxGridDBColumn
                Caption = 'To Station'
                DataBinding.FieldName = 'ToTrainStationLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 87
              end
              object TicketsGridDBTableViewClassLookup: TcxGridDBColumn
                Caption = 'Class'
                DataBinding.FieldName = 'ClassLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 80
              end
              object TicketsGridDBTableViewEtd: TcxGridDBColumn
                Caption = 'ETD'
                DataBinding.FieldName = 'etd'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Options.Grouping = False
                Width = 65
              end
              object TicketsGridDBTableViewEta: TcxGridDBColumn
                Caption = 'ETA'
                DataBinding.FieldName = 'eta'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Options.Grouping = False
                Width = 71
              end
              object TicketsGridDBTableViewTourCode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
              end
              object TicketsGridDBTableViewTourDate: TcxGridDBColumn
                Caption = 'Tour Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 90
              end
              object TicketsGridDBTableViewBookedOn: TcxGridDBColumn
                Caption = 'Booked On'
                DataBinding.FieldName = 'bookedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 91
              end
              object TicketsGridDBTableViewConfirmedOn: TcxGridDBColumn
                Caption = 'Confirmed On'
                DataBinding.FieldName = 'confirmedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 105
              end
              object TicketsGridDBTableViewCancelledOn: TcxGridDBColumn
                Caption = 'Cancelled On'
                DataBinding.FieldName = 'cancelledon'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 101
              end
              object TicketsGridDBTableViewQuoted: TcxGridDBColumn
                Caption = 'Quotation'
                DataBinding.FieldName = 'quoted'
                Options.Filtering = False
                Options.Grouping = False
                Width = 82
              end
              object TicketsGridDBTableViewVouchers_id: TcxGridDBColumn
                Caption = 'Voucher No'
                DataBinding.FieldName = 'VoucherLookup'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 95
              end
              object TicketsGridDBTableViewDBNoBooked: TcxGridDBColumn
                Caption = 'Booked'
                DataBinding.FieldName = 'nobooked'
                Options.Filtering = False
                Options.Grouping = False
              end
              object TicketsGridDBTableViewDBNoCancelled: TcxGridDBColumn
                Caption = 'Cancelled'
                DataBinding.FieldName = 'nocancelled'
                Options.Filtering = False
                Options.Grouping = False
              end
            end
            object TicketsGridLevel: TcxGridLevel
              GridView = TicketsGridDBTableView
            end
          end
        end
        object AccomodationTab: TcxTabSheet
          Caption = 'Accomodation     '
          ImageIndex = 1
          object AccomodationGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 1091
            Height = 209
            Align = alClient
            TabOrder = 0
            object AccomodationGridDBTableView: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = AccDs
              DataController.KeyFieldNames = 'bookingsaccommodation_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object AccomodationGridDBTableViewHotel_cities_id: TcxGridDBColumn
                Caption = 'Hotel City'
                DataBinding.FieldName = 'Hotel_Cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 100
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = CitiesDS
                Options.Filtering = False
                Options.Grouping = False
              end
              object AccomodationGridDBTableViewAddressBook_id: TcxGridDBColumn
                Caption = 'Hotel'
                DataBinding.FieldName = 'HotelLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 112
              end
              object AccomodationGridDBTableViewDateIn: TcxGridDBColumn
                Caption = 'Date In'
                DataBinding.FieldName = 'datein'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
                Width = 75
              end
              object AccomodationGridDBTableViewDateOut: TcxGridDBColumn
                Caption = 'Date Out'
                DataBinding.FieldName = 'dateout'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 76
              end
              object AccomodationGridDBTableViewNights: TcxGridDBColumn
                DataBinding.FieldName = 'Nights'
                Options.Filtering = False
                Options.Grouping = False
                Width = 74
              end
              object AccomodationGridDBTableViewSingles: TcxGridDBColumn
                Caption = 'Singles'
                DataBinding.FieldName = 'singles'
                Options.Filtering = False
                Options.Grouping = False
                Width = 76
              end
              object AccomodationGridDBTableViewDoubles: TcxGridDBColumn
                Caption = 'Doubles'
                DataBinding.FieldName = 'doubles'
                Options.Filtering = False
                Options.Grouping = False
                Width = 68
              end
              object AccomodationGridDBTableViewTriples: TcxGridDBColumn
                Caption = 'Triples'
                DataBinding.FieldName = 'triples'
                Options.Filtering = False
                Options.Grouping = False
              end
              object AccomodationGridDBTableViewTwins: TcxGridDBColumn
                Caption = 'Twins'
                DataBinding.FieldName = 'twins'
                Options.Filtering = False
                Options.Grouping = False
              end
              object AccomodationGridDBTableViewRoomTypeLookup: TcxGridDBColumn
                Caption = 'Room Type'
                DataBinding.FieldName = 'RoomTypeLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 100
              end
              object AccomodationGridDBTableViewAC: TcxGridDBColumn
                Caption = 'AC'
                DataBinding.FieldName = 'ac'
                Options.Filtering = False
                Options.Grouping = False
                Width = 47
              end
              object AccomodationGridDBTableViewMealPlans_id: TcxGridDBColumn
                Caption = 'Meal Plan'
                DataBinding.FieldName = 'mealplans_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'mealplans_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'plan'
                  end
                  item
                    FieldName = 'mealplan'
                  end>
                Properties.ListSource = MealPlanDs
                Options.Filtering = False
              end
              object AccomodationGridDBTableViewTourCode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 70
              end
              object AccomodationGridDBTableViewTourDate: TcxGridDBColumn
                Caption = 'Tour Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 84
              end
              object AccomodationGridDBTableViewBookedOn: TcxGridDBColumn
                Caption = 'Booked On'
                DataBinding.FieldName = 'bookedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 108
              end
              object AccomodationGridDBTableViewConfirmedOn: TcxGridDBColumn
                Caption = 'Confirmed On'
                DataBinding.FieldName = 'confirmedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 106
              end
              object AccomodationGridDBTableViewCancelledOn: TcxGridDBColumn
                Caption = 'Cancelled On'
                DataBinding.FieldName = 'cancelledon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 106
              end
              object AccomodationGridDBTableViewQuoted: TcxGridDBColumn
                Caption = 'Quotation'
                DataBinding.FieldName = 'quoted'
                Options.Filtering = False
                Options.Grouping = False
                Width = 97
              end
              object AccomodationGridDBTableViewVouchers_id: TcxGridDBColumn
                Caption = 'Voucher No'
                DataBinding.FieldName = 'VoucherLookup'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 112
              end
            end
            object AccomodationGridLevel: TcxGridLevel
              GridView = AccomodationGridDBTableView
            end
          end
        end
        object SightTab: TcxTabSheet
          Caption = 'Sight Seeing     '
          ImageIndex = 2
          object SightGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 1091
            Height = 209
            Align = alClient
            TabOrder = 0
            object SightGridDBTableView: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = SightDs
              DataController.KeyFieldNames = 'bookingsservices_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object SightGridDBTableViewDate: TcxGridDBColumn
                Caption = 'Date'
                DataBinding.FieldName = 'date'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
                Width = 91
              end
              object SightGridDBTableViewService_Cities_id: TcxGridDBColumn
                Caption = 'Service City'
                DataBinding.FieldName = 'service_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 180
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = CitiesDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 99
              end
              object SightGridDBTableViewServicesLookup: TcxGridDBColumn
                Caption = 'Service'
                DataBinding.FieldName = 'ServicesLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 131
              end
              object SightGridDBTableViewGuide: TcxGridDBColumn
                Caption = 'Guide'
                DataBinding.FieldName = 'guide'
                Options.Filtering = False
                Options.Grouping = False
              end
              object SightGridDBTableViewEntranceFees: TcxGridDBColumn
                Caption = 'Entrance Fees'
                DataBinding.FieldName = 'entrancefees'
                Options.Filtering = False
                Options.Grouping = False
                Width = 104
              end
              object SightGridDBTableViewAgentLookup: TcxGridDBColumn
                Caption = 'Agent'
                DataBinding.FieldName = 'AgentLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 126
              end
              object SightGridDBTableViewHotel_AddressBook_id: TcxGridDBColumn
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
                Properties.ListSource = HoteDs
                Options.Filtering = False
                Options.Grouping = False
                Width = 111
              end
              object SightGridDBTableViewTransport: TcxGridDBColumn
                DataBinding.FieldName = 'Transport'
                Options.Filtering = False
                Options.Grouping = False
              end
              object SightGridDBTableViewVehicles_id: TcxGridDBColumn
                Caption = 'Vehicle'
                DataBinding.FieldName = 'vehicles_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'Vehicles_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Vehicle'
                  end>
                Properties.ListSource = VehicleDs
                Options.Filtering = False
                Options.Grouping = False
              end
              object SightGridDBTableViewAC: TcxGridDBColumn
                Caption = 'AC'
                DataBinding.FieldName = 'ac'
                Options.Filtering = False
                Options.Grouping = False
              end
              object SightGridDBTableViewNoOfVehicles: TcxGridDBColumn
                Caption = 'No Of Vehicles'
                DataBinding.FieldName = 'NoOfVehicles'
                Options.Filtering = False
                Options.Grouping = False
              end
              object SightGridDBTableViewEta: TcxGridDBColumn
                Caption = 'Timing'
                DataBinding.FieldName = 'eta'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.UseCtrlIncrement = True
                Options.Filtering = False
                Options.Grouping = False
                Width = 76
              end
              object SightGridDBTableViewTourCode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
              end
              object SightGridDBTableViewTourDate: TcxGridDBColumn
                Caption = 'Tour Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 84
              end
              object SightGridDBTableViewBookedOn: TcxGridDBColumn
                Caption = 'Booked On'
                DataBinding.FieldName = 'bookedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 107
              end
              object SightGridDBTableViewConfirmedOn: TcxGridDBColumn
                Caption = 'Confirmed On'
                DataBinding.FieldName = 'confirmedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 107
              end
              object SightGridDBTableViewCancelledOn: TcxGridDBColumn
                Caption = 'Cancelled On'
                DataBinding.FieldName = 'cancelledon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 115
              end
              object SightGridDBTableViewQuoted: TcxGridDBColumn
                Caption = 'Quotation'
                DataBinding.FieldName = 'quoted'
                Options.Filtering = False
                Options.Grouping = False
                Width = 107
              end
              object SightGridDBTableViewVouchers_id: TcxGridDBColumn
                Caption = 'Voucher No'
                DataBinding.FieldName = 'VoucherLookup'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 102
              end
            end
            object SightGridLevel: TcxGridLevel
              GridView = SightGridDBTableView
            end
          end
        end
        object TransferTab: TcxTabSheet
          Caption = 'Transfer          '
          ImageIndex = 3
          object TransferGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 1091
            Height = 209
            Align = alClient
            TabOrder = 0
            object TransferGridDBTableView: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = TransferDs
              DataController.KeyFieldNames = 'bookingsservices_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object TransferGridDBTableViewDBTransferTypes_id: TcxGridDBColumn
                Caption = 'Transfer Type'
                DataBinding.FieldName = 'transfertypes_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 100
                Properties.KeyFieldNames = 'transfertypes_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'transfercode'
                  end>
                Properties.ListSource = TransferTypesDs
                Properties.ReadOnly = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 97
              end
              object TransferGridDBTableViewDate: TcxGridDBColumn
                Caption = 'Date'
                DataBinding.FieldName = 'date'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
                Width = 82
              end
              object TransferGridDBTableViewFrom_Cities_id: TcxGridDBColumn
                Caption = 'From City'
                DataBinding.FieldName = 'from_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = CitiesDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 101
              end
              object TransferGridDBTableViewTo_Cities_id: TcxGridDBColumn
                Caption = 'To City'
                DataBinding.FieldName = 'to_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = CitiesDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 96
              end
              object TransferGridDBTableViewService_Cities_id: TcxGridDBColumn
                Caption = 'Service City'
                DataBinding.FieldName = 'service_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = CitiesDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 107
              end
              object TransferGridDBTableViewServicesLookup: TcxGridDBColumn
                Caption = 'Service'
                DataBinding.FieldName = 'ServicesLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 150
              end
              object TransferGridDBTableViewAgentLookup: TcxGridDBColumn
                Caption = 'Agent'
                DataBinding.FieldName = 'AgentLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 143
              end
              object TransferGridDBTableViewHotel_AddressBook_id: TcxGridDBColumn
                Caption = 'Hotel'
                DataBinding.FieldName = 'hotel_addressbook_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 300
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
                Properties.ListSource = HoteDs
                Options.Filtering = False
                Options.Grouping = False
                Width = 115
              end
              object TransferGridDBTableViewFlightNo: TcxGridDBColumn
                Caption = 'Travel Option'
                DataBinding.FieldName = 'flightno'
                Options.Filtering = False
                Options.Grouping = False
                Width = 107
              end
              object TransferGridDBTableViewEta: TcxGridDBColumn
                Caption = 'Timing'
                DataBinding.FieldName = 'eta'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.UseCtrlIncrement = True
                Options.Filtering = False
                Options.Grouping = False
                Width = 89
              end
              object TransferGridDBTableViewVehicles_id: TcxGridDBColumn
                Caption = 'Vehicle'
                DataBinding.FieldName = 'vehicles_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'Vehicles_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Vehicle'
                  end>
                Properties.ListSource = VehicleDs
                Options.Filtering = False
                Options.Grouping = False
                Width = 109
              end
              object TransferGridDBTableViewNoOfVehicles: TcxGridDBColumn
                Caption = 'Vehicles'
                DataBinding.FieldName = 'NoOfVehicles'
                Options.Filtering = False
                Options.Grouping = False
              end
              object TransferGridDBTableViewAC: TcxGridDBColumn
                Caption = 'AC'
                DataBinding.FieldName = 'ac'
                Options.Filtering = False
                Options.Grouping = False
                Width = 47
              end
              object TransferGridDBTableViewTourCode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
              end
              object TransferGridDBTableViewTourDate: TcxGridDBColumn
                Caption = 'Tour Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 84
              end
              object TransferGridDBTableViewBookedOn: TcxGridDBColumn
                Caption = 'Booked On'
                DataBinding.FieldName = 'bookedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 95
              end
              object TransferGridDBTableViewConfirmedOn: TcxGridDBColumn
                Caption = 'Confirmed On'
                DataBinding.FieldName = 'confirmedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 99
              end
              object TransferGridDBTableViewCancelledOn: TcxGridDBColumn
                Caption = 'Cancelled On'
                DataBinding.FieldName = 'cancelledon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 107
              end
              object TransferGridDBTableViewQuoted: TcxGridDBColumn
                Caption = 'Quotation'
                DataBinding.FieldName = 'quoted'
                Options.Filtering = False
                Options.Grouping = False
                Width = 113
              end
              object TransferGridDBTableViewVouchers_id: TcxGridDBColumn
                Caption = 'Voucher No'
                DataBinding.FieldName = 'VoucherLookup'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 102
              end
              object TransferGridDBTableViewGenerateVoucher: TcxGridDBColumn
                Caption = 'Gen Voucher'
                DataBinding.FieldName = 'generatevoucher'
                Visible = False
                Options.Filtering = False
                Options.Grouping = False
              end
            end
            object TransferGridLevel: TcxGridLevel
              GridView = TransferGridDBTableView
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
            Width = 1091
            Height = 209
            Align = alClient
            TabOrder = 0
            object PackagesGridDBTableView: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = PackDs
              DataController.KeyFieldNames = 'bookingspackages_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object PackagesGridDBTableViewPackages_id: TcxGridDBColumn
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
                Properties.ListSource = PackagesDs
                Options.Filtering = False
                Options.Grouping = False
                Width = 138
              end
              object PackagesGridDBTableViewAddressBook_id: TcxGridDBColumn
                Caption = 'Agent'
                DataBinding.FieldName = 'addressbook_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 300
                Properties.KeyFieldNames = 'Addressbook_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Organisation'
                  end
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = AgentDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 125
              end
              object PackagesGridDBTableViewFrom_Date: TcxGridDBColumn
                Caption = 'From Date'
                DataBinding.FieldName = 'from_date'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
                Width = 98
              end
              object PackagesGridDBTableViewFrom_Time: TcxGridDBColumn
                Caption = 'From Time'
                DataBinding.FieldName = 'from_time'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Options.Grouping = False
                Width = 89
              end
              object PackagesGridDBTableViewFrom_Place: TcxGridDBColumn
                Caption = 'From Place'
                DataBinding.FieldName = 'from_place'
                Options.Filtering = False
                Options.Grouping = False
                Width = 96
              end
              object PackagesGridDBTableViewTo_Time: TcxGridDBColumn
                Caption = 'To Time'
                DataBinding.FieldName = 'to_time'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Options.Grouping = False
                Width = 91
              end
              object PackagesGridDBTableViewTo_Place: TcxGridDBColumn
                Caption = 'To Place'
                DataBinding.FieldName = 'to_place'
                Options.Filtering = False
                Options.Grouping = False
                Width = 82
              end
              object PackagesGridDBTableViewFrom_AddressBook_id: TcxGridDBColumn
                Caption = 'From Agent'
                DataBinding.FieldName = 'from_addressbook_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 300
                Properties.KeyFieldNames = 'Addressbook_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Organisation'
                  end
                  item
                    FieldName = 'City'
                  end>
                Properties.ListSource = AgentDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 116
              end
              object PackagesGridDBTableViewTransport: TcxGridDBColumn
                Caption = 'Transport'
                DataBinding.FieldName = 'transport'
                Options.Filtering = False
                Options.Grouping = False
                Width = 104
              end
              object PackagesGridDBTableViewAC: TcxGridDBColumn
                Caption = 'AC'
                DataBinding.FieldName = 'ac'
                Options.Filtering = False
                Options.Grouping = False
                Width = 51
              end
              object PackagesGridDBTableViewTourCode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
              end
              object PackagesGridDBTableViewTourDate: TcxGridDBColumn
                Caption = 'Tour Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 84
              end
              object PackagesGridDBTableViewVehicleLookUp: TcxGridDBColumn
                Caption = 'Vehicle'
                DataBinding.FieldName = 'VehicleLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
              end
              object PackagesGridDBTableViewNoOfVehicles: TcxGridDBColumn
                Caption = 'No Of Vehicles'
                DataBinding.FieldName = 'noofvehicles'
                Options.Filtering = False
                Options.Grouping = False
                Width = 111
              end
              object PackagesGridDBTableViewBookedOn: TcxGridDBColumn
                Caption = 'Booked On'
                DataBinding.FieldName = 'bookedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 93
              end
              object PackagesGridDBTableViewConfirmedOn: TcxGridDBColumn
                Caption = 'Confirmed On'
                DataBinding.FieldName = 'confirmedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 103
              end
              object PackagesGridDBTableViewCancelledOn: TcxGridDBColumn
                Caption = 'Cancelled On'
                DataBinding.FieldName = 'cancelledon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 122
              end
              object PackagesGridDBTableViewQuoted: TcxGridDBColumn
                Caption = 'Quotation'
                DataBinding.FieldName = 'quoted'
                Options.Filtering = False
                Options.Grouping = False
                Width = 116
              end
              object PackagesGridDBTableViewVouchers_id: TcxGridDBColumn
                Caption = 'Voucher No'
                DataBinding.FieldName = 'VoucherLookup'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 112
              end
            end
            object PackagesGridLevel: TcxGridLevel
              GridView = PackagesGridDBTableView
            end
          end
        end
        object TransportTab: TcxTabSheet
          Caption = 'Transport          '
          ImageIndex = 5
          object TransportGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 1091
            Height = 209
            Align = alClient
            TabOrder = 0
            object TransportGridDBTableView: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = TransportDs
              DataController.KeyFieldNames = 'bookingstransport_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object TransportGridDBTableViewFrom_Cities_id: TcxGridDBColumn
                Caption = 'From City'
                DataBinding.FieldName = 'from_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = CitiesDS
                Options.Filtering = False
                Options.Grouping = False
              end
              object TransportGridDBTableViewFromPlace: TcxGridDBColumn
                Caption = 'From Place'
                DataBinding.FieldName = 'fromplace'
                Options.Filtering = False
                Options.Grouping = False
                Width = 122
              end
              object TransportGridDBTableViewTo_Cities_id: TcxGridDBColumn
                Caption = 'To City'
                DataBinding.FieldName = 'to_cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = CitiesDS
                Options.Filtering = False
                Options.Grouping = False
                Width = 94
              end
              object TransportGridDBTableViewToPlace: TcxGridDBColumn
                Caption = 'To Place'
                DataBinding.FieldName = 'toplace'
                Options.Filtering = False
                Options.Grouping = False
                Width = 149
              end
              object TransportGridDBTableViewFromDate: TcxGridDBColumn
                Caption = 'From Date'
                DataBinding.FieldName = 'fromdate'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                SortIndex = 0
                SortOrder = soDescending
                Width = 88
              end
              object TransportGridDBTableViewFromTime: TcxGridDBColumn
                Caption = 'From Time'
                DataBinding.FieldName = 'fromtime'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Options.Grouping = False
                Width = 94
              end
              object TransportGridDBTableViewToDate: TcxGridDBColumn
                Caption = 'To Date'
                DataBinding.FieldName = 'todate'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 78
              end
              object TransportGridDBTableViewToTime: TcxGridDBColumn
                Caption = 'To Time'
                DataBinding.FieldName = 'totime'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Options.Grouping = False
                Width = 83
              end
              object TransportGridDBTableViewNoOfPax: TcxGridDBColumn
                Caption = 'No. Of Pax'
                DataBinding.FieldName = 'noofpax'
                Options.Filtering = False
                Options.Grouping = False
              end
              object TransportGridDBTableViewAgent_Cities_id: TcxGridDBColumn
                Caption = 'Agent City'
                DataBinding.FieldName = 'Agent_Cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'city'
                  end>
                Properties.ListSource = CitiesDS
                Options.Filtering = False
                Options.Grouping = False
              end
              object TransportGridDBTableViewAddressBook_id: TcxGridDBColumn
                Caption = 'Agent'
                DataBinding.FieldName = 'AgentLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 139
              end
              object TransportGridDBTableViewVehicleLookUp: TcxGridDBColumn
                Caption = 'Vehicle'
                DataBinding.FieldName = 'VehicleLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Options.Filtering = False
                Options.Grouping = False
                Width = 105
              end
              object TransportGridDBTableViewAC: TcxGridDBColumn
                Caption = 'AC'
                DataBinding.FieldName = 'ac'
                Options.Filtering = False
                Options.Grouping = False
                Width = 45
              end
              object TransportGridDBTableViewNoOfVehicles: TcxGridDBColumn
                Caption = 'No.Of Vehicles'
                DataBinding.FieldName = 'noofvehicles'
                Options.Filtering = False
                Options.Grouping = False
                Width = 109
              end
              object TransportGridDBTableViewDropOffDays: TcxGridDBColumn
                Caption = 'Drop Off Days'
                DataBinding.FieldName = 'dropoffdays'
                Options.Filtering = False
                Options.Grouping = False
                Width = 101
              end
              object TransportGridDBTableViewDropOffKms: TcxGridDBColumn
                Caption = 'Drop Off Kms.'
                DataBinding.FieldName = 'dropoffkms'
                Options.Filtering = False
                Options.Grouping = False
                Width = 99
              end
              object TransportGridDBTableViewTourCode: TcxGridDBColumn
                Caption = 'Tour Code'
                DataBinding.FieldName = 'tourcode'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
              end
              object TransportGridDBTableViewTourDate: TcxGridDBColumn
                Caption = 'Tour Date'
                DataBinding.FieldName = 'tourdate'
                PropertiesClassName = 'TcxLabelProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 84
              end
              object TransportGridDBTableViewCancelledOn: TcxGridDBColumn
                Caption = 'Cancelled On'
                DataBinding.FieldName = 'cancelledon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 101
              end
              object TransportGridDBTableViewBookedOn: TcxGridDBColumn
                Caption = 'Booked On'
                DataBinding.FieldName = 'bookedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 92
              end
              object TransportGridDBTableViewConfirmedOn: TcxGridDBColumn
                Caption = 'Confirmed On'
                DataBinding.FieldName = 'confirmedon'
                PropertiesClassName = 'TcxDateEditProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 101
              end
              object TransportGridDBTableViewQuoted: TcxGridDBColumn
                Caption = 'Quotation'
                DataBinding.FieldName = 'quoted'
                Options.Filtering = False
                Options.Grouping = False
                Width = 118
              end
              object TransportGridDBTableViewVouchers_id: TcxGridDBColumn
                Caption = 'Voucher No.'
                DataBinding.FieldName = 'VoucherLookup'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 108
              end
            end
            object TransportGridLevel: TcxGridLevel
              GridView = TransportGridDBTableView
            end
          end
        end
        object HistoryTab: TcxTabSheet
          Caption = 'History             '
          ImageIndex = 6
          object Label7: TcxLabel
            Left = 0
            Top = -2
            Caption = 'History'
            Transparent = True
          end
          object Label9: TcxLabel
            Left = 0
            Top = 98
            Caption = 'Notes for Situation List'
            Transparent = True
          end
          object DBMemo2: TDBMemo
            Left = 0
            Top = 16
            Width = 895
            Height = 78
            Color = 16054261
            DataField = 'history'
            DataSource = BookingDs
            Enabled = False
            TabOrder = 0
          end
          object DBMemo3: TDBMemo
            Left = 0
            Top = 115
            Width = 898
            Height = 98
            Align = alBottom
            Color = 16054261
            DataField = 'notes'
            DataSource = BookingDs
            Enabled = False
            TabOrder = 1
          end
        end
      end
    end
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 562
    Width = 1108
    Height = 48
    Align = alBottom
    TabOrder = 3
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
      DataSource = BookingDs
      LookAndFeel.NativeStyle = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object cxButtonClose: TcxButton
      Left = 832
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = cxButtonCloseClick
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
      Width = 137
    end
  end
  object BookingSds: TSQLDataSet
    CommandText = 'SELECT * FROM Bookings '#13#10'WHERE Bookings_id = :Bookings_id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Bookings_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 118
    Top = 118
  end
  object BookingDsp: TDataSetProvider
    DataSet = BookingSds
    UpdateMode = upWhereKeyOnly
    Left = 134
    Top = 118
  end
  object BookingCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BookingDsp'
    BeforeInsert = BookingCdsBeforeInsert
    BeforeEdit = BookingCdsBeforeEdit
    BeforePost = BookingCdsBeforePost
    AfterPost = BookingCdsAfterPost
    BeforeDelete = BookingCdsBeforeDelete
    AfterDelete = BookingCdsAfterDelete
    Left = 158
    Top = 118
    object BookingCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object BookingCdsbooked: TSQLTimeStampField
      FieldName = 'booked'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
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
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object BookingCdshistory: TMemoField
      FieldName = 'history'
      BlobType = ftMemo
    end
    object BookingCdscancelled: TSQLTimeStampField
      FieldName = 'cancelled'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
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
    end
    object BookingCdscreated: TSQLTimeStampField
      FieldName = 'created'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
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
  object BookingDs: TDataSource
    DataSet = BookingCds
    Left = 174
    Top = 118
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
    Left = 800
    Top = 72
  end
  object BookingToursDsp: TDataSetProvider
    DataSet = BookingToursSds
    UpdateMode = upWhereKeyOnly
    Left = 808
    Top = 72
  end
  object BookingToursCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'BookingToursDsp'
    BeforeInsert = BookingToursCdsBeforeInsert
    BeforeEdit = BookingToursCdsBeforeEdit
    BeforePost = BookingToursCdsBeforePost
    AfterPost = BookingToursCdsAfterPost
    BeforeDelete = BookingToursCdsBeforeDelete
    AfterDelete = BookingToursCdsAfterDelete
    Left = 824
    Top = 72
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
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object BookingToursCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
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
      DisplayFormat = '#,##0.00'
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
  object BookingToursDs: TDataSource
    DataSet = BookingToursCds
    Left = 840
    Top = 72
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
    Left = 776
    Top = 224
  end
  object BookingClientsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'BookingClientsDSP'
    BeforeInsert = BookingClientsCdsBeforeInsert
    BeforeEdit = BookingClientsCdsBeforeEdit
    BeforePost = BookingClientsCdsBeforePost
    AfterPost = BookingClientsCdsAfterPost
    BeforeDelete = BookingClientsCdsBeforeDelete
    AfterDelete = BookingClientsCdsAfterDelete
    Left = 824
    Top = 224
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
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
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
  end
  object BookingClientsDsp: TDataSetProvider
    DataSet = BookingClientsSds
    UpdateMode = upWhereKeyOnly
    Left = 800
    Top = 224
  end
  object BookingClientsDs: TDataSource
    DataSet = BookingClientsCds
    Left = 848
    Top = 224
  end
  object TicketsDs: TDataSource
    DataSet = TicketsCds
    Left = 16
    Top = 496
  end
  object TicketsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TicketsDsp'
    BeforeInsert = TicketsCdsBeforeInsert
    BeforeEdit = TicketsCdsBeforeEdit
    BeforePost = TicketsCdsBeforePost
    AfterPost = TicketsCdsAfterPost
    BeforeDelete = TicketsCdsBeforeDelete
    AfterDelete = TicketsCdsAfterDelete
    Left = 32
    Top = 496
    object TicketsCdsbookingstickets_id: TIntegerField
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
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
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
      DisplayFormat = '#,##0.00'
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
      LookupDataSet = ClassCds
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
      LookupDataSet = AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 30
      Lookup = True
    end
    object TicketsCdsVoucherLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = VoucherCds
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
    object TicketsCdsFromTrainStationLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'FromTrainStationLookup'
      LookupDataSet = TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'stationname'
      KeyFields = 'from_trainstations_id'
      Size = 50
      Lookup = True
    end
    object TicketsCdsToTrainStationLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ToTrainStationLookup'
      LookupDataSet = TrainStationCds
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
    Left = 16
    Top = 520
  end
  object TicketsDsp: TDataSetProvider
    DataSet = TicketsSds
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 520
  end
  object AccDs: TDataSource
    DataSet = AccCds
    Left = 80
    Top = 496
  end
  object AccCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AccDsp'
    BeforeInsert = AccCdsBeforeInsert
    BeforeEdit = AccCdsBeforeEdit
    BeforePost = AccCdsBeforePost
    AfterPost = AccCdsAfterPost
    BeforeDelete = AccCdsBeforeDelete
    AfterDelete = AccCdsAfterDelete
    Left = 96
    Top = 496
    object AccCdsbookingsaccommodation_id: TIntegerField
      FieldName = 'bookingsaccommodation_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object AccCdsdatein: TSQLTimeStampField
      FieldName = 'datein'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object AccCdsroomsizes_id: TIntegerField
      FieldName = 'roomsizes_id'
    end
    object AccCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object AccCdsdateout: TSQLTimeStampField
      FieldName = 'dateout'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object AccCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object AccCdsquantity: TIntegerField
      FieldName = 'quantity'
    end
    object AccCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object AccCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCdsintimated: TBooleanField
      FieldName = 'intimated'
    end
    object AccCdsac: TBooleanField
      FieldName = 'ac'
    end
    object AccCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object AccCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object AccCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object AccCdssingles: TIntegerField
      FieldName = 'singles'
    end
    object AccCdsdoubles: TIntegerField
      FieldName = 'doubles'
    end
    object AccCdscreated: TSQLTimeStampField
      FieldName = 'created'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCdseta: TSQLTimeStampField
      FieldName = 'eta'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object AccCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object AccCdsweb_bookingsaccommodation_id: TIntegerField
      FieldName = 'web_bookingsaccommodation_id'
    end
    object AccCdsquoted: TBCDField
      FieldName = 'quoted'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object AccCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object AccCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object AccCdsNights: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nights'
      Size = 80
      Calculated = True
    end
    object AccCdsRoomTypeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'RoomTypeLookup'
      LookupDataSet = RoomTypeCds
      LookupKeyFields = 'roomtypes_id'
      LookupResultField = 'roomtype'
      KeyFields = 'roomtypes_id'
      Size = 30
      Lookup = True
    end
    object AccCdsMealPlanLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'MealPlanLookup'
      LookupDataSet = MealPlanCds
      LookupKeyFields = 'mealplans_id'
      LookupResultField = 'plan'
      KeyFields = 'mealplans_id'
      Size = 30
      Lookup = True
    end
    object AccCdsHotel_Cities_id: TIntegerField
      FieldName = 'Hotel_Cities_id'
    end
    object AccCdsHotelLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'HotelLookup'
      LookupDataSet = HotelCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 30
      Lookup = True
    end
    object AccCdsVoucherLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = VoucherCds
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
    object AccCdstriples: TIntegerField
      FieldName = 'triples'
    end
    object AccCdstwins: TIntegerField
      FieldName = 'twins'
    end
  end
  object AccDsp: TDataSetProvider
    DataSet = AccSds
    UpdateMode = upWhereKeyOnly
    Left = 96
    Top = 520
  end
  object AccSds: TSQLDataSet
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
    Left = 80
    Top = 520
  end
  object SightDs: TDataSource
    DataSet = SightCds
    Left = 144
    Top = 496
  end
  object SightCds: TClientDataSet
    Aggregates = <>
    Filter = 'Transfer=0'
    Filtered = True
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'SightDsp'
    BeforeInsert = SightCdsBeforeInsert
    BeforeEdit = SightCdsBeforeEdit
    BeforePost = SightCdsBeforePost
    AfterPost = SightCdsAfterPost
    BeforeDelete = SightCdsBeforeDelete
    AfterDelete = SightCdsAfterDelete
    Left = 160
    Top = 496
    object SightCdsbookingsservices_id: TIntegerField
      FieldName = 'bookingsservices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SightCdsdate: TSQLTimeStampField
      FieldName = 'date'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCdsflightno: TStringField
      FieldName = 'flightno'
      Size = 30
    end
    object SightCdstransfer: TBooleanField
      FieldName = 'transfer'
    end
    object SightCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object SightCdseta: TSQLTimeStampField
      FieldName = 'eta'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object SightCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object SightCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object SightCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object SightCdsplacefrom: TStringField
      FieldName = 'placefrom'
    end
    object SightCdsplaceto: TStringField
      FieldName = 'placeto'
    end
    object SightCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object SightCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object SightCdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object SightCdsac: TBooleanField
      FieldName = 'ac'
    end
    object SightCdshotel_addressbook_id: TIntegerField
      FieldName = 'hotel_addressbook_id'
    end
    object SightCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object SightCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object SightCdsservice_cities_id: TIntegerField
      FieldName = 'service_cities_id'
    end
    object SightCdstransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object SightCdsobsolete1: TIntegerField
      FieldName = 'obsolete1'
    end
    object SightCdsobsolete2: TIntegerField
      FieldName = 'obsolete2'
    end
    object SightCdsentrancefees: TBooleanField
      FieldName = 'entrancefees'
    end
    object SightCdsnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object SightCdscreated: TSQLTimeStampField
      FieldName = 'created'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object SightCdsguide: TBooleanField
      FieldName = 'guide'
    end
    object SightCdsquoted: TBCDField
      FieldName = 'quoted'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object SightCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object SightCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object SightCdsServicesLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicesLookup'
      LookupDataSet = ServicesCds
      LookupKeyFields = 'Services_id'
      LookupResultField = 'Service'
      KeyFields = 'services_id'
      Size = 30
      Lookup = True
    end
    object SightCdsAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 30
      Lookup = True
    end
    object SightCdsHotelLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'HotelLookup'
      LookupDataSet = HotelCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'hotel_addressbook_id'
      Size = 30
      Lookup = True
    end
    object SightCdsVehicleLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'VehicleLookup'
      LookupDataSet = VehicleCds
      LookupKeyFields = 'Vehicles_id'
      LookupResultField = 'Vehicle'
      KeyFields = 'vehicles_id'
      Size = 30
      Lookup = True
    end
    object SightCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object SightCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
    object SightCdsVoucherLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = VoucherCds
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
  end
  object SightDsp: TDataSetProvider
    DataSet = SightSds
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 520
  end
  object SightSds: TSQLDataSet
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
    Left = 144
    Top = 520
  end
  object TransferDs: TDataSource
    DataSet = TransferCds
    Left = 208
    Top = 496
  end
  object TransferCds: TClientDataSet
    Aggregates = <>
    Filter = 'Transfer=1'
    Filtered = True
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TransferDsp'
    BeforeInsert = TransferCdsBeforeInsert
    BeforeEdit = TransferCdsBeforeEdit
    BeforePost = TransferCdsBeforePost
    AfterPost = TransferCdsAfterPost
    BeforeDelete = TransferCdsBeforeDelete
    AfterDelete = TransferCdsAfterDelete
    Left = 224
    Top = 496
    object TransferCdsbookingsservices_id: TIntegerField
      FieldName = 'bookingsservices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TransferCdsdate: TSQLTimeStampField
      FieldName = 'date'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransferCdsflightno: TStringField
      FieldName = 'flightno'
      Size = 30
    end
    object TransferCdstransfer: TBooleanField
      FieldName = 'transfer'
    end
    object TransferCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object TransferCdseta: TSQLTimeStampField
      FieldName = 'eta'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object TransferCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object TransferCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object TransferCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransferCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object TransferCdsplacefrom: TStringField
      FieldName = 'placefrom'
    end
    object TransferCdsplaceto: TStringField
      FieldName = 'placeto'
    end
    object TransferCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object TransferCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object TransferCdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object TransferCdsac: TBooleanField
      FieldName = 'ac'
    end
    object TransferCdshotel_addressbook_id: TIntegerField
      FieldName = 'hotel_addressbook_id'
    end
    object TransferCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object TransferCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object TransferCdsservice_cities_id: TIntegerField
      FieldName = 'service_cities_id'
    end
    object TransferCdsobsolete1: TIntegerField
      FieldName = 'obsolete1'
    end
    object TransferCdsobsolete2: TIntegerField
      FieldName = 'obsolete2'
    end
    object TransferCdsentrancefees: TBooleanField
      FieldName = 'entrancefees'
    end
    object TransferCdsnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object TransferCdscreated: TSQLTimeStampField
      FieldName = 'created'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransferCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransferCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransferCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransferCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransferCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransferCdsguide: TBooleanField
      FieldName = 'guide'
    end
    object TransferCdsquoted: TBCDField
      FieldName = 'quoted'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object TransferCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object TransferCdsinvoices_id: TIntegerField
      FieldName = 'invoices_id'
    end
    object TransferCdsServicesLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicesLookup'
      LookupDataSet = ServicesCds
      LookupKeyFields = 'Services_id'
      LookupResultField = 'Service'
      KeyFields = 'services_id'
      Size = 30
      Lookup = True
    end
    object TransferCdsAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 30
      Lookup = True
    end
    object TransferCdstransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object TransferCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object TransferCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
    object TransferCdsVoucherLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = VoucherCds
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
  end
  object TransferDsp: TDataSetProvider
    DataSet = TransferSds
    UpdateMode = upWhereKeyOnly
    Left = 224
    Top = 520
  end
  object TransferSds: TSQLDataSet
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
    Left = 208
    Top = 520
  end
  object PackDs: TDataSource
    DataSet = PackCds
    Left = 272
    Top = 496
  end
  object PackCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'PackDsp'
    BeforeInsert = PackCdsBeforeInsert
    BeforeEdit = PackCdsBeforeEdit
    BeforePost = PackCdsBeforePost
    AfterPost = PackCdsAfterPost
    BeforeDelete = PackCdsBeforeDelete
    AfterDelete = PackCdsAfterDelete
    Left = 288
    Top = 496
    object PackCdsbookingspackages_id: TIntegerField
      FieldName = 'bookingspackages_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object PackCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object PackCdspackages_id: TIntegerField
      FieldName = 'packages_id'
    end
    object PackCdsfrom_date: TSQLTimeStampField
      FieldName = 'from_date'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object PackCdsfrom_time: TSQLTimeStampField
      FieldName = 'from_time'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object PackCdsfrom_addressbook_id: TIntegerField
      FieldName = 'from_addressbook_id'
    end
    object PackCdsto_time: TSQLTimeStampField
      FieldName = 'to_time'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object PackCdsto_place: TStringField
      FieldName = 'to_place'
      Size = 30
    end
    object PackCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object PackCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object PackCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object PackCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object PackCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object PackCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object PackCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object PackCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object PackCdstransport: TBooleanField
      FieldName = 'transport'
    end
    object PackCdsac: TBooleanField
      FieldName = 'ac'
    end
    object PackCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object PackCdsnoofvehicles: TIntegerField
      FieldName = 'noofvehicles'
    end
    object PackCdsfrom_place: TStringField
      FieldName = 'from_place'
      Size = 30
    end
    object PackCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object PackCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object PackCdsquoted: TBCDField
      FieldName = 'quoted'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object PackCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object PackCdsVehicleLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'VehicleLookup'
      LookupDataSet = VehicleCds
      LookupKeyFields = 'Vehicles_id'
      LookupResultField = 'Vehicle'
      KeyFields = 'vehicles_id'
      Size = 30
      Lookup = True
    end
    object PackCdsVoucherLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = VoucherCds
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
  end
  object PackDsp: TDataSetProvider
    DataSet = PackSds
    UpdateMode = upWhereKeyOnly
    Left = 288
    Top = 520
  end
  object PackSds: TSQLDataSet
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
    Left = 272
    Top = 520
  end
  object TransportDs: TDataSource
    DataSet = TransportCds
    Left = 336
    Top = 496
  end
  object TransportCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'bookings_id'
    MasterFields = 'bookings_id'
    MasterSource = BookingDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TransportDsp'
    BeforeInsert = TransportCdsBeforeInsert
    BeforeEdit = TransportCdsBeforeEdit
    BeforePost = TransportCdsBeforePost
    AfterPost = TransportCdsAfterPost
    BeforeDelete = TransportCdsBeforeDelete
    AfterDelete = TransportCdsAfterDelete
    Left = 352
    Top = 496
    object TransportCdsbookingstransport_id: TIntegerField
      FieldName = 'bookingstransport_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TransportCdsbookings_id: TIntegerField
      FieldName = 'bookings_id'
    end
    object TransportCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object TransportCdsfromdate: TSQLTimeStampField
      FieldName = 'fromdate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCdsfromtime: TSQLTimeStampField
      FieldName = 'fromtime'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object TransportCdsfromplace: TStringField
      FieldName = 'fromplace'
      Size = 100
    end
    object TransportCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object TransportCdstodate: TSQLTimeStampField
      FieldName = 'todate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCdstotime: TSQLTimeStampField
      FieldName = 'totime'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object TransportCdstoplace: TStringField
      FieldName = 'toplace'
      Size = 100
    end
    object TransportCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object TransportCdsdropoffdays: TIntegerField
      FieldName = 'dropoffdays'
    end
    object TransportCdsdropoffkms: TIntegerField
      FieldName = 'dropoffkms'
    end
    object TransportCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object TransportCdstourcode: TStringField
      FieldName = 'tourcode'
      Size = 10
    end
    object TransportCdstourdate: TSQLTimeStampField
      FieldName = 'tourdate'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object TransportCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object TransportCdsac: TBooleanField
      FieldName = 'ac'
    end
    object TransportCdscreated: TSQLTimeStampField
      FieldName = 'created'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCdsnoofvehicles: TIntegerField
      FieldName = 'noofvehicles'
    end
    object TransportCdsnoofpax: TIntegerField
      FieldName = 'noofpax'
    end
    object TransportCdscancelledbypax: TSQLTimeStampField
      FieldName = 'cancelledbypax'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCdsbookedbypax: TSQLTimeStampField
      FieldName = 'bookedbypax'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCdsbookedon: TSQLTimeStampField
      FieldName = 'bookedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object TransportCdsweb_bookingstransport_id: TIntegerField
      FieldName = 'web_bookingstransport_id'
    end
    object TransportCdsquoted: TBCDField
      FieldName = 'quoted'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object TransportCdsnotes: TStringField
      FieldName = 'notes'
      Size = 255
    end
    object TransportCdsVehicleLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'VehicleLookup'
      LookupDataSet = BackOfficeDataModule.VehicleCds
      LookupKeyFields = 'Vehicles_id'
      LookupResultField = 'Vehicle'
      KeyFields = 'vehicles_id'
      Size = 30
      Lookup = True
    end
    object TransportCdsAgent_Cities_id: TIntegerField
      FieldName = 'Agent_Cities_id'
    end
    object TransportCdsAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'AgentLookup'
      LookupDataSet = BackOfficeDataModule.AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 30
      Lookup = True
    end
    object TransportCdsVoucherLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherLookup'
      LookupDataSet = BackOfficeDataModule.VoucherCDS
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
  end
  object TransportDsp: TDataSetProvider
    DataSet = TransportSds
    UpdateMode = upWhereKeyOnly
    Left = 352
    Top = 520
  end
  object TransportSds: TSQLDataSet
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
    Left = 336
    Top = 520
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
  object PrinAgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_AddressBook(2,'#39'OA'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 16
  end
  object PrinAgentDsp: TDataSetProvider
    DataSet = PrinAgentSds
    Left = 208
    Top = 16
  end
  object PrinAgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrinAgentDsp'
    Left = 224
    Top = 16
    object IntegerField3: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField4: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField5: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object PrinAgentDs: TDataSource
    DataSet = PrinAgentCds
    Left = 240
    Top = 16
  end
  object WebUsersSds: TSQLDataSet
    CommandText = 
      'SELECT Web_Users_id, CAST( (UserName +  '#39' - '#39' + CASE WHEN Male =' +
      ' 1 THEN '#39'Mr '#39' ELSE '#39'Ms '#39' END '#13#10' + FirstName + '#39' '#39' + LastName) AS' +
      ' VARCHAR) AS Web_User, UserName FROM Web_Users '#13#10'UNION ALL'#13#10'SELE' +
      'CT 0, CAST('#39'<None>'#39' AS VARCHAR),CAST('#39' '#39' AS VARCHAR)'#13#10'ORDER BY 3'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 256
    Top = 32
  end
  object WebUsersDsp: TDataSetProvider
    DataSet = WebUsersSds
    Left = 264
    Top = 32
  end
  object WebUsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WebUsersDsp'
    Left = 280
    Top = 32
    object WebUsersCdsweb_users_id: TIntegerField
      FieldName = 'web_users_id'
    end
    object WebUsersCdsweb_user: TStringField
      FieldName = 'web_user'
      Size = 30
    end
    object WebUsersCdsusername: TStringField
      FieldName = 'username'
      Size = 30
    end
  end
  object WebUsersDs: TDataSource
    DataSet = WebUsersCds
    Left = 296
    Top = 32
  end
  object CurrenciesSds: TSQLDataSet
    CommandText = 
      'SELECT Currencies_id, Currency, CurrencyCode'#13#10'FROM Currencies'#13#10'O' +
      'RDER BY Currency'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 352
    Top = 48
  end
  object CurrenciesDsp: TDataSetProvider
    DataSet = CurrenciesSds
    Left = 368
    Top = 48
  end
  object CurrenciesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrenciesDsp'
    Left = 384
    Top = 48
    object CurrenciesCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CurrenciesCdscurrency: TStringField
      FieldName = 'currency'
      Size = 50
    end
    object CurrenciesCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
  end
  object CurrenciesDs: TDataSource
    DataSet = CurrenciesCds
    Left = 400
    Top = 48
  end
  object CountriesDs: TDataSource
    DataSet = CountriesCds
    Left = 168
    Top = 56
  end
  object CountriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CountriesDsp'
    Left = 152
    Top = 56
    object CountriesCdscountries_id: TIntegerField
      FieldName = 'countries_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CountriesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
  end
  object CountriesDsp: TDataSetProvider
    DataSet = CountriesSds
    Left = 136
    Top = 56
  end
  object CountriesSds: TSQLDataSet
    CommandText = 'SELECT Countries_id, Country FROM Countries c'#13#10'ORDER BY Country'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 120
    Top = 56
  end
  object TourDs: TDataSource
    DataSet = TourCds
    Left = 518
    Top = 40
  end
  object TourCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourDsp'
    Left = 496
    Top = 40
    object TourCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
  end
  object TourSds: TSQLDataSet
    CommandText = 
      'SELECT TourCodes_id, TourCode FROM TourCodes'#13#10'ORDER BY TourCode'#13 +
      #10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 464
    Top = 40
  end
  object TourDsp: TDataSetProvider
    DataSet = TourSds
    Left = 480
    Top = 40
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT Cities_id, City, State, Country'#13#10'FROM Cities c '#13#10'LEFT JOI' +
      'N States s ON c.States_id = s.States_id'#13#10'LEFT JOIN Countries ON ' +
      'c.Countries_id = Countries.Countries_id'#13#10'ORDER BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 360
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 32
    Top = 360
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 48
    Top = 360
    object CitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object CitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
    object CitiesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object CitiesDS: TDataSource
    DataSet = CitiesCds
    Left = 72
    Top = 360
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 78
    Top = 389
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 54
    Top = 389
    object ClassCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object ClassCdsclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object ClassCdscode: TStringField
      FieldName = 'code'
      Size = 5
    end
    object ClassCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 30
    Top = 390
  end
  object ClassSds: TSQLDataSet
    CommandText = 
      'SELECT Class_id, class, code, tickets_id FROM class ORDER BY cla' +
      'ss'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 14
    Top = 389
  end
  object AgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_AddressBook(2,'#39'A'#39')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 13
    Top = 417
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 29
    Top = 417
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 52
    Top = 419
    object AgentCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AgentCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object AgentCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object AgentCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object AgentCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object AgentDS: TDataSource
    DataSet = AgentCds
    Left = 75
    Top = 418
  end
  object TktDs: TDataSource
    DataSet = TktCds
    Left = 164
    Top = 364
  end
  object TktSds: TSQLDataSet
    CommandText = 'SELECT Tickets_id, Details FROM Tickets ORDER BY Details'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 111
    Top = 364
  end
  object VoucherSds: TSQLDataSet
    CommandText = 
      'SELECT Vouchers_id, VoucherNo, YearRef FROM Vouchers'#13#10'ORDER BY V' +
      'oucherNo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 112
    Top = 390
  end
  object VoucherDsp: TDataSetProvider
    DataSet = VoucherSds
    Left = 128
    Top = 390
  end
  object VoucherCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherDsp'
    Left = 144
    Top = 390
    object VoucherCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VoucherCdsvoucherno: TIntegerField
      FieldName = 'voucherno'
    end
    object VoucherCdsyearref: TIntegerField
      FieldName = 'yearref'
    end
  end
  object VoucherDs: TDataSource
    DataSet = VoucherCds
    Left = 160
    Top = 390
  end
  object TktCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TktDsp'
    Left = 148
    Top = 365
    object TktCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object TktCdsDetails: TStringField
      FieldName = 'Details'
      Size = 15
    end
  end
  object TktDsp: TDataSetProvider
    Left = 127
    Top = 364
  end
  object TrainStationSds: TSQLDataSet
    CommandText = 'SELECT * FROM TrainStations ORDER BY Station'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 113
    Top = 420
  end
  object TrainStationDsp: TDataSetProvider
    DataSet = TrainStationSds
    Left = 129
    Top = 420
  end
  object TrainStationCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainStationDsp'
    Left = 145
    Top = 420
    object TrainStationCdstrainstations_id: TIntegerField
      FieldName = 'trainstations_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TrainStationCdsstation: TStringField
      FieldName = 'station'
      Size = 50
    end
    object TrainStationCdsrailwaycode: TStringField
      FieldName = 'railwaycode'
    end
    object TrainStationCdsstationname: TStringField
      FieldName = 'stationname'
      Size = 50
    end
    object TrainStationCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object TrainStationCdsin_use: TBooleanField
      FieldName = 'in_use'
    end
  end
  object TrainStationDs: TDataSource
    DataSet = TrainStationCds
    Left = 169
    Top = 420
  end
  object MealPlanCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MealPlanDsp'
    Left = 240
    Top = 400
    object MealPlanCdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object MealPlanCdsmealplan: TStringField
      FieldName = 'mealplan'
      Size = 15
    end
    object MealPlanCdsplan: TStringField
      FieldName = 'plan'
      FixedChar = True
      Size = 3
    end
  end
  object MealPlanDs: TDataSource
    DataSet = MealPlanCds
    Left = 264
    Top = 400
  end
  object MealPlanDsp: TDataSetProvider
    DataSet = MealPlanSds
    Left = 224
    Top = 400
  end
  object MealPlanSds: TSQLDataSet
    CommandText = 'SELECT * FROM MealPlans'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 400
  end
  object RoomTypeDs: TDataSource
    DataSet = RoomTypeCds
    Left = 256
    Top = 368
  end
  object RoomTypeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RoomTypeDsp'
    Left = 240
    Top = 368
    object RoomTypeCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object RoomTypeCdsroomtype: TStringField
      FieldName = 'roomtype'
      Size = 50
    end
    object RoomTypeCdsac: TBooleanField
      FieldName = 'ac'
    end
  end
  object RoomTypeDsp: TDataSetProvider
    DataSet = RoomTypeSds
    Left = 224
    Top = 368
  end
  object RoomTypeSds: TSQLDataSet
    CommandText = 'SELECT * FROM RoomTypes ORDER BY RoomType'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 368
  end
  object HotelSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_AddressBook(2,'#39'H'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 216
    Top = 432
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 232
    Top = 432
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 248
    Top = 432
    object IntegerField4: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField6: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField7: TStringField
      FieldName = 'City'
      Size = 100
    end
    object HotelCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object HoteDs: TDataSource
    DataSet = HotelCds
    Left = 264
    Top = 432
  end
  object VehicleSds: TSQLDataSet
    CommandText = 'SELECT Vehicles_id, Vehicle FROM Vehicles'#13#10'ORDER BY Vehicle'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 320
    Top = 376
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 336
    Top = 376
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 352
    Top = 376
    object VehicleCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VehicleCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
  end
  object VehicleDs: TDataSource
    DataSet = VehicleCds
    Left = 368
    Top = 376
  end
  object ServicesSds: TSQLDataSet
    CommandText = 
      'SELECT Services_id, Service, Description, Active FROM Services'#13#10 +
      'ORDER BY Service'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 320
    Top = 408
  end
  object ServicesDsp: TDataSetProvider
    DataSet = ServicesSds
    Left = 336
    Top = 408
  end
  object ServicesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ServicesDsp'
    Left = 352
    Top = 408
    object ServicesCdsServices_id: TIntegerField
      FieldName = 'Services_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ServicesCdsService: TStringField
      FieldName = 'Service'
      Size = 25
    end
    object ServicesCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object ServicesCdsActive: TBooleanField
      FieldName = 'Active'
    end
  end
  object ServicesDs: TDataSource
    DataSet = ServicesCds
    Left = 368
    Top = 408
  end
  object TransferTypesSds: TSQLDataSet
    CommandText = 'SELECT * FROM TransferTypes ORDER BY TransferCode'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 408
    Top = 376
  end
  object TransferTypesDsp: TDataSetProvider
    DataSet = TransferTypesSds
    Left = 424
    Top = 376
  end
  object TransferTypesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TransferTypesDsp'
    Left = 440
    Top = 376
    object TransferTypesCdstransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object TransferTypesCdstransfer: TStringField
      FieldName = 'transfer'
      Size = 25
    end
    object TransferTypesCdstransfercode: TStringField
      FieldName = 'transfercode'
      Size = 3
    end
  end
  object TransferTypesDs: TDataSource
    DataSet = TransferTypesCds
    Left = 456
    Top = 376
  end
  object PackagesSds: TSQLDataSet
    CommandText = 
      'SELECT p.Packages_id, p.Package, a.Addressbook_id, a.Organisatio' +
      'n '#13#10'FROM Packages p'#13#10'LEFT JOIN Addressbook a ON p.addressbook_id' +
      ' = a.addressbook_id'#13#10'ORDER BY p.Package'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 512
    Top = 368
  end
  object PackagesDsp: TDataSetProvider
    DataSet = PackagesSds
    Left = 528
    Top = 368
  end
  object PackagesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PackagesDsp'
    Left = 544
    Top = 368
    object PackagesCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object PackagesCdsPackage: TStringField
      FieldName = 'Package'
      Size = 50
    end
    object PackagesCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object PackagesCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
  end
  object PackagesDs: TDataSource
    DataSet = PackagesCds
    Left = 560
    Top = 368
  end
end
