inherited QuoCitywiseForm: TQuoCitywiseForm
  Left = 223
  Top = 8
  Width = 979
  Height = 708
  Caption = 'Quotations - City-wise route'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 963
    Height = 29
    object cxTrialLabel: TcxLabel
      Left = 432
      Top = 3
      Caption = 'TRIAL AREA'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  inherited Panel2: TPanel
    Top = 622
    Width = 963
    Height = 48
    object DBText1: TDBText [0]
      Left = 891
      Top = 30
      Width = 65
      Height = 17
      DataField = 'Quotations_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    inherited cxCloseBtn: TcxButton
      Left = 890
      Top = 5
    end
    object cxButton1: TcxButton
      Left = 5
      Top = 5
      Width = 65
      Height = 25
      Caption = 'Utilities'
      TabOrder = 1
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
    object cxButtonAutoCreate: TcxButton
      Left = 77
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Auto Create'
      TabOrder = 2
      OnClick = cxButtonAutoCreateClick
    end
    object cxButtonCheckIntegrity: TcxButton
      Left = 154
      Top = 5
      Width = 90
      Height = 25
      Caption = 'Check Integrity'
      TabOrder = 3
      OnClick = cxButtonCheckIntegrityClick
    end
    object cxSearchGB: TcxRadioGroup
      Left = 549
      Top = 1
      Caption = 'Search'
      Properties.Columns = 5
      Properties.Items = <
        item
          Caption = 'Ref'
        end
        item
          Caption = 'No.'
        end
        item
          Caption = 'Name'
        end
        item
          Caption = 'ID'
        end
        item
          Caption = 'Code'
        end>
      ItemIndex = 0
      TabOrder = 4
      Height = 33
      Width = 256
    end
    object cxSearchEdit: TcxTextEdit
      Left = 811
      Top = 9
      TabOrder = 5
      OnKeyPress = cxSearchEditKeyPress
      Width = 76
    end
    object cxButtonSendMail: TcxButton
      Left = 254
      Top = 5
      Width = 70
      Height = 25
      Caption = 'Send Mails'
      TabOrder = 6
      OnClick = cxButtonSendMailClick
    end
    object cxButtonConfStatus: TcxButton
      Left = 325
      Top = 5
      Width = 116
      Height = 25
      Caption = 'Confirmation Status'
      TabOrder = 7
      OnClick = cxButtonConfStatusClick
    end
    object cxButtonFitStatus: TcxButton
      Left = 449
      Top = 5
      Width = 96
      Height = 25
      Caption = 'FIT Status List'
      TabOrder = 8
      OnClick = cxButtonFitStatusClick
    end
  end
  object Panel4: TPanel [2]
    Left = 0
    Top = 29
    Width = 963
    Height = 308
    Align = alTop
    Caption = 'Panel4'
    TabOrder = 2
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      ParentColor = False
      Style.Color = 15451300
      TabOrder = 0
      Height = 306
      Width = 961
      object QuoRefLabel: TLabel
        Left = 12
        Top = 27
        Width = 56
        Height = 13
        Caption = 'Quo. Ref.'
        Transparent = True
      end
      object TourDateLbl: TLabel
        Left = 355
        Top = 28
        Width = 65
        Height = 13
        Caption = 'Entered On'
        Transparent = True
      end
      object LeadNameLabel: TLabel
        Left = 12
        Top = 50
        Width = 65
        Height = 13
        Caption = 'Lead Name'
        Transparent = True
      end
      object Label3: TLabel
        Left = 544
        Top = 29
        Width = 76
        Height = 13
        Caption = 'Quotation No'
        Transparent = True
      end
      object Label9: TLabel
        Left = 356
        Top = 52
        Width = 60
        Height = 13
        Caption = 'Tour Code'
        Transparent = True
      end
      object Label25: TLabel
        Left = 543
        Top = 51
        Width = 47
        Height = 13
        Caption = 'Tour No'
        Transparent = True
      end
      object LabelCancel: TLabel
        Left = 604
        Top = 280
        Width = 106
        Height = 20
        Caption = 'CANCELLED'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label33: TLabel
        Left = 8
        Top = 284
        Width = 58
        Height = 13
        Caption = 'Comments'
        Transparent = True
      end
      object Label36: TLabel
        Left = 356
        Top = 73
        Width = 54
        Height = 13
        Caption = 'Bk. Recd'
        Transparent = True
      end
      object Label38: TLabel
        Left = 546
        Top = 71
        Width = 32
        Height = 13
        Caption = 'Quot.'
        Transparent = True
      end
      object ValidFromLabel: TLabel
        Left = 12
        Top = 85
        Width = 60
        Height = 13
        Caption = 'Valid From'
        Transparent = True
        Visible = False
      end
      object ValidToLabel: TLabel
        Left = 183
        Top = 81
        Width = 48
        Height = 13
        Caption = 'Valid To'
        Transparent = True
        Visible = False
      end
      object cxQuoRefEdit: TcxDBTextEdit
        Left = 79
        Top = 26
        DataBinding.DataField = 'QuotationRef'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 0
        Width = 274
      end
      object TourDateEdit: TcxDBDateEdit
        Left = 420
        Top = 26
        DataBinding.DataField = 'QuotationDate'
        DataBinding.DataSource = MasterDS
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 1
        Width = 121
      end
      object QuoLeadNameEdit: TcxDBTextEdit
        Left = 79
        Top = 49
        DataBinding.DataField = 'PaxName'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 3
        Width = 274
      end
      object cxDBNavigator1: TcxDBNavigator
        Left = 731
        Top = 277
        Width = 230
        Height = 24
        Buttons.PriorPage.Enabled = False
        Buttons.PriorPage.Visible = False
        Buttons.NextPage.Enabled = False
        Buttons.NextPage.Visible = False
        Buttons.SaveBookmark.Visible = False
        Buttons.GotoBookmark.Visible = False
        Buttons.Filter.Visible = False
        DataSource = MasterDS
        LookAndFeel.NativeStyle = True
        TabOrder = 12
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 640
        Top = 26
        DataBinding.DataField = 'QuotationNo'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 2
        Width = 63
      end
      object cxGroupBox2: TcxGroupBox
        Left = 709
        Top = 18
        TabOrder = 8
        Height = 143
        Width = 254
        object Label12: TLabel
          Left = 5
          Top = 22
          Width = 50
          Height = 13
          Caption = 'Principal'
          Transparent = True
        end
        object ReferenceLabel: TLabel
          Left = 5
          Top = 64
          Width = 60
          Height = 13
          Caption = 'Reference'
          Transparent = True
        end
        object Label15: TLabel
          Left = 5
          Top = 84
          Width = 44
          Height = 13
          Caption = 'Country'
          Transparent = True
        end
        object Label17: TLabel
          Left = 5
          Top = 103
          Width = 51
          Height = 13
          Caption = 'Currency'
          Transparent = True
        end
        object EmailLabel: TLabel
          Left = 7
          Top = 123
          Width = 31
          Height = 13
          Caption = 'Email'
          Transparent = True
        end
        object ConsultantLabel: TLabel
          Left = 5
          Top = 43
          Width = 61
          Height = 13
          Caption = 'Consultant'
          Transparent = True
        end
        object AgentLCB: TcxDBLookupComboBox
          Left = 67
          Top = 19
          DataBinding.DataField = 'PrincipalAgents_id'
          DataBinding.DataSource = MasterDS
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              FieldName = 'Organisation'
            end>
          Properties.ListSource = BackOfficeDataModule.PrinAgentDS
          Properties.OnChange = AgentLCBPropertiesChange
          Properties.OnEditValueChanged = AgentLCBPropertiesEditValueChanged
          Style.Color = 16247513
          TabOrder = 0
          Width = 183
        end
        object cxReferenceEdit: TcxDBTextEdit
          Left = 68
          Top = 60
          DataBinding.DataField = 'Reference'
          DataBinding.DataSource = MasterDS
          Style.Color = 16247513
          TabOrder = 2
          Width = 136
        end
        object CountryLCB: TcxDBLookupComboBox
          Left = 68
          Top = 80
          DataBinding.DataField = 'Countries_id'
          DataBinding.DataSource = MasterDS
          Properties.ClearKey = 46
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'countries_id'
          Properties.ListColumns = <
            item
              FieldName = 'country'
            end>
          Properties.ListSource = BackOfficeDataModule.CountriesDS
          Style.Color = 16247513
          TabOrder = 3
          Width = 136
        end
        object CurrencyLCB: TcxDBLookupComboBox
          Left = 68
          Top = 100
          DataBinding.DataField = 'Currencies_id'
          DataBinding.DataSource = MasterDS
          Properties.ClearKey = 46
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'currency'
            end>
          Properties.ListSource = BackOfficeDataModule.CurrenciesDS
          Style.Color = 16247513
          TabOrder = 4
          Width = 136
        end
        object EmailEdit: TcxDBTextEdit
          Left = 68
          Top = 120
          DataBinding.DataField = 'Email'
          DataBinding.DataSource = MasterDS
          Style.Color = 16247513
          TabOrder = 5
          Width = 181
        end
        object ConsultantLCB: TcxDBLookupComboBox
          Left = 67
          Top = 40
          DataBinding.DataField = 'Consultants_id'
          DataBinding.DataSource = MasterDS
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'Consultants_id'
          Properties.ListColumns = <
            item
              FieldName = 'Consultant'
            end>
          Properties.ListSource = ConsultantDs
          Properties.OnChange = cxDBLookupComboBox6PropertiesChange
          Style.Color = 16247513
          TabOrder = 1
          OnEnter = ConsultantLCBEnter
          Width = 183
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 5
        Top = 95
        TabOrder = 6
        Height = 64
        Width = 688
        object Label4: TLabel
          Left = 10
          Top = 21
          Width = 57
          Height = 13
          Caption = 'Travellers'
          Transparent = True
        end
        object Label6: TLabel
          Left = 124
          Top = 21
          Width = 42
          Height = 13
          Caption = 'Singles'
          Transparent = True
        end
        object Label7: TLabel
          Left = 216
          Top = 21
          Width = 47
          Height = 13
          Caption = 'Doubles'
          Transparent = True
        end
        object Label11: TLabel
          Left = 9
          Top = 44
          Width = 62
          Height = 13
          Caption = 'Hotel Pref.'
          Transparent = True
        end
        object Label8: TLabel
          Left = 240
          Top = 45
          Width = 57
          Height = 13
          Caption = 'Meal Plan'
          Transparent = True
        end
        object Label30: TLabel
          Left = 380
          Top = 21
          Width = 39
          Height = 13
          Caption = 'Triples'
          Transparent = True
        end
        object Label26: TLabel
          Left = 307
          Top = 22
          Width = 34
          Height = 13
          Caption = 'Twins'
          Transparent = True
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 79
          Top = 20
          DataBinding.DataField = 'NumPax'
          DataBinding.DataSource = MasterDS
          Style.Color = 16247513
          TabOrder = 0
          Width = 42
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 170
          Top = 20
          DataBinding.DataField = 'NumSingles'
          DataBinding.DataSource = MasterDS
          Style.Color = 16247513
          TabOrder = 1
          Width = 42
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 267
          Top = 20
          DataBinding.DataField = 'NumDoubles'
          DataBinding.DataSource = MasterDS
          Style.Color = 16247513
          TabOrder = 2
          Width = 33
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 495
          Top = 21
          Caption = 'Extra Bed'
          DataBinding.DataField = 'ExtraBed'
          DataBinding.DataSource = MasterDS
          TabOrder = 5
          Transparent = True
          Width = 76
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 78
          Top = 42
          DataBinding.DataField = 'HotelTypes_id'
          DataBinding.DataSource = MasterDS
          Properties.KeyFieldNames = 'HotelTypes_id'
          Properties.ListColumns = <
            item
              FieldName = 'HotelType'
            end>
          Properties.ListSource = HotelTypesDs
          Style.Color = 16247513
          TabOrder = 6
          Width = 120
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 309
          Top = 42
          DataBinding.DataField = 'MealPlans_id'
          DataBinding.DataSource = MasterDS
          Properties.KeyFieldNames = 'mealplans_id'
          Properties.ListColumns = <
            item
              FieldName = 'plan'
            end>
          Properties.ListSource = BackOfficeDataModule.MealPlanDs
          Style.Color = 16247513
          TabOrder = 7
          Width = 152
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 496
          Top = 45
          Caption = 'Guide'
          DataBinding.DataField = 'Guide'
          DataBinding.DataSource = MasterDS
          TabOrder = 8
          Transparent = True
          Width = 81
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 576
          Top = 45
          Caption = 'Entrance Fees'
          DataBinding.DataField = 'EntranceFees'
          DataBinding.DataSource = MasterDS
          TabOrder = 9
          Transparent = True
          Width = 105
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 419
          Top = 20
          DataBinding.DataField = 'NumTriples'
          DataBinding.DataSource = MasterDS
          Style.Color = 16247513
          TabOrder = 4
          Width = 42
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 344
          Top = 20
          DataBinding.DataField = 'NumTwins'
          DataBinding.DataSource = MasterDS
          Style.Color = 16247513
          TabOrder = 3
          Width = 33
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 5
        Top = 164
        TabOrder = 7
        Height = 68
        Width = 761
        object Label14: TLabel
          Left = 4
          Top = 23
          Width = 60
          Height = 13
          Caption = 'Arrives On'
          Transparent = True
        end
        object Label19: TLabel
          Left = 226
          Top = 25
          Width = 52
          Height = 13
          Caption = 'Arr. From'
          Transparent = True
        end
        object Label35: TLabel
          Left = 386
          Top = 25
          Width = 12
          Height = 13
          Caption = 'at'
          Transparent = True
        end
        object Label24: TLabel
          Left = 470
          Top = 26
          Width = 56
          Height = 13
          Caption = 'Flight No.'
          Transparent = True
        end
        object Label18: TLabel
          Left = 4
          Top = 48
          Width = 48
          Height = 13
          Caption = 'Dept On'
          Transparent = True
        end
        object Label20: TLabel
          Left = 226
          Top = 49
          Width = 51
          Height = 13
          Caption = 'Dept. To'
          Transparent = True
        end
        object Label21: TLabel
          Left = 386
          Top = 49
          Width = 12
          Height = 13
          Caption = 'at'
          Transparent = True
        end
        object Label22: TLabel
          Left = 470
          Top = 50
          Width = 56
          Height = 13
          Caption = 'Flight No.'
          Transparent = True
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 67
          Top = 23
          DataBinding.DataField = 'DateOfArrival'
          DataBinding.DataSource = MasterDS
          Properties.ShowTime = False
          Style.Color = 16247513
          TabOrder = 0
          Width = 152
        end
        object cxDBTimeEdit3: TcxDBTimeEdit
          Left = 404
          Top = 23
          DataBinding.DataField = 'ETA'
          DataBinding.DataSource = MasterDS
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Style.Color = 16247513
          TabOrder = 2
          Width = 60
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 529
          Top = 23
          DataBinding.DataField = 'FlightNo'
          DataBinding.DataSource = MasterDS
          Style.Color = 16247513
          TabOrder = 3
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 67
          Top = 46
          DataBinding.DataField = 'DateOfDeparture'
          DataBinding.DataSource = MasterDS
          Properties.ShowTime = False
          Style.Color = 16247513
          TabOrder = 5
          Width = 152
        end
        object cxDBTimeEdit1: TcxDBTimeEdit
          Left = 404
          Top = 46
          DataBinding.DataField = 'ETD'
          DataBinding.DataSource = MasterDS
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Style.Color = 16247513
          TabOrder = 7
          Width = 60
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 529
          Top = 46
          DataBinding.DataField = 'FlightNoDept'
          DataBinding.DataSource = MasterDS
          Style.Color = 16247513
          TabOrder = 8
          Width = 121
        end
        object cxDBCheckBox6: TcxDBCheckBox
          Left = 655
          Top = 25
          Caption = 'Dom. A/P'
          DataBinding.DataField = 'Domestic'
          DataBinding.DataSource = MasterDS
          TabOrder = 4
          Transparent = True
          Width = 76
        end
        object cxDBLookupComboBox9: TcxDBLookupComboBox
          Left = 281
          Top = 23
          DataBinding.DataField = 'PlaceFrom'
          DataBinding.DataSource = MasterDS
          Properties.DropDownListStyle = lsEditList
          Properties.KeyFieldNames = 'City'
          Properties.ListColumns = <
            item
              FieldName = 'City'
            end>
          Properties.ListSource = AllCitiesDs
          Style.Color = 16247513
          TabOrder = 1
          Width = 98
        end
        object cxDBLookupComboBox10: TcxDBLookupComboBox
          Left = 281
          Top = 46
          DataBinding.DataField = 'PlaceTo'
          DataBinding.DataSource = MasterDS
          Properties.DropDownListStyle = lsEditList
          Properties.KeyFieldNames = 'City'
          Properties.ListColumns = <
            item
              FieldName = 'City'
            end>
          Properties.ListSource = AllCitiesDs
          Style.Color = 16247513
          TabOrder = 6
          Width = 98
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 655
          Top = 48
          Caption = 'Dom. A/P'
          DataBinding.DataField = 'DeptDomestic'
          DataBinding.DataSource = MasterDS
          TabOrder = 9
          Transparent = True
          Width = 76
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 5
        Top = 234
        TabOrder = 10
        Height = 42
        Width = 214
        object Label16: TLabel
          Left = 5
          Top = 24
          Width = 43
          Height = 13
          Caption = 'Vehicle'
          Transparent = True
        end
        object cxDBLookupComboBox8: TcxDBLookupComboBox
          Left = 52
          Top = 21
          DataBinding.DataField = 'Vehicles_id'
          DataBinding.DataSource = MasterDS
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'Vehicles_id'
          Properties.ListColumns = <
            item
              FieldName = 'Vehicle'
            end>
          Properties.ListSource = VehicleDs
          Style.Color = 16247513
          TabOrder = 0
          Width = 150
        end
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 476
        Top = 49
        DataBinding.DataField = 'TourCode'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 4
        Width = 63
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 640
        Top = 48
        DataBinding.DataField = 'TourNo'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 5
        Width = 63
      end
      object cxGroupBox6: TcxGroupBox
        Left = 232
        Top = 233
        TabOrder = 11
        Height = 42
        Width = 537
        object Label28: TLabel
          Left = 3
          Top = 23
          Width = 45
          Height = 13
          Caption = 'Created'
          Transparent = True
        end
        object Label29: TLabel
          Left = 179
          Top = 23
          Width = 61
          Height = 13
          Caption = 'Access To'
          Transparent = True
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 51
          Top = 20
          DataBinding.DataField = 'AdmUsers_id'
          DataBinding.DataSource = MasterDS
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'AdmUsers_id'
          Properties.ListColumns = <
            item
              FieldName = 'uid'
            end>
          Properties.ListSource = UsersDs
          Style.Color = 16247513
          TabOrder = 0
          Width = 122
        end
        object cxDBLookupComboBox5: TcxDBLookupComboBox
          Left = 245
          Top = 20
          DataBinding.DataField = 'Managers_id'
          DataBinding.DataSource = MasterDS
          Properties.KeyFieldNames = 'AdmUsers_id'
          Properties.ListColumns = <
            item
              FieldName = 'uid'
            end>
          Properties.ListSource = UsersDs
          Style.Color = 16247513
          TabOrder = 1
          Width = 119
        end
      end
      object cxGroupBox8: TcxGroupBox
        Left = 774
        Top = 162
        TabOrder = 9
        Height = 113
        Width = 190
        object Label10: TLabel
          Left = 4
          Top = 22
          Width = 54
          Height = 13
          Caption = 'Starts On'
          Transparent = True
        end
        object Label23: TLabel
          Left = 5
          Top = 46
          Width = 36
          Height = 13
          Caption = 'Arr. In'
          Transparent = True
        end
        object Label31: TLabel
          Left = 5
          Top = 70
          Width = 49
          Height = 13
          Caption = 'Ends On'
          Transparent = True
        end
        object Label32: TLabel
          Left = 5
          Top = 94
          Width = 43
          Height = 13
          Caption = 'Dept Fr'
          Transparent = True
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 61
          Top = 21
          DataBinding.DataField = 'StartDate'
          DataBinding.DataSource = MasterDS
          Properties.ShowTime = False
          Style.Color = 16247513
          TabOrder = 0
          Width = 121
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 61
          Top = 45
          DataBinding.DataField = 'StartCities_id'
          DataBinding.DataSource = MasterDS
          Properties.KeyFieldNames = 'Cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'City'
            end>
          Properties.ListSource = CitiesDs
          Style.Color = 16247513
          TabOrder = 1
          Width = 121
        end
        object cxDBDateEdit4: TcxDBDateEdit
          Left = 60
          Top = 68
          DataBinding.DataField = 'EndDate'
          DataBinding.DataSource = MasterDS
          Properties.ShowTime = False
          Style.Color = 16247513
          TabOrder = 2
          Width = 122
        end
        object cxDBLookupComboBox11: TcxDBLookupComboBox
          Left = 60
          Top = 91
          DataBinding.DataField = 'EndCities_id'
          DataBinding.DataSource = MasterDS
          Properties.KeyFieldNames = 'Cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'City'
            end>
          Properties.ListSource = CitiesDs
          Style.Color = 16247513
          TabOrder = 3
          Width = 122
        end
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 73
        Top = 281
        DataBinding.DataField = 'Comment'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 13
        Width = 520
      end
      object cxDBDateEdit5: TcxDBDateEdit
        Left = 419
        Top = 71
        DataBinding.DataField = 'BookingRecdDate'
        DataBinding.DataSource = MasterDS
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 14
        Width = 121
      end
      object cxDBDateEdit7: TcxDBDateEdit
        Left = 585
        Top = 69
        DataBinding.DataField = 'QuotationSendDate'
        DataBinding.DataSource = MasterDS
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 15
        Width = 118
      end
      object cxWebCkb: TcxDBCheckBox
        Left = 11
        Top = 71
        Caption = 'Web'
        DataBinding.DataField = 'WebQuotation'
        DataBinding.DataSource = MasterDS
        Properties.OnEditValueChanged = cxWebCkbPropertiesEditValueChanged
        TabOrder = 16
        Transparent = True
        Width = 46
      end
      object cxValidFromEdit: TcxDBDateEdit
        Left = 76
        Top = 79
        DataBinding.DataField = 'ValidFrom'
        DataBinding.DataSource = MasterDS
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 17
        Visible = False
        Width = 101
      end
      object cxValidToEdit: TcxDBDateEdit
        Left = 232
        Top = 79
        DataBinding.DataField = 'ValidTo'
        DataBinding.DataSource = MasterDS
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 18
        Visible = False
        Width = 121
      end
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 337
    Width = 963
    Height = 285
    Align = alClient
    TabOrder = 3
    object cxGridMaster: TcxGrid
      Left = 1
      Top = 1
      Width = 961
      Height = 283
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.Background = BackOfficeDataModule.cxStyleBackground
        Styles.Header = BackOfficeDataModule.cxStyleHeader
      end
      object cxGridMasterDBBandedTableView1: TcxGridDBBandedTableView
        PopupMenu = PopupMenu2
        OnDblClick = cxGridMasterDBBandedTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = Detail1DS
        DataController.KeyFieldNames = 'QuoCities_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end
          item
            Format = '#,##0.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.ColumnHiding = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        Styles.OnGetContentStyle = cxGridMasterDBBandedTableView1StylesGetContentStyle
        Bands = <
          item
            Width = 934
          end>
        object cxGridMasterDBBandedTableView1QuoCities_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoCities_id'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Quotations_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Quotations_id'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1DateIn: TcxGridDBBandedColumn
          Caption = 'Date In'
          DataBinding.FieldName = 'DateIn'
          Options.Filtering = False
          Options.Grouping = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 96
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1DateOut: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DateOut'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1TimeIn: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TimeIn'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1TimeOut: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TimeOut'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 86
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1FromCities_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FromCities_id'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ToCities_id: TcxGridDBBandedColumn
          Caption = 'City'
          DataBinding.FieldName = 'ToCities_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = NightHaltDs
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Nights: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Nights'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 33
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Hotel: TcxGridDBBandedColumn
          Caption = 'Hotel'
          DataBinding.FieldName = 'QuoAccommodation_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'QuoAccommodation_id'
          Properties.ListColumns = <
            item
              FieldName = 'Organisation'
            end>
          Properties.ListSource = AccDs
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ModeOfTravel: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Mode'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 65
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ModeString: TcxGridDBBandedColumn
          Caption = 'Mode'
          DataBinding.FieldName = 'ModeString'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 104
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoAccommodation_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoAccommodation_id'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoTickets_id'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoServices_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoServices_id'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoArrTransfers_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoArrTransfers_id'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoDepTransfers_id: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QuoDepTransfers_id'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Status: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Status'
          Visible = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoTicketsOK: TcxGridDBBandedColumn
          Caption = 'Tickets'
          DataBinding.FieldName = 'QuoTicketsOk'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 48
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoAccommodationOK: TcxGridDBBandedColumn
          Caption = 'Acc'
          DataBinding.FieldName = 'QuoAccommodationOk'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 37
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoSightSeeingOK: TcxGridDBBandedColumn
          Caption = 'S/S'
          DataBinding.FieldName = 'QuoSightSeeingOk'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 34
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1QuoTransfersOk: TcxGridDBBandedColumn
          Caption = 'Transfers'
          DataBinding.FieldName = 'QuoTransfersOk'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 55
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ErrorNo: TcxGridDBBandedColumn
          Caption = 'Error No'
          DataBinding.FieldName = 'ErrorNo'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Styles.OnGetContentStyle = cxGridMasterDBBandedTableView1ErrorNoStylesGetContentStyle
          Width = 72
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1Error: TcxGridDBBandedColumn
          Caption = 'Error'
          DataBinding.FieldName = 'ErrorDesc'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 245
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1WarnDesc: TcxGridDBBandedColumn
          Caption = 'Warning'
          DataBinding.FieldName = 'WarnDesc'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1IsRemarksOther: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IsRemarksOther'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          VisibleForCustomization = False
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object cxGridMasterDBBandedTableView1ModuleQuotations_id: TcxGridDBBandedColumn
          Caption = 'Module Link'
          DataBinding.FieldName = 'ModuleQuotations_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 400
          Properties.KeyFieldNames = 'Quotations_id'
          Properties.ListColumns = <
            item
              Width = 100
              FieldName = 'PaxName'
            end
            item
              Width = 100
              FieldName = 'QuotationRef'
            end
            item
              Width = 100
              FieldName = 'QuotationDate'
            end>
          Properties.ListSource = ModQuoDs
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
      end
      object cxGridMasterLevel1: TcxGridLevel
        GridView = cxGridMasterDBBandedTableView1
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'Quotations'
    Left = 16
    Top = 8
  end
  inherited MasterDataSetProvider: TDataSetProvider
    Left = 32
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 64
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'QuotationYearRef;QuotationNo;Quotations_id'
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 48
    Top = 8
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
    end
    object MasterCdsQuotationDate: TSQLTimeStampField
      FieldName = 'QuotationDate'
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
    end
    object MasterCdsHotelTypes_id: TIntegerField
      FieldName = 'HotelTypes_id'
    end
    object MasterCdsPrincipalAgents_id: TIntegerField
      FieldName = 'PrincipalAgents_id'
    end
    object MasterCdsReference: TStringField
      FieldName = 'Reference'
      Size = 50
    end
    object MasterCdsCountries_id: TIntegerField
      FieldName = 'Countries_id'
    end
    object MasterCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object MasterCdsExtraBed: TBooleanField
      FieldName = 'ExtraBed'
    end
    object MasterCdsDateOfDeparture: TSQLTimeStampField
      FieldName = 'DateOfDeparture'
    end
    object MasterCdsFlightNoDept: TStringField
      FieldName = 'FlightNoDept'
      Size = 30
    end
    object MasterCdsPlaceTo: TStringField
      FieldName = 'PlaceTo'
      Size = 30
    end
    object MasterCdsETD: TSQLTimeStampField
      FieldName = 'ETD'
    end
    object MasterCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object MasterCdsDomestic: TBooleanField
      FieldName = 'Domestic'
    end
    object MasterCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
    object MasterCdsStartCities_id: TIntegerField
      FieldName = 'StartCities_id'
    end
    object MasterCdsTourNo: TIntegerField
      FieldName = 'TourNo'
    end
    object MasterCdsAdmUsers_id: TIntegerField
      FieldName = 'AdmUsers_id'
    end
    object MasterCdsManagers_id: TIntegerField
      FieldName = 'Managers_id'
    end
    object MasterCdsNumTwins: TIntegerField
      FieldName = 'NumTwins'
    end
    object MasterCdsEndDate: TSQLTimeStampField
      FieldName = 'EndDate'
    end
    object MasterCdsEndCities_id: TIntegerField
      FieldName = 'EndCities_id'
    end
    object MasterCdsDeptDomestic: TBooleanField
      FieldName = 'DeptDomestic'
    end
    object MasterCdsConfirmed: TBooleanField
      FieldName = 'Confirmed'
    end
    object MasterCdsWeb: TIntegerField
      FieldName = 'Web'
    end
    object MasterCdsTrial: TIntegerField
      FieldName = 'Trial'
    end
    object MasterCdsConsultants_id: TIntegerField
      FieldName = 'Consultants_id'
    end
    object MasterCdsCancelledOn: TSQLTimeStampField
      FieldName = 'CancelledOn'
    end
    object MasterCdsComment: TStringField
      FieldName = 'Comment'
      Size = 100
    end
    object MasterCdsPrincipalClient: TStringField
      FieldName = 'PrincipalClient'
      Size = 100
    end
    object MasterCdsBookingRecdDate: TSQLTimeStampField
      FieldName = 'BookingRecdDate'
    end
    object MasterCdsBookingEntryDate: TSQLTimeStampField
      FieldName = 'BookingEntryDate'
    end
    object MasterCdsQuotationSendDate: TSQLTimeStampField
      FieldName = 'QuotationSendDate'
    end
    object MasterCdsWebQuotation: TBooleanField
      FieldName = 'WebQuotation'
    end
    object MasterCdsValidFrom: TSQLTimeStampField
      FieldName = 'ValidFrom'
    end
    object MasterCdsValidTo: TSQLTimeStampField
      FieldName = 'ValidTo'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoCities WHERE Quotations_id = :Quotations_id'
    CommandType = ctQuery
    DataSource = MasterDS
    Params = <
      item
        DataType = ftInteger
        Name = 'Quotations_id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 112
    Top = 8
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    Left = 128
    Top = 8
  end
  inherited Detail1DS: TDataSource
    Top = 8
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'Quotations_id'
    MasterFields = 'Quotations_id'
    MasterSource = MasterDS
    PacketRecords = 0
    AfterInsert = Detail1CdsAfterInsert
    OnCalcFields = Detail1CdsCalcFields
    Left = 144
    Top = 8
    object Detail1CdsQuoCities_id: TIntegerField
      FieldName = 'QuoCities_id'
    end
    object Detail1CdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object Detail1CdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Detail1CdsDateOut: TSQLTimeStampField
      FieldName = 'DateOut'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Detail1CdsTimeIn: TSQLTimeStampField
      FieldName = 'TimeIn'
      DisplayFormat = 'HH:mm'
    end
    object Detail1CdsTimeOut: TSQLTimeStampField
      FieldName = 'TimeOut'
      DisplayFormat = 'HH:mm'
    end
    object Detail1CdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object Detail1CdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
      OnChange = Detail1CdsToCities_idChange
    end
    object Detail1CdsModeOfTravel: TIntegerField
      FieldName = 'ModeOfTravel'
    end
    object Detail1CdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object Detail1CdsQuoAccommodation_id: TIntegerField
      FieldName = 'QuoAccommodation_id'
    end
    object Detail1CdsQuoTickets_id: TIntegerField
      FieldName = 'QuoTickets_id'
    end
    object Detail1CdsQuoServices_id: TIntegerField
      FieldName = 'QuoServices_id'
    end
    object Detail1CdsQuoArrTransfers_id: TIntegerField
      FieldName = 'QuoArrTransfers_id'
    end
    object Detail1CdsQuoDepTransfers_id: TIntegerField
      FieldName = 'QuoDepTransfers_id'
    end
    object Detail1CdsStatus: TIntegerField
      FieldName = 'Status'
    end
    object Detail1CdsMode: TStringField
      FieldKind = fkCalculated
      FieldName = 'Mode'
      Calculated = True
    end
    object Detail1CdsQuoTicketsOk: TBooleanField
      FieldName = 'QuoTicketsOk'
    end
    object Detail1CdsQuoAccommodationOk: TBooleanField
      FieldName = 'QuoAccommodationOk'
    end
    object Detail1CdsQuoSightSeeingOk: TBooleanField
      FieldName = 'QuoSightSeeingOk'
    end
    object Detail1CdsQuoTransfersOk: TBooleanField
      FieldName = 'QuoTransfersOk'
    end
    object Detail1CdsErrorNo: TIntegerField
      FieldName = 'ErrorNo'
    end
    object Detail1CdsErrorDesc: TStringField
      FieldName = 'ErrorDesc'
      Size = 100
    end
    object Detail1CdsDriveStartTime: TSQLTimeStampField
      FieldName = 'DriveStartTime'
    end
    object Detail1CdsModeString: TStringField
      FieldName = 'ModeString'
      Size = 50
    end
    object Detail1CdsWarnDesc: TStringField
      FieldName = 'WarnDesc'
      Size = 100
    end
    object Detail1CdsQcCarHireAgents_id: TIntegerField
      FieldName = 'QcCarHireAgents_id'
    end
    object Detail1CdsQcCarHireCities_id: TIntegerField
      FieldName = 'QcCarHireCities_id'
    end
    object Detail1CdsQcVehicles_id: TIntegerField
      FieldName = 'QcVehicles_id'
    end
    object Detail1CdsP2P: TIntegerField
      FieldName = 'P2P'
    end
    object Detail1CdsIsRemarksOther: TIntegerField
      FieldName = 'IsRemarksOther'
    end
    object Detail1CdsRemarksOther: TStringField
      FieldName = 'RemarksOther'
      Size = 250
    end
    object Detail1CdsModuleQuotations_id: TIntegerField
      FieldName = 'ModuleQuotations_id'
    end
  end
  object CitiesSds: TSQLDataSet
    CommandText = 'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'WHERE NightHalt = 1'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 336
    Top = 194
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 350
    Top = 195
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 368
    Top = 194
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
    Top = 194
  end
  object PopupMenu1: TPopupMenu
    Left = 40
    Top = 544
    object AutoCreate1: TMenuItem
      Caption = 'Auto Create'
      object All1: TMenuItem
        Caption = 'All'
        OnClick = All1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Accommodation1: TMenuItem
        Caption = 'Accommodation'
        OnClick = Accommodation1Click
      end
      object SightSeeing2: TMenuItem
        Caption = 'Sight Seeing'
        OnClick = SightSeeing2Click
      end
      object ransfers1: TMenuItem
        Caption = 'Transfers'
        OnClick = ransfers1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object SetTimings1: TMenuItem
        Caption = 'Set Timings'
        OnClick = SetTimings1Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Day1: TMenuItem
        Caption = 'Day'
        OnClick = Day1Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object ComputeCarCosts1: TMenuItem
        Caption = 'Tickets'
        OnClick = ComputeCarCosts1Click
      end
      object EditAccommodation1: TMenuItem
        Caption = 'Accommodation'
        OnClick = EditAccommodation1Click
      end
      object SightSeeing1: TMenuItem
        Caption = 'Sight Seeing'
        OnClick = SightSeeing1Click
      end
      object ransfers5: TMenuItem
        Caption = 'Transfers'
        OnClick = ransfers5Click
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object CheckIntegrity1: TMenuItem
      Caption = 'Check Integrity'
      object All3: TMenuItem
        Caption = 'All'
        OnClick = All3Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object ickets2: TMenuItem
        Caption = 'Tickets'
        OnClick = ickets2Click
      end
      object Accommodation3: TMenuItem
        Caption = 'Accommodation'
        OnClick = Accommodation3Click
      end
      object SightSeeing4: TMenuItem
        Caption = 'Sight Seeing'
        OnClick = SightSeeing4Click
      end
      object ransfers3: TMenuItem
        Caption = 'Transfers'
        OnClick = ransfers3Click
      end
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      object All2: TMenuItem
        Caption = 'All'
        OnClick = All2Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object ickets1: TMenuItem
        Caption = 'Tickets'
        OnClick = ickets1Click
      end
      object Accommodation2: TMenuItem
        Caption = 'Accommodation'
        OnClick = Accommodation2Click
      end
      object SightSeeing3: TMenuItem
        Caption = 'Sight Seeing'
        OnClick = SightSeeing3Click
      end
      object ransfers2: TMenuItem
        Caption = 'Transfers'
        OnClick = ransfers2Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object DeleteSingleLine1: TMenuItem
        Caption = 'Delete Single Line'
        object ickets3: TMenuItem
          Caption = 'Tickets'
          OnClick = ickets3Click
        end
        object Accommodation4: TMenuItem
          Caption = 'Accommodation'
          OnClick = Accommodation4Click
        end
        object SightSeeing5: TMenuItem
          Caption = 'Sight Seeing'
          OnClick = SightSeeing5Click
        end
        object ransfers4: TMenuItem
          Caption = 'Transfers'
          OnClick = ransfers4Click
        end
      end
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object DisplayItinerary1: TMenuItem
      Caption = 'Display Itinerary'
      OnClick = DisplayItinerary1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      OnClick = Refresh1Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object EnterBookings1: TMenuItem
      Caption = 'Enter Bookings'
      OnClick = EnterBookings1Click
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object mnuCreateMasters: TMenuItem
      Caption = 'Create Masters'
      OnClick = mnuCreateMastersClick
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object mnuDeleteMastes: TMenuItem
      Caption = 'Delete Masters'
      OnClick = mnuDeleteMastesClick
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object mnuMovetoTrial: TMenuItem
      Caption = 'Move to Trial'
      OnClick = mnuMovetoTrialClick
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object mnuMoveToLive: TMenuItem
      Caption = 'Move To Live'
      OnClick = mnuMoveToLiveClick
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object MovetoWeb1: TMenuItem
      Caption = 'Move to Web'
      OnClick = MovetoWeb1Click
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object ModifyStartDate1: TMenuItem
      Caption = 'Modify Start Date'
      OnClick = ModifyStartDate1Click
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object CreateModule1: TMenuItem
      Caption = 'Create Module'
      OnClick = CreateModule1Click
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object SaveAsExcel1: TMenuItem
      Caption = 'Save As Excel'
      OnClick = SaveAsExcel1Click
    end
    object N21: TMenuItem
      Caption = '-'
    end
    object mnuCopyTrial: TMenuItem
      Caption = 'Make a copy of Trial'
      OnClick = mnuCopyTrialClick
    end
    object N22: TMenuItem
      Caption = '-'
    end
    object RestrictModuleList1: TMenuItem
      Caption = 'Restrict Module List '
      object N1year1: TMenuItem
        Caption = '1 year'
        OnClick = N1year1Click
      end
      object N2years1: TMenuItem
        Caption = '2 years'
        OnClick = N2years1Click
      end
      object Unrestricted1: TMenuItem
        Caption = 'Unrestricted'
        OnClick = Unrestricted1Click
      end
    end
  end
  object CxStyleRepository1: TcxStyleRepository
    Left = 648
    Top = 24
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12320733
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleBlue: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16766935
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleRed: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 13559807
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleYellow: TcxStyle
      AssignedValues = [svColor]
      Color = 12320767
    end
    object cxStyleRed2: TcxStyle
      AssignedValues = [svColor]
      Color = 8947967
    end
    object cxStyleGrey: TcxStyle
      AssignedValues = [svColor]
      Color = 14079702
    end
  end
  object HotelTypesSds: TSQLDataSet
    CommandText = 
      'SELECT h.HotelTypes_id,h.HotelType '#13#10'  FROM HotelTypes h'#13#10'      ' +
      ' INNER JOIN Categories c ON h.Categories_id = c.Categories_id'#13#10' ' +
      'WHERE InclHotelReport = 1'#13#10' ORDER BY OrderHotelReport'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 592
    Top = 194
  end
  object HotelTypesDsp: TDataSetProvider
    DataSet = HotelTypesSds
    Left = 606
    Top = 195
  end
  object HotelTypesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelTypesDsp'
    Left = 624
    Top = 194
    object HotelTypesCdsHotelTypes_id: TIntegerField
      FieldName = 'HotelTypes_id'
    end
    object HotelTypesCdsHotelType: TStringField
      FieldName = 'HotelType'
    end
  end
  object HotelTypesDs: TDataSource
    DataSet = HotelTypesCds
    Left = 636
    Top = 194
  end
  object VehicleSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT v.Vehicle, ch.Vehicles_id'#13#10'FROM CarHire ch INNER' +
      ' JOIN Vehicles v ON ch.Vehicles_id = v.Vehicles_id'#13#10'ORDER BY Veh' +
      'icle'
    DataSource = MasterDS
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 528
    Top = 224
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 544
    Top = 224
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 560
    Top = 224
    object VehicleCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object VehicleCdsvehicle: TStringField
      FieldName = 'vehicle'
      Size = 35
    end
  end
  object VehicleDs: TDataSource
    DataSet = VehicleCds
    Left = 568
    Top = 224
  end
  object NightHaltSds: TSQLDataSet
    CommandText = 
      'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'WHERE ((COALESCE(c.Ni' +
      'ghtHalt,0) = 1) OR'#13#10'c.Cities_id IN (SELECT td.Cities_id FROM Tra' +
      'inDetails td WHERE td.Cities_id IS NOT NULL))'#13#10'ORDER BY c.City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 328
    Top = 338
  end
  object NightHaltDsp: TDataSetProvider
    DataSet = NightHaltSds
    Left = 342
    Top = 339
  end
  object NightHaltCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'NightHaltDsp'
    Left = 360
    Top = 338
    object IntegerField1: TIntegerField
      FieldName = 'Cities_id'
    end
    object StringField1: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object NightHaltDs: TDataSource
    DataSet = NightHaltCds
    Left = 372
    Top = 338
  end
  object AccSds: TSQLDataSet
    CommandText = 
      'SELECT qa.QuoAccommodation_id, a.Organisation FROM QuoAccommodat' +
      'ion qa, Addressbook a'#13#10'WHERE qa.HotelAddressbook_id = a.Addressb' +
      'ook_id'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 696
    Top = 330
  end
  object AccDsp: TDataSetProvider
    DataSet = AccSds
    Left = 710
    Top = 331
  end
  object AccCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccDsp'
    Left = 728
    Top = 330
    object AccCdsQuoAccommodation_id: TIntegerField
      FieldName = 'QuoAccommodation_id'
    end
    object AccCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
  end
  object AccDs: TDataSource
    DataSet = AccCds
    Left = 740
    Top = 330
  end
  object PopupMenu2: TPopupMenu
    Left = 248
    Top = 433
    object Edit2: TMenuItem
      Caption = 'Edit Day'
      OnClick = Edit2Click
    end
    object N14: TMenuItem
      Caption = '-'
      Visible = False
    end
    object ChangeCarHireAgent1: TMenuItem
      Caption = 'Change Car Hire Agent'
      Visible = False
      OnClick = ChangeCarHireAgent1Click
    end
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 360
    Top = 306
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 374
    Top = 307
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 392
    Top = 306
    object UsersCdsAdmUsers_id: TIntegerField
      FieldName = 'AdmUsers_id'
    end
    object UsersCdsuid: TStringField
      FieldName = 'uid'
      Size = 8
    end
  end
  object UsersDs: TDataSource
    DataSet = UsersCds
    Left = 404
    Top = 306
  end
  object AllCitiesSds: TSQLDataSet
    CommandText = 'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'ORDER BY c.City'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 328
    Top = 378
  end
  object AllCitiesDsp: TDataSetProvider
    DataSet = AllCitiesSds
    Left = 342
    Top = 379
  end
  object AllCitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AllCitiesDsp'
    Left = 360
    Top = 378
    object IntegerField2: TIntegerField
      FieldName = 'Cities_id'
    end
    object StringField2: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object AllCitiesDs: TDataSource
    DataSet = AllCitiesCds
    Left = 372
    Top = 378
  end
  object ConsultantSds: TSQLDataSet
    CommandText = 'SELECT * FROM Consultants WHERE Addressbook_id = :Addressbook_id'
    DataSource = BackOfficeDataModule.PrinAgentDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 592
    Top = 400
  end
  object ConsultantDsp: TDataSetProvider
    DataSet = ConsultantSds
    Left = 608
    Top = 400
  end
  object ConsultantCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = BackOfficeDataModule.PrinAgentDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ConsultantDsp'
    Left = 624
    Top = 400
  end
  object ConsultantDs: TDataSource
    DataSet = ConsultantCds
    Left = 632
    Top = 400
  end
  object ModQuoSds: TSQLDataSet
    CommandText = 
      'SELECT Quotations_id, QuotationRef, PaxName, QuotationDate'#13#10'  FR' +
      'OM Quotations'#13#10' WHERE Trial = 3'#13#10'AND DATEDIFF(yy, QuotationDate,' +
      ' GETDATE()) < :x_Years'#13#10' ORDER BY PaxName'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'x_Years'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 696
    Top = 480
  end
  object ModQuoDsp: TDataSetProvider
    DataSet = ModQuoSds
    Left = 712
    Top = 480
  end
  object ModQuoCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ModQuoDsp'
    Left = 728
    Top = 480
    object ModQuoCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object ModQuoCdsQuotationRef: TStringField
      FieldName = 'QuotationRef'
    end
    object ModQuoCdsPaxName: TStringField
      FieldName = 'PaxName'
      Size = 100
    end
    object ModQuoCdsQuotationDate: TSQLTimeStampField
      FieldName = 'QuotationDate'
    end
  end
  object ModQuoDs: TDataSource
    DataSet = ModQuoCds
    Left = 752
    Top = 480
  end
  object scExcelExport: TscExcelExport
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
    Left = 144
    Top = 417
  end
end
