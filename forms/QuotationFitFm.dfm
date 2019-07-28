object QuotationFitForm: TQuotationFitForm
  Left = 35
  Top = 2
  Width = 970
  Height = 675
  Caption = 'QuotationFitForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 962
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 41
    Align = alTop
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 1
    Height = 154
    Width = 962
    object Label1: TLabel
      Left = 12
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
      Width = 65
      Height = 13
      Caption = 'Lead Name'
    end
    object Label2: TLabel
      Left = 391
      Top = 36
      Width = 31
      Height = 13
      Caption = 'Email'
    end
    object Label4: TLabel
      Left = 10
      Top = 58
      Width = 57
      Height = 13
      Caption = 'Travellers'
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
      Left = 499
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
    object Label8: TLabel
      Left = 10
      Top = 83
      Width = 57
      Height = 13
      Caption = 'Meal Plan'
    end
    object Label9: TLabel
      Left = 482
      Top = 86
      Width = 72
      Height = 13
      Caption = 'Travel Mode'
    end
    object Label14: TLabel
      Left = 11
      Top = 105
      Width = 60
      Height = 13
      Caption = 'Arrives On'
    end
    object Label19: TLabel
      Left = 243
      Top = 105
      Width = 52
      Height = 13
      Caption = 'Arr. From'
    end
    object Label24: TLabel
      Left = 498
      Top = 108
      Width = 56
      Height = 13
      Caption = 'Flight No.'
    end
    object Label25: TLabel
      Left = 376
      Top = 58
      Width = 39
      Height = 13
      Caption = 'Triples'
    end
    object Label26: TLabel
      Left = 12
      Top = 129
      Width = 57
      Height = 13
      Caption = 'Car Agent'
    end
    object Label27: TLabel
      Left = 243
      Top = 129
      Width = 49
      Height = 13
      Caption = 'Hire City'
    end
    object Label35: TLabel
      Left = 413
      Top = 106
      Width = 12
      Height = 13
      Caption = 'at'
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
      Left = 719
      Top = 10
      Caption = 'Budget Acc'
      DataBinding.DataField = 'EconomyPax'
      DataBinding.DataSource = MasterDS
      TabOrder = 1
      Width = 93
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
      Width = 154
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 433
      Top = 34
      DataBinding.DataField = 'Email'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 5
      Width = 274
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 824
      Top = 10
      Caption = 'Time Constraint'
      DataBinding.DataField = 'TimePax'
      Enabled = False
      TabOrder = 21
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
      Left = 564
      Top = 57
      DataBinding.DataField = 'StartDate'
      DataBinding.DataSource = MasterDS
      Properties.ShowTime = False
      Style.Color = 16247513
      TabOrder = 10
      Width = 121
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 720
      Top = 35
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
      TabOrder = 22
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 643
      Top = 9
      DataBinding.DataField = 'QuotationNo'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 23
      Width = 63
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 79
      Top = 80
      DataBinding.DataField = 'MealPlans_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'mealplans_id'
      Properties.ListColumns = <
        item
          FieldName = 'plan'
        end>
      Properties.ListSource = BackOfficeDataModule.MealPlanDs
      Style.Color = 16247513
      TabOrder = 11
      Width = 152
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 240
      Top = 82
      Caption = 'Guide'
      DataBinding.DataField = 'Guide'
      DataBinding.DataSource = MasterDS
      TabOrder = 12
      Width = 81
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 564
      Top = 80
      DataBinding.DataField = 'Tickets_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'tickets_id'
      Properties.ListColumns = <
        item
          FieldName = 'details'
        end>
      Properties.ListSource = BackOfficeDataModule.TicketsDS
      Style.Color = 16247513
      TabOrder = 14
      Width = 121
    end
    object cxCreateitinerary: TcxButton
      Left = 717
      Top = 81
      Width = 114
      Height = 22
      Caption = 'Create Itinerary'
      TabOrder = 24
      OnClick = cxCreateitineraryClick
    end
    object cxDeleteItinerary: TcxButton
      Left = 838
      Top = 80
      Width = 114
      Height = 22
      Caption = 'Browse Itinerary'
      TabOrder = 25
      OnClick = cxDeleteItineraryClick
    end
    object cxDBCheckBox5: TcxDBCheckBox
      Left = 308
      Top = 82
      Caption = 'Entrance Fees'
      DataBinding.DataField = 'EntranceFees'
      DataBinding.DataSource = MasterDS
      TabOrder = 13
      Width = 117
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 79
      Top = 103
      DataBinding.DataField = 'DateOfArrival'
      DataBinding.DataSource = MasterDS
      Properties.ShowTime = False
      Style.Color = 16247513
      TabOrder = 15
      Width = 152
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 310
      Top = 103
      DataBinding.DataField = 'PlaceFrom'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 16
      Width = 98
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 564
      Top = 103
      DataBinding.DataField = 'FlightNo'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 18
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 239
      Top = 33
      DataBinding.DataField = 'PaxFirstName'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 4
      Width = 114
    end
    object cxDBTextEdit15: TcxDBTextEdit
      Left = 434
      Top = 57
      DataBinding.DataField = 'NumTriples'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 9
      Width = 42
    end
    object cxDBLookupComboBox6: TcxDBLookupComboBox
      Left = 79
      Top = 126
      DataBinding.DataField = 'CarHireAgents_id'
      DataBinding.DataSource = MasterDS
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          MinWidth = 200
          FieldName = 'Organisation'
        end
        item
          MinWidth = 100
          FieldName = 'City'
        end>
      Properties.ListSource = BackOfficeDataModule.AgentDS
      Style.Color = 16247513
      TabOrder = 19
      Width = 152
    end
    object cxDBLookupComboBox7: TcxDBLookupComboBox
      Left = 310
      Top = 126
      DataBinding.DataField = 'CarHireCities_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = CitiesDs
      Style.Color = 16247513
      TabOrder = 20
      Width = 123
    end
    object cxDBTimeEdit3: TcxDBTimeEdit
      Left = 432
      Top = 102
      DataBinding.DataField = 'ETA'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Properties.UseCtrlIncrement = True
      Style.Color = 16247513
      TabOrder = 17
      Width = 60
    end
  end
  object cxPageControl: TcxPageControl
    Left = 0
    Top = 195
    Width = 962
    Height = 252
    ActivePage = cxSightSeeingTab
    Align = alTop
    TabOrder = 2
    ClientRectBottom = 246
    ClientRectLeft = 3
    ClientRectRight = 956
    ClientRectTop = 26
    object cxAccommodationTab: TcxTabSheet
      Caption = 'Accommodation'
      ImageIndex = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 962
        Height = 125
        Align = alTop
        Color = 15451300
        ParentColor = False
        TabOrder = 0
        object Label28: TLabel
          Left = 20
          Top = 14
          Width = 22
          Height = 13
          Caption = 'City'
        end
        object Label29: TLabel
          Left = 20
          Top = 62
          Width = 65
          Height = 13
          Caption = 'Room Type'
        end
        object Label30: TLabel
          Left = 289
          Top = 62
          Width = 23
          Height = 13
          Caption = 'A/C'
        end
        object Label31: TLabel
          Left = 20
          Top = 88
          Width = 57
          Height = 13
          Caption = 'Meal Plan'
        end
        object Label32: TLabel
          Left = 289
          Top = 14
          Width = 31
          Height = 13
          Caption = 'Hotel'
        end
        object Label34: TLabel
          Left = 289
          Top = 38
          Width = 37
          Height = 13
          Caption = 'Nights'
        end
        object Label33: TLabel
          Left = 21
          Top = 38
          Width = 43
          Height = 13
          Caption = 'Date In'
        end
        object RoomTypeLcmb: TcxDBLookupComboBox
          Left = 92
          Top = 60
          DataBinding.DataField = 'RoomTypes_id'
          DataBinding.DataSource = AccDs
          Properties.ClearKey = 46
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'roomtypes_id'
          Properties.ListColumns = <
            item
              FieldName = 'roomtype'
            end>
          Properties.ListSource = RoomTypeDs
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 2
          Width = 161
        end
        object MealPlanLcmb: TcxDBLookupComboBox
          Left = 92
          Top = 86
          DataBinding.DataField = 'MealPlans_id'
          DataBinding.DataSource = AccDs
          Properties.ClearKey = 46
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'mealplans_id'
          Properties.ListColumns = <
            item
              FieldName = 'mealplan'
            end>
          Properties.ListSource = BackOfficeDataModule.MealPlanDs
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 4
          Width = 161
        end
        object ACchkbox: TcxDBCheckBox
          Left = 340
          Top = 60
          DataBinding.DataField = 'AC'
          DataBinding.DataSource = AccDs
          ParentColor = False
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 3
          Width = 21
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 340
          Top = 36
          DataBinding.DataField = 'Nights'
          DataBinding.DataSource = AccDs
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 1
          Width = 159
        end
        object HotelLcmb: TcxDBLookupComboBox
          Left = 340
          Top = 12
          DataBinding.DataField = 'HotelAddressbook_id'
          DataBinding.DataSource = AccDs
          Properties.ClearKey = 46
          Properties.DropDownWidth = 250
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              FieldName = 'Organisation'
            end>
          Properties.ListSource = HotelDs
          Properties.OnEditValueChanged = HotelLcmbPropertiesEditValueChanged
          Style.Color = 16247513
          TabOrder = 0
          Width = 158
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 92
          Top = 35
          DataBinding.DataField = 'DateIn'
          DataBinding.DataSource = AccDs
          Enabled = False
          Style.Color = 16247513
          TabOrder = 5
          Width = 159
        end
        object cxDBLookupComboBox17: TcxDBLookupComboBox
          Left = 91
          Top = 11
          DataBinding.DataField = 'HotelCities_id'
          DataBinding.DataSource = AccDs
          Enabled = False
          Properties.ClearKey = 46
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 6
          Width = 161
        end
      end
    end
    object cxTravelTab: TcxTabSheet
      Caption = 'Tickets'
      ImageIndex = 1
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 962
        Height = 105
        Align = alTop
        Color = 15451300
        ParentColor = False
        TabOrder = 0
        object Label15: TLabel
          Left = 20
          Top = 14
          Width = 28
          Height = 13
          Caption = 'Date'
        end
        object Label16: TLabel
          Left = 276
          Top = 38
          Width = 94
          Height = 13
          Caption = 'Travel Schedule'
        end
        object Label17: TLabel
          Left = 20
          Top = 62
          Width = 57
          Height = 13
          Caption = 'Departure'
        end
        object Label18: TLabel
          Left = 276
          Top = 62
          Width = 37
          Height = 13
          Caption = 'Arrival'
        end
        object Label20: TLabel
          Left = 276
          Top = 14
          Width = 53
          Height = 13
          Caption = 'From City'
        end
        object Label21: TLabel
          Left = 568
          Top = 14
          Width = 41
          Height = 13
          Caption = 'To City'
        end
        object Label22: TLabel
          Left = 20
          Top = 38
          Width = 32
          Height = 13
          Caption = 'Mode'
        end
        object Label23: TLabel
          Left = 568
          Top = 62
          Width = 31
          Height = 13
          Caption = 'Class'
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 97
          Top = 12
          DataBinding.DataField = 'TravelDate'
          DataBinding.DataSource = TicketDs
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 0
          Width = 159
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 380
          Top = 36
          DataBinding.DataField = 'flightno'
          DataBinding.DataSource = TicketDs
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 4
          Width = 280
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 380
          Top = 12
          DataBinding.DataField = 'from_cities_id'
          DataBinding.DataSource = TicketDs
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              MinWidth = 150
              FieldName = 'city'
            end
            item
              MinWidth = 150
              FieldName = 'state'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 1
          Width = 158
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 620
          Top = 12
          DataBinding.DataField = 'to_cities_id'
          DataBinding.DataSource = TicketDs
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              MinWidth = 150
              FieldName = 'city'
            end
            item
              MinWidth = 150
              FieldName = 'state'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 2
          Width = 158
        end
        object cxModeLCMB: TcxDBLookupComboBox
          Left = 97
          Top = 36
          DataBinding.DataField = 'tickets_id'
          DataBinding.DataSource = TicketDs
          Properties.ClearKey = 46
          Properties.DropDownWidth = 160
          Properties.KeyFieldNames = 'tickets_id'
          Properties.ListColumns = <
            item
              FieldName = 'details'
            end>
          Properties.ListSource = BackOfficeDataModule.TicketsDS
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cxModeLCMBPropertiesEditValueChanged
          Style.Color = 16247513
          TabOrder = 3
          Width = 159
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 620
          Top = 60
          DataBinding.DataField = 'Class_id'
          DataBinding.DataSource = TicketDs
          Properties.ClearKey = 46
          Properties.DropDownWidth = 160
          Properties.KeyFieldNames = 'Class_id'
          Properties.ListColumns = <
            item
              FieldName = 'class'
            end>
          Properties.ListSource = ClassDs
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 8
          Width = 158
        end
        object cxDBTimeEdit1: TcxDBTimeEdit
          Left = 97
          Top = 60
          DataBinding.DataField = 'ETD'
          DataBinding.DataSource = TicketDs
          Properties.ImmediatePost = True
          Properties.ReadOnly = False
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Style.Color = 16247513
          TabOrder = 6
          Width = 159
        end
        object cxDBTimeEdit2: TcxDBTimeEdit
          Left = 380
          Top = 60
          DataBinding.DataField = 'ETA'
          DataBinding.DataSource = TicketDs
          Properties.ImmediatePost = True
          Properties.ReadOnly = False
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Style.Color = 16247513
          TabOrder = 7
          Width = 158
        end
        object cxButton3: TcxButton
          Left = 662
          Top = 36
          Width = 114
          Height = 21
          Caption = 'Display Schedule'
          TabOrder = 5
          OnClick = cxButton3Click
        end
      end
    end
    object cxSightSeeingTab: TcxTabSheet
      Caption = 'Sight Seeing'
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 953
        Height = 159
        Align = alTop
        Color = 15451300
        ParentColor = False
        TabOrder = 0
        object Label38: TLabel
          Left = 20
          Top = 19
          Width = 23
          Height = 13
          Caption = 'Day'
        end
        object Label39: TLabel
          Left = 300
          Top = 17
          Width = 22
          Height = 13
          Caption = 'City'
        end
        object Label42: TLabel
          Left = 20
          Top = 42
          Width = 44
          Height = 13
          Caption = 'Service'
        end
        object ServiceLcmb: TcxDBLookupComboBox
          Left = 77
          Top = 39
          DataBinding.DataField = 'Services_id'
          DataBinding.DataSource = SightDs
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'Services_id'
          Properties.ListColumns = <
            item
              FieldName = 'description'
            end>
          Properties.ListSource = ServicesDs
          Properties.OnEditValueChanged = ServiceLcmbPropertiesEditValueChanged
          Style.Color = 16247513
          TabOrder = 1
          Width = 179
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 77
          Top = 15
          DataBinding.DataField = 'ServiceDate'
          DataBinding.DataSource = SightDs
          Enabled = False
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 0
          Width = 179
        end
        object ServiceCityLcmb: TcxDBLookupComboBox
          Left = 330
          Top = 13
          DataBinding.DataField = 'Cities_id'
          DataBinding.DataSource = SightDs
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Properties.OnEditValueChanged = cxDBLookupComboBox6PropertiesEditValueChanged
          Style.Color = 16247513
          TabOrder = 2
          Width = 179
        end
        object SightSeeingGB: TGroupBox
          Left = 300
          Top = 34
          Width = 291
          Height = 117
          Color = 15451300
          ParentColor = False
          TabOrder = 3
          object Label51: TLabel
            Left = 43
            Top = 46
            Width = 34
            Height = 13
            Caption = 'Guide'
          end
          object Label52: TLabel
            Left = 43
            Top = 22
            Width = 55
            Height = 13
            Caption = 'Transport'
          end
          object Label53: TLabel
            Left = 182
            Top = 22
            Width = 83
            Height = 13
            Caption = 'Entrance Fees'
          end
          object Label54: TLabel
            Left = 182
            Top = 46
            Width = 81
            Height = 13
            Caption = 'A/C Transport'
            Visible = False
          end
          object Label55: TLabel
            Left = 17
            Top = 71
            Width = 44
            Height = 13
            Caption = 'Timings'
          end
          object cxDBCheckBox4: TcxDBCheckBox
            Left = 15
            Top = 18
            DataBinding.DataField = 'transport'
            DataBinding.DataSource = SightDs
            ParentColor = False
            Style.Color = 16247513
            TabOrder = 0
            Width = 22
          end
          object cxDBCheckBox7: TcxDBCheckBox
            Left = 154
            Top = 18
            DataBinding.DataField = 'EntranceFees'
            DataBinding.DataSource = SightDs
            ParentColor = False
            Style.Color = 16247513
            TabOrder = 1
            Width = 22
          end
          object cxDBCheckBox8: TcxDBCheckBox
            Left = 154
            Top = 42
            DataBinding.DataField = 'AC'
            DataBinding.DataSource = SightDs
            ParentColor = False
            Style.Color = 16247513
            TabOrder = 3
            Visible = False
            Width = 22
          end
          object cxDBTimeEdit4: TcxDBTimeEdit
            Left = 72
            Top = 67
            DataBinding.DataField = 'StartTime'
            DataBinding.DataSource = SightDs
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Style.Color = 16247513
            TabOrder = 4
            Width = 65
          end
          object cxDBCheckBox9: TcxDBCheckBox
            Left = 16
            Top = 42
            DataBinding.DataField = 'Guide'
            DataBinding.DataSource = SightDs
            ParentColor = False
            Style.Color = 16247513
            TabOrder = 2
            Width = 22
          end
          object cxButton5: TcxButton
            Left = 138
            Top = 64
            Width = 41
            Height = 25
            Hint = 'Previous Week'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = cxButton5Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300130000031
              00333773F77777FF7733331000909000133333377737F777FF33330098F0F890
              0333337733F733F77F33370980FFF08907333373373F373373F33099FFFFFFF9
              903337F3F373F33FF7F33090F000FF00903337F73337F37737F3B099FFF0FFF9
              90B3373F33F7F3F33733070980F0F0890703337FF737F7337F33BB0098F0F890
              0BB33F77FF3733377FFF000009999900000377777FFFFF77777F088700000008
              77037F3377777773337F088887707888870373F3337773F33373B078800B0088
              70B3373FF733373FF73303700BBBBB007303337773F3F3777F33330BB0B0B0BB
              033333733737F73F73F330BB03B0B30BB0333733733733733733}
            NumGlyphs = 2
          end
        end
      end
    end
    object cxTransferTab: TcxTabSheet
      Caption = 'Transfer'
      ImageIndex = 3
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 962
        Height = 219
        Align = alTop
        Color = 15451300
        ParentColor = False
        TabOrder = 0
        object Label71: TLabel
          Left = 20
          Top = 19
          Width = 23
          Height = 13
          Caption = 'Day'
        end
        object Label72: TLabel
          Left = 20
          Top = 67
          Width = 22
          Height = 13
          Caption = 'City'
        end
        object Label73: TLabel
          Left = 286
          Top = 66
          Width = 31
          Height = 13
          Caption = 'Hotel'
        end
        object Label74: TLabel
          Left = 286
          Top = 19
          Width = 69
          Height = 13
          Caption = 'Service City'
        end
        object Label75: TLabel
          Left = 20
          Top = 42
          Width = 44
          Height = 13
          Caption = 'Service'
        end
        object Label76: TLabel
          Left = 286
          Top = 41
          Width = 34
          Height = 13
          Caption = 'Agent'
        end
        object cxDBLookupComboBox13: TcxDBLookupComboBox
          Left = 364
          Top = 39
          DataBinding.DataField = 'addressbook_id'
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'addressbook_id'
          Properties.ListColumns = <
            item
              FieldName = 'organisation'
            end>
          Style.Color = 16247513
          TabOrder = 3
          Width = 179
        end
        object cxDBLookupComboBox14: TcxDBLookupComboBox
          Left = 77
          Top = 39
          DataBinding.DataField = 'services_id'
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'Services_id'
          Properties.ListColumns = <
            item
              FieldName = 'Description'
            end>
          Style.Color = 16247513
          TabOrder = 2
          Width = 179
        end
        object cxDBTextEdit24: TcxDBTextEdit
          Left = 77
          Top = 15
          DataBinding.DataField = 'day'
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 0
          Width = 179
        end
        object cxLookupComboBox6: TcxLookupComboBox
          Left = 364
          Top = 15
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.ServiceCitiesDS
          Style.Color = 16247513
          TabOrder = 1
          Width = 179
        end
        object cxLookupComboBox7: TcxLookupComboBox
          Left = 77
          Top = 64
          Properties.KeyFieldNames = 'Cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'City'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Style.Color = 16247513
          TabOrder = 4
          Width = 179
        end
        object cxDBLookupComboBox15: TcxDBLookupComboBox
          Left = 364
          Top = 63
          DataBinding.DataField = 'hotel_addressbook_id'
          Properties.ClearKey = 46
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
          Style.Color = 16247513
          TabOrder = 5
          Width = 179
        end
        object GroupBox6: TGroupBox
          Left = 8
          Top = 94
          Width = 405
          Height = 118
          Caption = ' Transfers '
          Color = 15451300
          ParentColor = False
          TabOrder = 6
          object Label78: TLabel
            Left = 16
            Top = 22
            Width = 80
            Height = 13
            Caption = 'Transfer Type'
          end
          object Label79: TLabel
            Left = 16
            Top = 44
            Width = 71
            Height = 13
            Caption = 'Airline/Train'
          end
          object Label80: TLabel
            Left = 16
            Top = 67
            Width = 33
            Height = 13
            Caption = 'Place'
          end
          object Label81: TLabel
            Left = 265
            Top = 69
            Width = 44
            Height = 13
            Caption = 'Timings'
          end
          object Label82: TLabel
            Left = 43
            Top = 94
            Width = 55
            Height = 13
            Caption = 'Transport'
          end
          object Label83: TLabel
            Left = 147
            Top = 96
            Width = 81
            Height = 13
            Caption = 'A/C Transport'
          end
          object cxDBTextEdit25: TcxDBTextEdit
            Left = 99
            Top = 42
            DataBinding.DataField = 'flight'
            Style.Color = 16247513
            TabOrder = 2
            Width = 294
          end
          object cxDBLookupComboBox16: TcxDBLookupComboBox
            Left = 99
            Top = 18
            DataBinding.DataField = 'transfertypes_id'
            Properties.ClearKey = 46
            Properties.DropDownWidth = 300
            Properties.KeyFieldNames = 'transfertypes_id'
            Properties.ListColumns = <
              item
                FieldName = 'transfer'
              end>
            Properties.ListSource = BackOfficeDataModule.TransferTypesDS
            Style.Color = 16247513
            TabOrder = 0
            Width = 158
          end
          object cxDBTextEdit26: TcxDBTextEdit
            Left = 99
            Top = 67
            DataBinding.DataField = 'place'
            Style.Color = 16247513
            TabOrder = 3
            Width = 158
          end
          object cxButton6: TcxButton
            Left = 263
            Top = 19
            Width = 129
            Height = 20
            Hint = 'Displays only when Tickets are entered'
            Caption = 'Travel Schedule'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object cxDBTimeEdit7: TcxDBTimeEdit
            Left = 320
            Top = 66
            DataBinding.DataField = 'startingtime'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Style.Color = 16247513
            TabOrder = 4
            Width = 65
          end
          object cxDBCheckBox11: TcxDBCheckBox
            Left = 15
            Top = 90
            DataBinding.DataField = 'transport'
            ParentColor = False
            Style.Color = 16247513
            TabOrder = 5
            Width = 22
          end
          object cxDBCheckBox12: TcxDBCheckBox
            Left = 119
            Top = 92
            DataBinding.DataField = 'ac'
            ParentColor = False
            Style.Color = 16247513
            TabOrder = 6
            Width = 22
          end
        end
      end
    end
    object cxTransportTab: TcxTabSheet
      Caption = 'Transport'
      ImageIndex = 4
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 962
        Height = 142
        Align = alTop
        Color = 15451300
        ParentColor = False
        TabOrder = 0
        object Label56: TLabel
          Left = 8
          Top = 14
          Width = 54
          Height = 13
          Caption = 'From Day'
        end
        object Label57: TLabel
          Left = 646
          Top = 14
          Width = 64
          Height = 13
          Caption = 'From Place'
        end
        object Label58: TLabel
          Left = 206
          Top = 14
          Width = 59
          Height = 13
          Caption = 'From Time'
        end
        object Label59: TLabel
          Left = 205
          Top = 38
          Width = 47
          Height = 13
          Caption = 'To Time'
        end
        object Label60: TLabel
          Left = 8
          Top = 86
          Width = 62
          Height = 41
          AutoSize = False
          Caption = 'Kms to  Travel by Pax'
          WordWrap = True
        end
        object Label61: TLabel
          Left = 417
          Top = 14
          Width = 53
          Height = 13
          Caption = 'From City'
        end
        object Label62: TLabel
          Left = 416
          Top = 38
          Width = 41
          Height = 13
          Caption = 'To City'
        end
        object Label63: TLabel
          Left = 8
          Top = 38
          Width = 42
          Height = 13
          Caption = 'To Day'
        end
        object Label64: TLabel
          Left = 647
          Top = 86
          Width = 50
          Height = 28
          AutoSize = False
          Caption = 'Drop Off Days'
          WordWrap = True
        end
        object Label68: TLabel
          Left = 273
          Top = 86
          Width = 55
          Height = 28
          AutoSize = False
          Caption = 'Drop Off Kms'
          WordWrap = True
        end
        object Label69: TLabel
          Left = 647
          Top = 38
          Width = 52
          Height = 13
          Caption = 'To Place'
        end
        object Label70: TLabel
          Left = 647
          Top = 62
          Width = 23
          Height = 13
          Caption = 'A/C'
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 717
          Top = 12
          DataBinding.DataField = 'fromplace'
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 3
          Width = 149
        end
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 717
          Top = 36
          DataBinding.DataField = 'toplace'
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 7
          Width = 149
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 75
          Top = 84
          DataBinding.DataField = 'kms'
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 9
          Width = 158
        end
        object cxDBTextEdit20: TcxDBTextEdit
          Left = 337
          Top = 84
          DataBinding.DataField = 'dropoffkms'
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 10
          Width = 56
        end
        object cxDBLookupComboBox10: TcxDBLookupComboBox
          Left = 474
          Top = 12
          DataBinding.DataField = 'from_cities_id'
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 2
          Width = 158
        end
        object cxDBLookupComboBox11: TcxDBLookupComboBox
          Left = 474
          Top = 36
          DataBinding.DataField = 'to_cities_id'
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 6
          Width = 158
        end
        object cxDBTimeEdit5: TcxDBTimeEdit
          Left = 271
          Top = 12
          DataBinding.DataField = 'fromtime'
          Properties.ReadOnly = False
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Style.Color = 16247513
          TabOrder = 1
          Width = 121
        end
        object cxDBTimeEdit6: TcxDBTimeEdit
          Left = 272
          Top = 36
          DataBinding.DataField = 'totime'
          Properties.ReadOnly = False
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Style.Color = 16247513
          TabOrder = 5
          Width = 120
        end
        object cxDBTextEdit21: TcxDBTextEdit
          Left = 717
          Top = 84
          DataBinding.DataField = 'dropoffdays'
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 12
          Width = 56
        end
        object cxDBCheckBox10: TcxDBCheckBox
          Left = 717
          Top = 60
          DataBinding.DataField = 'ac'
          ParentColor = False
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 8
          Width = 21
        end
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 74
          Top = 12
          DataBinding.DataField = 'fromday'
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 0
          Width = 123
        end
        object cxDBTextEdit23: TcxDBTextEdit
          Left = 74
          Top = 36
          DataBinding.DataField = 'today'
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 4
          Width = 123
        end
        object cxDistanceButton: TcxButton
          Left = 400
          Top = 85
          Width = 88
          Height = 19
          Caption = 'Get Distance'
          TabOrder = 11
        end
      end
    end
    object cxQuestionsTab: TcxTabSheet
      Caption = 'Questions'
      ImageIndex = 5
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 962
        Height = 276
        TabOrder = 0
        object cxStartCityGB: TcxGroupBox
          Left = 8
          Top = 4
          TabOrder = 0
          Height = 41
          Width = 393
          object Label11: TLabel
            Left = 16
            Top = 16
            Width = 116
            Height = 13
            Caption = 'Choose Starting City'
          end
          object cxStartCityLCMB: TcxLookupComboBox
            Left = 141
            Top = 14
            Properties.KeyFieldNames = 'cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'city'
              end>
            Properties.ListSource = BackOfficeDataModule.CitiesDS
            Style.Color = 16247513
            TabOrder = 0
            Width = 244
          end
        end
        object cxNextCityGB: TcxGroupBox
          Left = 8
          Top = 45
          TabOrder = 1
          Height = 41
          Width = 393
          object Label12: TLabel
            Left = 16
            Top = 16
            Width = 98
            Height = 13
            Caption = 'Choose Next City'
          end
          object cxNextCityLCMB: TcxLookupComboBox
            Left = 141
            Top = 14
            Properties.KeyFieldNames = 'cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'city'
              end>
            Properties.ListSource = BackOfficeDataModule.CitiesDS
            Style.Color = 16247513
            TabOrder = 0
            Width = 244
          end
        end
        object cxSightSeeingGB: TcxGroupBox
          Left = 8
          Top = 85
          TabOrder = 2
          Height = 41
          Width = 393
          object Label13: TLabel
            Left = 16
            Top = 16
            Width = 178
            Height = 13
            Caption = 'Do you wish to do sightseeing?'
          end
          object cxSightSeeingCmb: TcxComboBox
            Left = 208
            Top = 13
            Properties.Items.Strings = (
              'Yes'
              'No')
            Style.Color = 16247513
            TabOrder = 0
            Text = 'Yes'
            Width = 121
          end
        end
        object cxHireCarGB: TcxGroupBox
          Left = 8
          Top = 125
          TabOrder = 3
          Height = 41
          Width = 601
          object cxHireCarCkb: TcxCheckBox
            Left = 8
            Top = 13
            Caption = 'I would like to hire a car here'
            TabOrder = 0
            Width = 585
          end
        end
        object cxReqNextCityGB: TcxGroupBox
          Left = 9
          Top = 165
          TabOrder = 4
          Height = 41
          Width = 393
          object cxReqNextCityCkb: TcxCheckBox
            Left = 0
            Top = 13
            Caption = 'I would like to travel to another city from here'
            TabOrder = 0
            Width = 353
          end
        end
      end
    end
    object cxSummaryTab: TcxTabSheet
      Caption = 'Summary'
      ImageIndex = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 600
    Width = 962
    Height = 41
    Align = alBottom
    TabOrder = 3
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
      Visible = False
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
      Width = 137
    end
    object cxPrevButton: TcxButton
      Left = 384
      Top = 9
      Width = 67
      Height = 25
      Caption = 'Prev'
      TabOrder = 5
      Visible = False
    end
    object cxNextButton: TcxButton
      Left = 456
      Top = 9
      Width = 67
      Height = 25
      Caption = 'Next'
      TabOrder = 6
      Visible = False
      OnClick = cxNextButtonClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 447
    Width = 962
    Height = 153
    Align = alClient
    TabOrder = 4
    object QuoLinesGrid: TcxGrid
      Left = 1
      Top = 1
      Width = 960
      Height = 151
      Align = alClient
      TabOrder = 0
      object QuoLinesGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = QuoLinesDs
        DataController.KeyFieldNames = 'QuoLines_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = QuoLinesGridDBTableView1Cost
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Background = BackOfficeDataModule.cxStyleBackground
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        Styles.Header = BackOfficeDataModule.cxStyleHeader
        object QuoLinesGridDBTableView1QuoLines_id: TcxGridDBColumn
          DataBinding.FieldName = 'QuoLines_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object QuoLinesGridDBTableView1Quotations_id: TcxGridDBColumn
          DataBinding.FieldName = 'Quotations_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object QuoLinesGridDBTableView1LineNum: TcxGridDBColumn
          Caption = 'Sr. No.'
          DataBinding.FieldName = 'LineNum'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object QuoLinesGridDBTableView1QuoDate: TcxGridDBColumn
          Caption = 'Date'
          DataBinding.FieldName = 'QuoDate'
          PropertiesClassName = 'TcxDateEditProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 97
        end
        object QuoLinesGridDBTableView1QuoTime: TcxGridDBColumn
          Caption = 'Time'
          DataBinding.FieldName = 'QuoTime'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.TimeFormat = tfHourMin
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 56
        end
        object QuoLinesGridDBTableView1City: TcxGridDBColumn
          DataBinding.FieldName = 'City'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 81
        end
        object QuoLinesGridDBTableView1Type: TcxGridDBColumn
          Caption = 'Type'
          DataBinding.FieldName = 'TrsType'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object QuoLinesGridDBTableView1Car: TcxGridDBColumn
          DataBinding.FieldName = 'Car'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 60
        end
        object QuoLinesGridDBTableView1Cost: TcxGridDBColumn
          DataBinding.FieldName = 'Cost'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,##0.00;(#,##0.00)'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 134
        end
        object QuoLinesGridDBTableView1QuoStringPax: TcxGridDBColumn
          Caption = 'String For Pax'
          DataBinding.FieldName = 'QuoStringPax'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 176
        end
        object QuoLinesGridDBTableView1QuoString: TcxGridDBColumn
          Caption = 'String for Costing'
          DataBinding.FieldName = 'QuoString'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 252
        end
      end
      object QuoLinesGridLevel1: TcxGridLevel
        GridView = QuoLinesGridDBTableView1
      end
    end
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
    AfterScroll = MasterCdsAfterScroll
    Left = 920
    Top = 32
    object MasterCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object MasterCdsMealPlans_id: TIntegerField
      FieldName = 'MealPlans_id'
    end
    object MasterCdsGuide: TBooleanField
      FieldName = 'Guide'
    end
    object MasterCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object MasterCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object MasterCdsEntranceFees: TBooleanField
      FieldName = 'EntranceFees'
    end
    object MasterCdsDateOfArrival: TSQLTimeStampField
      FieldName = 'DateOfArrival'
    end
    object MasterCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 30
    end
    object MasterCdsPlaceFrom: TStringField
      FieldName = 'PlaceFrom'
      Size = 30
    end
    object MasterCdsPaxFirstName: TStringField
      FieldName = 'PaxFirstName'
      Size = 50
    end
    object MasterCdsNumTriples: TIntegerField
      FieldName = 'NumTriples'
    end
    object MasterCdsCarHireAgents_id: TIntegerField
      FieldName = 'CarHireAgents_id'
    end
    object MasterCdsCarHireCities_id: TIntegerField
      FieldName = 'CarHireCities_id'
    end
    object MasterCdsETA: TSQLTimeStampField
      FieldName = 'ETA'
      DisplayFormat = 'HH:mm'
      EditMask = '!90:00;1;_'
    end
  end
  object AccSds: TSQLDataSet
    CommandText = 'QuoAccommodation'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 832
    Top = 184
  end
  object AccDsp: TDataSetProvider
    DataSet = AccSds
    UpdateMode = upWhereKeyOnly
    Left = 864
    Top = 184
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
    Left = 896
    Top = 184
    object AccCdsQuoAccommodation_id: TIntegerField
      FieldName = 'QuoAccommodation_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  end
  object AccDs: TDataSource
    DataSet = AccCds
    Left = 928
    Top = 184
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM fn_Addressbook (2,'#39'H'#39')'#13#10'WHERE Cities_id = :Cities_' +
      'id'
    DataSource = BackOfficeDataModule.CitiesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 504
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 32
    Top = 504
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.CitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    Left = 40
    Top = 504
    object HotelCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object HotelCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object HotelCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object HotelCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 56
    Top = 504
  end
  object RoomTypeSds: TSQLDataSet
    CommandText = 
      'SELECT RoomTypes_id, RoomType, Addressbook_id, AC  FROM dbo.fn_G' +
      'etHotelRoomTypes(:addressbook_id)'
    DataSource = HotelDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 472
  end
  object RoomTypeDsp: TDataSetProvider
    DataSet = RoomTypeSds
    Left = 32
    Top = 472
  end
  object RoomTypeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = HotelDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'RoomTypeDsp'
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    Left = 40
    Top = 472
    object RoomTypeCdsRoomTypes_id: TIntegerField
      FieldName = 'RoomTypes_id'
    end
    object RoomTypeCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 100
    end
    object RoomTypeCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object RoomTypeCdsAC: TBooleanField
      FieldName = 'AC'
    end
  end
  object RoomTypeDs: TDataSource
    DataSet = RoomTypeCds
    Left = 56
    Top = 472
  end
  object SightSds: TSQLDataSet
    CommandText = 'QuoServices'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 832
    Top = 216
  end
  object SightDsp: TDataSetProvider
    DataSet = SightSds
    UpdateMode = upWhereKeyOnly
    Left = 864
    Top = 216
  end
  object SightCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'SightDsp'
    AfterInsert = SightCdsAfterInsert
    BeforePost = SightCdsBeforePost
    AfterPost = SightCdsAfterPost
    Left = 896
    Top = 216
    object SightCdsQuoServices_id: TIntegerField
      FieldName = 'QuoServices_id'
    end
    object SightCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object SightCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object SightCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object SightCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object SightCdsStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
    end
    object SightCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object SightCdsGuide: TBooleanField
      FieldName = 'Guide'
    end
    object SightCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
    object SightCdsSightSeeing: TBooleanField
      FieldName = 'SightSeeing'
    end
    object SightCdsPlace: TStringField
      FieldName = 'Place'
      Size = 50
    end
    object SightCdsTransferTypes_id: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object SightCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object SightCdsServiceDay: TIntegerField
      FieldName = 'ServiceDay'
    end
    object SightCdsServiceDate: TSQLTimeStampField
      FieldName = 'ServiceDate'
    end
    object SightCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object SightCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
    end
    object SightCdsMasters_id: TStringField
      FieldName = 'Masters_id'
      Size = 10
    end
    object SightCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 30
    end
    object SightCdsstatus: TIntegerField
      FieldName = 'status'
    end
    object SightCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
    object SightCdsEntranceFees: TBooleanField
      FieldName = 'EntranceFees'
    end
  end
  object SightDs: TDataSource
    DataSet = SightCds
    Left = 928
    Top = 216
  end
  object ServicesSds: TSQLDataSet
    CommandText = 
      'SELECT services_id, description, addressbook_id, cities_id, '#13#10'  ' +
      'StartTime'#13#10'FROM services'#13#10'WHERE Cities_id = :Cities_id'#13#10'AND Tran' +
      'sfer = 0'#13#10'AND Private = 0'#13#10'AND Active = 1'
    DataSource = BackOfficeDataModule.ServiceCitiesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 434
  end
  object ServicesDsp: TDataSetProvider
    DataSet = ServicesSds
    Left = 32
    Top = 434
  end
  object ServicesCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.CitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ServicesDsp'
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    Left = 48
    Top = 434
    object ServicesCdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object ServicesCdsdescription: TStringField
      FieldName = 'description'
      Size = 100
    end
    object ServicesCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object ServicesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object ServicesCdsStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
    end
  end
  object ServicesDs: TDataSource
    DataSet = ServicesCds
    Left = 64
    Top = 434
  end
  object TicketSds: TSQLDataSet
    CommandText = 'QuoTickets'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 832
    Top = 248
  end
  object TicketDsp: TDataSetProvider
    DataSet = TicketSds
    UpdateMode = upWhereKeyOnly
    Left = 864
    Top = 248
  end
  object TicketCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'TicketDsp'
    AfterInsert = TicketCdsAfterInsert
    BeforePost = TicketCdsBeforePost
    AfterPost = TicketCdsAfterPost
    Left = 896
    Top = 248
    object TicketCdsQuoTickets_id: TIntegerField
      FieldName = 'QuoTickets_id'
    end
    object TicketCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object TicketCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object TicketCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object TicketCdsTickets_id: TIntegerField
      FieldName = 'Tickets_id'
    end
    object TicketCdsNoOfTickets: TIntegerField
      FieldName = 'NoOfTickets'
    end
    object TicketCdsTravelDate: TSQLTimeStampField
      FieldName = 'TravelDate'
    end
    object TicketCdsFrom_Cities_id: TIntegerField
      FieldName = 'From_Cities_id'
    end
    object TicketCdsTo_Cities_id: TIntegerField
      FieldName = 'To_Cities_id'
    end
    object TicketCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 40
    end
    object TicketCdsFrom_TrainStations_id: TIntegerField
      FieldName = 'From_TrainStations_id'
    end
    object TicketCdsTo_TrainStations_id: TIntegerField
      FieldName = 'To_TrainStations_id'
    end
    object TicketCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object TicketCdsETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object TicketCdsETA: TSQLTimeStampField
      FieldName = 'ETA'
    end
    object TicketCdsTravelDay: TIntegerField
      FieldName = 'TravelDay'
    end
    object TicketCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
    end
    object TicketCdsMasters_id: TStringField
      FieldName = 'Masters_id'
      Size = 10
    end
    object TicketCdsstatus: TIntegerField
      FieldName = 'status'
    end
    object TicketCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object TicketCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
  end
  object TicketDs: TDataSource
    DataSet = TicketCds
    Left = 928
    Top = 248
  end
  object QuoLinesSds: TSQLDataSet
    CommandText = 
      'SELECT QuoLines_id, Quotations_id, LineNum, QuoDate, '#13#10'   c.City' +
      ', '#13#10'   CASE TrsType WHEN 1 THEN '#39'Travel'#39' WHEN 2 THEN '#39'Acc'#39' WHEN ' +
      '3 THEN '#39'Sight'#39' WHEN 4 THEN '#39'Trsf'#39' END AS TrsType,'#13#10'   QuoString,' +
      #13#10'   CASE CarMode WHEN 0 THEN '#39#39' WHEN 1 THEN '#39'Car'#39' END AS Car,'#13#10 +
      '   Cost, QuoTime, QuoStringPax, NewCar'#13#10'FROM QuoLines q LEFT JOI' +
      'N Cities c ON q.Cities_id = c.Cities_id'#13#10'ORDER BY QuoLines_id'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 408
    Top = 456
  end
  object QuoLinesDsp: TDataSetProvider
    DataSet = QuoLinesSds
    Left = 432
    Top = 456
  end
  object QuoLinesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'QuoLinesDsp'
    Left = 448
    Top = 456
    object QuoLinesCdsQuoLines_id: TIntegerField
      FieldName = 'QuoLines_id'
    end
    object QuoLinesCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object QuoLinesCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
    object QuoLinesCdsQuoDate: TSQLTimeStampField
      FieldName = 'QuoDate'
      DisplayFormat = 'dd/mm/yyyy ddd'
    end
    object QuoLinesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object QuoLinesCdsTrsType: TStringField
      FieldName = 'TrsType'
      Size = 6
    end
    object QuoLinesCdsQuoString: TStringField
      FieldName = 'QuoString'
      Size = 254
    end
    object QuoLinesCdsCar: TStringField
      FieldName = 'Car'
      Size = 3
    end
    object QuoLinesCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object QuoLinesCdsQuoTime: TSQLTimeStampField
      FieldName = 'QuoTime'
      DisplayFormat = 'HH:mm'
    end
    object QuoLinesCdsQuoStringPax: TStringField
      FieldName = 'QuoStringPax'
      Size = 254
    end
    object QuoLinesCdsNewCar: TIntegerField
      FieldName = 'NewCar'
    end
  end
  object QuoLinesDs: TDataSource
    DataSet = QuoLinesCds
    Left = 464
    Top = 456
  end
  object TransportSds: TSQLDataSet
    CommandText = 'QuoTransport'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 832
    Top = 280
  end
  object TransportDsp: TDataSetProvider
    DataSet = TransportSds
    UpdateMode = upWhereKeyOnly
    Left = 864
    Top = 280
  end
  object TransportCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'TransportDsp'
    BeforePost = TransportCdsBeforePost
    AfterPost = TransportCdsAfterPost
    Left = 896
    Top = 280
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
    object TransportCdsTransportDay: TIntegerField
      FieldName = 'TransportDay'
    end
    object TransportCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
    object TransportCdsstatus: TIntegerField
      FieldName = 'status'
    end
    object TransportCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
  end
  object TrasnportDs: TDataSource
    DataSet = TransportCds
    Left = 928
    Top = 280
  end
  object ClassSds: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT Class_id, class, tickets_id FROM class WHERE tickets_id =' +
      ' :tickets_id ORDER BY class'#13#10
    DataSource = BackOfficeDataModule.TicketsDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'tickets_id'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 656
    Top = 264
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 670
    Top = 265
  end
  object ClassCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'tickets_id'
    MasterFields = 'tickets_id'
    MasterSource = BackOfficeDataModule.TicketsDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 688
    Top = 264
    object ClassCdsClass_id: TIntegerField
      FieldName = 'Class_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClassCdsclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object ClassCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 700
    Top = 264
  end
  object PopupMenu1: TPopupMenu
    Left = 592
    Top = 477
    object ComputeCarCosts1: TMenuItem
      Caption = 'Compute Car Cost'
      OnClick = ComputeCarCosts1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object DisplayCostTrace1: TMenuItem
      Caption = 'Display Cost Trace'
      OnClick = DisplayCostTrace1Click
    end
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'WHERE c.Cities_id IN ' +
      '(SELECT From_Cities_id FROM Distances)'#13#10'ORDER BY c.City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 336
    Top = 168
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 350
    Top = 169
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 368
    Top = 168
    object CitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CitiesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 380
    Top = 168
  end
end
