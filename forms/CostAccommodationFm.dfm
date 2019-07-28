object CostAccommodationForm: TCostAccommodationForm
  Left = 344
  Top = 14
  Width = 1010
  Height = 662
  Caption = 'CostAccommodationForm'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 624
    Align = alClient
    TabOrder = 0
    object Shape1: TShape
      Left = 143
      Top = 595
      Width = 20
      Height = 17
      Brush.Color = 12902911
    end
    object Shape2: TShape
      Left = 279
      Top = 595
      Width = 20
      Height = 17
      Brush.Color = 16767449
    end
    object Label31: TcxLabel
      Left = 168
      Top = 598
      Caption = 'Published Tariff'
    end
    object Label32: TcxLabel
      Left = 304
      Top = 598
      Caption = 'Contract Rate'
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 992
      Height = 45
      Align = alTop
      TabOrder = 0
      object Label1: TcxLabel
        Left = 3
        Top = 13
        Caption = 'City'
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 256
        Top = 12
        Caption = 'Hotel'
        Transparent = True
      end
      object cxCityLcmb: TcxLookupComboBox
        Left = 29
        Top = 10
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'cities_id'
        Properties.ListColumns = <
          item
            Caption = 'City'
            FieldName = 'city'
          end
          item
            Caption = 'State'
            FieldName = 'state'
          end>
        Properties.ListSource = BackOfficeDataModule.CitiesDS
        Properties.ValidateOnEnter = False
        Properties.OnEditValueChanged = CityLcmbPropertiesEditValueChanged
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        Width = 160
      end
      object cxHotelLcmb: TcxLookupComboBox
        Left = 290
        Top = 11
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'Addressbook_id'
        Properties.ListColumns = <
          item
            FieldName = 'Organisation'
          end>
        Properties.ListSource = HotelDs
        Properties.ValidateOnEnter = False
        Properties.OnEditValueChanged = HotelLcmbPropertiesEditValueChanged
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 1
        OnExit = cxHotelLcmbExit
        Width = 197
      end
      object GTChkBox: TcxCheckBox
        Left = 491
        Top = 12
        Caption = 'Group Tariff'
        TabOrder = 2
        Transparent = True
        OnClick = GTChkBoxClick
        Width = 97
      end
      object cxButton4: TcxButton
        Left = 191
        Top = 11
        Width = 55
        Height = 18
        Caption = 'Default'
        TabOrder = 3
        OnClick = cxButton4Click
      end
      object cxGroupBox1: TcxGroupBox
        Left = 699
        Top = 3
        Caption = 'With Effect From'
        TabOrder = 6
        Height = 40
        Width = 215
        object cxWefLCMB: TcxLookupComboBox
          Left = 2
          Top = 19
          Properties.DropDownListStyle = lsEditList
          Properties.KeyFieldNames = 'wef'
          Properties.ListColumns = <
            item
              FieldName = 'wef'
            end>
          Properties.ListSource = WefDS
          Properties.ValidateOnEnter = False
          Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
          EditValue = 0
          Style.Color = 16247513
          TabOrder = 0
          OnEnter = cxWefLCMBEnter
          OnKeyPress = cxWefLCMBKeyPress
          Width = 126
        end
        object cxButtonUpdate: TcxButton
          Left = 134
          Top = 18
          Width = 71
          Height = 20
          Caption = 'Update'
          TabOrder = 1
          OnClick = cxButtonUpdateClick
        end
      end
    end
    object GroupBox1: TcxGroupBox
      Left = 1
      Top = 46
      Align = alTop
      ParentColor = False
      Style.Color = 15451300
      TabOrder = 1
      Height = 141
      Width = 992
      object SeasonsGrid: TcxGrid
        Left = 3
        Top = 18
        Width = 527
        Height = 120
        Align = alLeft
        TabOrder = 0
        object SeasonsGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = SeasonsDs
          DataController.KeyFieldNames = 'seasons_id'
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
          object SeasonsGridDBTableView1fromdate: TcxGridDBColumn
            Caption = 'From Date'
            DataBinding.FieldName = 'fromdate'
            SortIndex = 0
            SortOrder = soDescending
            Width = 83
          end
          object SeasonsGridDBTableView1todate: TcxGridDBColumn
            Caption = 'To Date'
            DataBinding.FieldName = 'todate'
            Options.Filtering = False
            Options.Grouping = False
            Width = 76
          end
          object SeasonsGridDBTableView1frompax: TcxGridDBColumn
            Caption = 'From Pax'
            DataBinding.FieldName = 'frompax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 74
          end
          object SeasonsGridDBTableView1to_pax: TcxGridDBColumn
            Caption = 'To Pax'
            DataBinding.FieldName = 'to_pax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 66
          end
          object SeasonsGridDBTableView1closed: TcxGridDBColumn
            Caption = 'Closed'
            DataBinding.FieldName = 'closed'
            Options.Filtering = False
            Options.Grouping = False
            Width = 63
          end
          object SeasonsGridDBTableView1DaysName: TcxGridDBColumn
            Caption = 'Days'
            DataBinding.FieldName = 'DaysName'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = SeasonsGridDBTableView1DaysNamePropertiesButtonClick
            Options.Filtering = False
            Options.Grouping = False
            Width = 150
          end
          object SeasonsGridDBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'seasons_id'
            Visible = False
          end
          object SeasonsGridDBTableView1SpecialPeriod: TcxGridDBColumn
            Caption = 'Special Period'
            DataBinding.FieldName = 'SpecialPeriod'
          end
        end
        object SeasonsGridLevel1: TcxGridLevel
          GridView = SeasonsGridDBTableView1
        end
      end
      object GroupBox5: TcxGroupBox
        Left = 770
        Top = 18
        Caption = ' Service Charges '
        TabOrder = 2
        Height = 120
        Width = 228
        object Label7: TcxLabel
          Left = 148
          Top = 20
          Caption = 'On Plan'
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 13
          Top = 20
          DataBinding.DataField = 'servicecharges'
          DataBinding.DataSource = SeasonsDs
          Style.Color = 16247513
          TabOrder = 0
          Width = 90
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 197
          Top = 19
          DataBinding.DataField = 'servicechargesonplan'
          DataBinding.DataSource = SeasonsDs
          TabOrder = 1
          Transparent = True
          Width = 21
        end
        object cxLabel1: TcxLabel
          Left = 12
          Top = 40
          Caption = 'Notes'
          Transparent = True
        end
        object cxDBMemo1: TcxDBMemo
          Left = 8
          Top = 56
          DataBinding.DataField = 'Notes'
          DataBinding.DataSource = SeasonsDs
          Style.Color = 16247513
          TabOrder = 4
          Height = 59
          Width = 216
        end
      end
      object GroupBox6: TcxGroupBox
        Left = 530
        Top = 18
        Caption = ' Travel Agent Commission '
        TabOrder = 1
        Height = 67
        Width = 240
        object Label4: TcxLabel
          Left = 8
          Top = 18
          Caption = 'On Published Rate'
          Transparent = True
        end
        object Label5: TcxLabel
          Left = 132
          Top = 18
          Caption = 'On Contract Rate'
          Transparent = True
        end
        object Label6: TcxLabel
          Left = 8
          Top = 52
          Caption = 'On MealPlan'
          Transparent = True
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 87
          Top = 52
          DataBinding.DataField = 'taconmealplan_pt'
          DataBinding.DataSource = SeasonsDs
          TabOrder = 2
          Transparent = True
          Width = 21
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 187
          Top = 51
          DataBinding.DataField = 'taconmealplan'
          DataBinding.DataSource = SeasonsDs
          TabOrder = 3
          Transparent = True
          Width = 21
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 21
          Top = 32
          DataBinding.DataField = 'tac_pt'
          DataBinding.DataSource = SeasonsDs
          Style.Color = 16247513
          TabOrder = 0
          Width = 90
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 137
          Top = 32
          DataBinding.DataField = 'tac'
          DataBinding.DataSource = SeasonsDs
          Style.Color = 16247513
          TabOrder = 1
          Width = 90
        end
      end
      object GroupBox7: TcxGroupBox
        Left = 530
        Top = 82
        TabOrder = 3
        Height = 58
        Width = 240
        object Label8: TcxLabel
          Left = 4
          Top = 20
          Caption = 'Default Room'
          Transparent = True
        end
        object Label9: TcxLabel
          Left = 4
          Top = 40
          Caption = 'Default A/C'
          Transparent = True
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 84
          Top = 39
          DataBinding.DataField = 'default_ac'
          DataBinding.DataSource = SeasonsDs
          TabOrder = 1
          Transparent = True
          Width = 21
        end
        object DefaultRoomLcmb: TcxDBLookupComboBox
          Left = 87
          Top = 19
          DataBinding.DataField = 'default_roomtypes_id'
          DataBinding.DataSource = SeasonsDs
          Properties.KeyFieldNames = 'roomtypes_id'
          Properties.ListColumns = <
            item
              FieldName = 'roomtype'
            end>
          Properties.ListSource = DefaultRoomTypesDs
          Style.Color = 16247513
          TabOrder = 0
          Width = 135
        end
        object cxDefaultRoomButton: TcxButton
          Left = 146
          Top = 38
          Width = 75
          Height = 19
          Caption = 'Refresh'
          TabOrder = 2
          OnClick = cxDefaultRoomButtonClick
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 187
      Width = 992
      Height = 129
      Align = alTop
      Color = 15451300
      TabOrder = 2
      object TariffGrid: TcxGrid
        Left = 1
        Top = 1
        Width = 990
        Height = 127
        Align = alClient
        TabOrder = 0
        object TariffGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = TariffDs
          DataController.KeyFieldNames = 'hoteltariffs_id'
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
          object TariffGridDBTableView1roomtypes_id: TcxGridDBColumn
            Caption = 'Room Type'
            DataBinding.FieldName = 'roomtypes_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 150
            Properties.KeyFieldNames = 'roomtypes_id'
            Properties.ListColumns = <
              item
                Caption = 'Room Type'
                FieldName = 'roomtype'
              end>
            Properties.ListSource = BackOfficeDataModule.RoomTypeDs
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 79
          end
          object TariffGridDBTableView1currencies_pt_id: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'currencies_pt_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 150
            Properties.KeyFieldNames = 'currencies_id'
            Properties.ListColumns = <
              item
                Caption = 'Currency'
                FieldName = 'currency'
              end>
            Properties.ListSource = BackOfficeDataModule.CurrenciesDS
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStylePublished
            Styles.Header = BackOfficeDataModule.cxStylePublished
            Width = 62
          end
          object TariffGridDBTableView1cost_single_pt: TcxGridDBColumn
            Caption = 'Single'
            DataBinding.FieldName = 'cost_single_pt'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStylePublished
            Styles.Header = BackOfficeDataModule.cxStylePublished
            Width = 54
          end
          object TariffGridDBTableView1cost_double_pt: TcxGridDBColumn
            Caption = 'Double'
            DataBinding.FieldName = 'cost_double_pt'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStylePublished
            Styles.Header = BackOfficeDataModule.cxStylePublished
            Width = 53
          end
          object TariffGridDBTableView1cost_single_ac_pt: TcxGridDBColumn
            Caption = 'Single AC'
            DataBinding.FieldName = 'cost_single_ac_pt'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStylePublished
            Styles.Header = BackOfficeDataModule.cxStylePublished
            Width = 67
          end
          object TariffGridDBTableView1cost_double_ac_pt: TcxGridDBColumn
            Caption = 'Double AC'
            DataBinding.FieldName = 'cost_double_ac_pt'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStylePublished
            Styles.Header = BackOfficeDataModule.cxStylePublished
            Width = 69
          end
          object TariffGridDBTableView1extrabed: TcxGridDBColumn
            Caption = 'Extra Bed'
            DataBinding.FieldName = 'extrabed_pt'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStylePublished
            Styles.Header = BackOfficeDataModule.cxStylePublished
            Width = 63
          end
          object TariffGridDBTableView1mealplans_pt_id: TcxGridDBColumn
            Caption = 'Mealplan'
            DataBinding.FieldName = 'mealplans_pt_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 170
            Properties.KeyFieldNames = 'mealplans_id'
            Properties.ListColumns = <
              item
                Caption = 'Mealplan'
                FieldName = 'mealplan'
              end
              item
                Caption = 'Plan'
                FieldName = 'plan'
              end>
            Properties.ListSource = BackOfficeDataModule.MealPlanDs
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStylePublished
            Styles.Header = BackOfficeDataModule.cxStylePublished
            Width = 63
          end
          object TariffGridDBTableView1nett_pt: TcxGridDBColumn
            Caption = 'Nett'
            DataBinding.FieldName = 'nett_pt'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStylePublished
            Styles.Header = BackOfficeDataModule.cxStylePublished
            Width = 36
          end
          object TariffGridDBTableView1currencies_id: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'currencies_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 150
            Properties.KeyFieldNames = 'currencies_id'
            Properties.ListColumns = <
              item
                Caption = 'Currency'
                FieldName = 'currency'
              end>
            Properties.ListSource = BackOfficeDataModule.CurrenciesDS
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStyleContract
            Styles.Header = BackOfficeDataModule.cxStyleContract
            Width = 60
          end
          object TariffGridDBTableView1cost_single: TcxGridDBColumn
            Caption = 'Single'
            DataBinding.FieldName = 'cost_single'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStyleContract
            Styles.Header = BackOfficeDataModule.cxStyleContract
            Width = 54
          end
          object TariffGridDBTableView1cost_double: TcxGridDBColumn
            Caption = 'Double'
            DataBinding.FieldName = 'cost_double'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStyleContract
            Styles.Header = BackOfficeDataModule.cxStyleContract
            Width = 51
          end
          object TariffGridDBTableView1cost_single_ac: TcxGridDBColumn
            Caption = 'Single AC'
            DataBinding.FieldName = 'cost_single_ac'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStyleContract
            Styles.Header = BackOfficeDataModule.cxStyleContract
            Width = 67
          end
          object TariffGridDBTableView1cost_double_ac: TcxGridDBColumn
            Caption = 'Double AC'
            DataBinding.FieldName = 'cost_double_ac'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStyleContract
            Styles.Header = BackOfficeDataModule.cxStyleContract
            Width = 69
          end
          object TariffGridDBTableView1mealplans_id: TcxGridDBColumn
            Caption = 'Mealplan'
            DataBinding.FieldName = 'mealplans_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 170
            Properties.KeyFieldNames = 'mealplans_id'
            Properties.ListColumns = <
              item
                Caption = 'Mealplan'
                FieldName = 'mealplan'
              end
              item
                Caption = 'Plan'
                FieldName = 'plan'
              end>
            Properties.ListSource = BackOfficeDataModule.MealPlanDs
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStyleContract
            Styles.Header = BackOfficeDataModule.cxStyleContract
            Width = 57
          end
          object ariffGridDBTableView1ExtraBed: TcxGridDBColumn
            Caption = 'Extra Bed'
            DataBinding.FieldName = 'extrabed'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStyleContract
            Styles.Header = BackOfficeDataModule.cxStyleContract
          end
          object TariffGridDBTableView1nett: TcxGridDBColumn
            Caption = 'Nett'
            DataBinding.FieldName = 'nett'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStyleContract
            Styles.Header = BackOfficeDataModule.cxStyleContract
            Width = 33
          end
          object TariffGridDBTableView1freetransfer: TcxGridDBColumn
            Caption = 'Free Transfer'
            DataBinding.FieldName = 'freetransfer'
            Options.Filtering = False
            Options.Grouping = False
          end
        end
        object TariffGridLevel1: TcxGridLevel
          GridView = TariffGridDBTableView1
        end
      end
    end
    object GroupBox2: TcxGroupBox
      Left = 1
      Top = 316
      Align = alTop
      ParentColor = False
      Style.Color = 15451300
      TabOrder = 3
      Height = 121
      Width = 992
      object MealCostGrid: TcxGrid
        Left = 3
        Top = 18
        Width = 670
        Height = 100
        Align = alLeft
        TabOrder = 0
        object MealCostGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MealCostsDs
          DataController.KeyFieldNames = 'mealcosts_id'
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
          object MealCostGridDBTableView1currencies_pt_id: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'currencies_pt_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 150
            Properties.KeyFieldNames = 'currencies_id'
            Properties.ListColumns = <
              item
                Caption = 'Currency'
                FieldName = 'currency'
              end>
            Properties.ListSource = BackOfficeDataModule.CurrenciesDS
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStylePublished
            Styles.Header = BackOfficeDataModule.cxStylePublished
          end
          object MealCostGridDBTableView1breakfast_pt: TcxGridDBColumn
            Caption = 'Breakfast'
            DataBinding.FieldName = 'breakfast_pt'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStylePublished
            Styles.Header = BackOfficeDataModule.cxStylePublished
            Width = 86
          end
          object MealCostGridDBTableView1lunch_pt: TcxGridDBColumn
            Caption = 'Lunch'
            DataBinding.FieldName = 'lunch_pt'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStylePublished
            Styles.Header = BackOfficeDataModule.cxStylePublished
            Width = 79
          end
          object MealCostGridDBTableView1dinner_pt: TcxGridDBColumn
            Caption = 'Dinner'
            DataBinding.FieldName = 'dinner_pt'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStylePublished
            Styles.Header = BackOfficeDataModule.cxStylePublished
            Width = 79
          end
          object MealCostGridDBTableView1currencies_id: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'currencies_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 150
            Properties.KeyFieldNames = 'currencies_id'
            Properties.ListColumns = <
              item
                Caption = 'Currency'
                FieldName = 'currency'
              end>
            Properties.ListSource = BackOfficeDataModule.CurrenciesDS
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStyleContract
            Styles.Header = BackOfficeDataModule.cxStyleContract
          end
          object MealCostGridDBTableView1breakfast: TcxGridDBColumn
            Caption = 'Breakfast'
            DataBinding.FieldName = 'breakfast'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStyleContract
            Styles.Header = BackOfficeDataModule.cxStyleContract
            Width = 85
          end
          object MealCostGridDBTableView1lunch: TcxGridDBColumn
            Caption = 'Lunch'
            DataBinding.FieldName = 'lunch'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStyleContract
            Styles.Header = BackOfficeDataModule.cxStyleContract
            Width = 76
          end
          object MealCostGridDBTableView1dinner: TcxGridDBColumn
            Caption = 'Dinner'
            DataBinding.FieldName = 'dinner'
            Options.Filtering = False
            Options.Grouping = False
            Styles.Content = BackOfficeDataModule.cxStyleContract
            Styles.Header = BackOfficeDataModule.cxStyleContract
            Width = 75
          end
        end
        object MealCostGridLevel1: TcxGridLevel
          GridView = MealCostGridDBTableView1
        end
      end
      object GroupBox8: TcxGroupBox
        Left = 673
        Top = 18
        Align = alClient
        Caption = ' Taxes Applicable '
        TabOrder = 1
        Height = 100
        Width = 316
        object Label10: TcxLabel
          Left = 5
          Top = 23
          Caption = 'Luxury Tax'
          Transparent = True
        end
        object Label11: TcxLabel
          Left = 5
          Top = 50
          Caption = 'Sales Tax'
          Transparent = True
        end
        object Label12: TcxLabel
          Left = 5
          Top = 77
          Caption = 'Srv. Tax'
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 71
          Top = 21
          DataBinding.DataField = 'luxtax'
          DataBinding.DataSource = SeasonsDs
          Style.Color = 16247513
          TabOrder = 0
          Width = 90
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 71
          Top = 48
          DataBinding.DataField = 'salestax'
          DataBinding.DataSource = SeasonsDs
          Style.Color = 16247513
          TabOrder = 2
          Width = 90
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 71
          Top = 75
          DataBinding.DataField = 'exptax'
          DataBinding.DataSource = SeasonsDs
          Style.Color = 16247513
          TabOrder = 3
          Width = 90
        end
        object Tax_1: TcxDBCheckBox
          Left = 163
          Top = 21
          Caption = 'On Published Tariff'
          DataBinding.DataField = 'luxtaxonpt'
          DataBinding.DataSource = SeasonsDs
          TabOrder = 1
          Transparent = True
          Width = 133
        end
        object Tax_3: TcxDBCheckBox
          Left = 163
          Top = 76
          Caption = 'Not Applicable'
          DataBinding.DataField = 'exptax_notapplicable'
          DataBinding.DataSource = SeasonsDs
          TabOrder = 4
          Transparent = True
          Width = 108
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 235
          Top = 49
          Caption = 'Incl. (CR)'
          DataBinding.DataField = 'salestaxinclusive'
          DataBinding.DataSource = SeasonsDs
          TabOrder = 5
          Transparent = True
          Width = 86
        end
        object cxDBCheckBox6: TcxDBCheckBox
          Left = 162
          Top = 49
          Caption = 'Incl. (PT)'
          DataBinding.DataField = 'salestaxinclusive_pt'
          DataBinding.DataSource = SeasonsDs
          TabOrder = 6
          Transparent = True
          Width = 77
        end
      end
    end
    object GroupBox3: TcxGroupBox
      Left = 1
      Top = 437
      Align = alTop
      Caption = ' Tour Leader Criteria '
      ParentColor = False
      Style.Color = 15451300
      TabOrder = 4
      Height = 67
      Width = 992
      object Label13: TcxLabel
        Left = 13
        Top = 21
        Caption = 'Tour Leader'
        Transparent = True
      end
      object Label14: TcxLabel
        Left = 13
        Top = 44
        Caption = 'Discount'
        Transparent = True
      end
      object Label15: TcxLabel
        Left = 179
        Top = 44
        Caption = '%     Above'
        Transparent = True
      end
      object Label16: TcxLabel
        Left = 341
        Top = 44
        Caption = 'Pax  And Free With'
        Transparent = True
      end
      object Label17: TcxLabel
        Left = 550
        Top = 44
        Caption = 'Pax Or More'
        Transparent = True
      end
      object Label18: TcxLabel
        Left = 672
        Top = 21
        Caption = 'Discount is based on a single room'
        Transparent = True
      end
      object cxDBCheckBox9: TcxDBCheckBox
        Left = 665
        Top = 40
        Caption = 'Click here if the discount is on half a double room'
        DataBinding.DataField = 'tl_halfdouble'
        DataBinding.DataSource = SeasonsDs
        TabOrder = 4
        Transparent = True
        Width = 308
      end
      object TourLeaderLcmb: TcxDBLookupComboBox
        Left = 89
        Top = 21
        DataBinding.DataField = 'policyonescorts_id'
        DataBinding.DataSource = SeasonsDs
        Properties.KeyFieldNames = 'policyonescorts_id'
        Properties.ListColumns = <
          item
            FieldName = 'policy'
          end>
        Properties.ListSource = TourLeaderDs
        Style.Color = 16247513
        TabOrder = 0
        Width = 181
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 88
        Top = 44
        DataBinding.DataField = 'tl_discount'
        DataBinding.DataSource = SeasonsDs
        Style.Color = 16247513
        TabOrder = 1
        Width = 90
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 249
        Top = 44
        DataBinding.DataField = 'tl_discountabove'
        DataBinding.DataSource = SeasonsDs
        Style.Color = 16247513
        TabOrder = 2
        Width = 90
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 457
        Top = 44
        DataBinding.DataField = 'tl_freeabove'
        DataBinding.DataSource = SeasonsDs
        Style.Color = 16247513
        TabOrder = 3
        Width = 90
      end
    end
    object GroupBox4: TcxGroupBox
      Left = 1
      Top = 504
      Align = alTop
      Caption = ' Cost Calculator '
      ParentColor = False
      Style.Color = 15451300
      TabOrder = 5
      Height = 87
      Width = 992
      object Label19: TcxLabel
        Left = 8
        Top = 24
        Caption = 'Singles'
        Transparent = True
      end
      object Label20: TcxLabel
        Left = 8
        Top = 45
        Caption = 'Room Type'
        Transparent = True
      end
      object Label21: TcxLabel
        Left = 8
        Top = 67
        Caption = 'Date Of Travel'
        Transparent = True
      end
      object Label22: TcxLabel
        Left = 254
        Top = 24
        Caption = 'Doubles'
        Transparent = True
      end
      object Label23: TcxLabel
        Left = 391
        Top = 21
        Caption = 'Extra Beds'
        Transparent = True
      end
      object Label24: TcxLabel
        Left = 391
        Top = 44
        Caption = 'Nights'
        Transparent = True
      end
      object Label25: TcxLabel
        Left = 541
        Top = 20
        Caption = 'Number of Pax'
        Transparent = True
      end
      object Label26: TcxLabel
        Left = 541
        Top = 44
        Caption = 'MealPlan'
        Transparent = True
      end
      object Label27: TcxLabel
        Left = 541
        Top = 66
        Caption = 'Exchange Rate'
        Transparent = True
      end
      object Label28: TcxLabel
        Left = 254
        Top = 44
        Caption = 'A/C'
        Transparent = True
      end
      object Label29: TcxLabel
        Left = 254
        Top = 66
        Caption = 'FIT'
        Transparent = True
      end
      object Label30: TcxLabel
        Left = 391
        Top = 66
        Caption = 'USD'
        Transparent = True
      end
      object SinglesTxt: TcxTextEdit
        Left = 104
        Top = 20
        Properties.OnChange = SinglesTxtPropertiesChange
        Style.Color = 16247513
        TabOrder = 0
        Width = 73
      end
      object DoublesTxt: TcxTextEdit
        Left = 309
        Top = 20
        Properties.OnChange = DoublesTxtPropertiesChange
        Style.Color = 16247513
        TabOrder = 1
        Width = 73
      end
      object ExtraBedsTxt: TcxTextEdit
        Left = 459
        Top = 20
        Properties.OnChange = ExtraBedsTxtPropertiesChange
        Style.Color = 16247513
        TabOrder = 2
        Width = 73
      end
      object NightsTxt: TcxTextEdit
        Left = 459
        Top = 41
        Style.Color = 16247513
        TabOrder = 6
        Width = 73
      end
      object NoofPaxTxt: TcxTextEdit
        Left = 634
        Top = 20
        Style.Color = 16247513
        TabOrder = 3
        Width = 73
      end
      object ExchangeRateTxt: TcxTextEdit
        Left = 634
        Top = 63
        Style.Color = 16247513
        TabOrder = 11
        Width = 73
      end
      object TravelDate: TcxDateEdit
        Left = 104
        Top = 63
        Style.Color = 16247513
        TabOrder = 8
        Width = 136
      end
      object DisplayCostBtn: TcxButton
        Left = 885
        Top = 32
        Width = 108
        Height = 25
        Caption = 'Display Cost'
        TabOrder = 15
        OnClick = DisplayCostBtnClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555500000
          55555555000BB3B30555555030BB3303305555030BB0B3B3330555033BBBB333
          330550B3B3BB3BB3B33050B3B33BBBBB333050B3B33BBBBB3B3050B3B333BB0B
          33B050B33333BBB3B3B050BB33333333BB05550B33B3333BB305550BB33330BB
          B0555550BB33B3BB0555555500B3333055555555550000055555}
      end
      object RoomTypeLcmb: TcxLookupComboBox
        Left = 104
        Top = 41
        Properties.DropDownWidth = 200
        Properties.KeyFieldNames = 'roomtypes_id'
        Properties.ListColumns = <
          item
            FieldName = 'roomtype'
          end>
        Properties.ListSource = DefaultRoomTypesDs
        Properties.ValidateOnEnter = False
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 4
        Width = 136
      end
      object MealPlanLcmb: TcxLookupComboBox
        Left = 634
        Top = 41
        Properties.DropDownWidth = 150
        Properties.KeyFieldNames = 'mealplans_id'
        Properties.ListColumns = <
          item
            Caption = 'Plan'
            FieldName = 'plan'
          end
          item
            Caption = 'MealPlan'
            FieldName = 'mealplan'
          end>
        Properties.ListSource = BackOfficeDataModule.MealPlanDs
        Properties.ValidateOnEnter = False
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 7
        Width = 136
      end
      object AcChkBox: TcxCheckBox
        Left = 305
        Top = 43
        TabOrder = 5
        Transparent = True
        Width = 21
      end
      object FitChkBox: TcxCheckBox
        Left = 305
        Top = 65
        TabOrder = 9
        Transparent = True
        Width = 21
      end
      object UsdChkBox: TcxCheckBox
        Left = 456
        Top = 64
        TabOrder = 10
        Transparent = True
        Width = 24
      end
      object WebChkBox: TcxCheckBox
        Left = 784
        Top = 19
        Caption = 'Web Costs'
        TabOrder = 12
        Transparent = True
        Width = 86
      end
      object PackageChkBox: TcxCheckBox
        Left = 784
        Top = 41
        Caption = 'Packages'
        TabOrder = 13
        Transparent = True
        Width = 85
      end
      object ResidentChkBox: TcxCheckBox
        Left = 785
        Top = 64
        Caption = 'Resident'
        TabOrder = 14
        Transparent = True
        Width = 86
      end
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 632
      Top = 592
      Width = 220
      Height = 25
      Buttons.PriorPage.Enabled = False
      Buttons.PriorPage.Visible = False
      Buttons.NextPage.Enabled = False
      Buttons.NextPage.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = SeasonsDs
      TabOrder = 6
    end
    object cxButton1: TcxButton
      Left = 896
      Top = 593
      Width = 75
      Height = 22
      Caption = '&Close'
      TabOrder = 7
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
    object cxButton3: TcxButton
      Left = 14
      Top = 592
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 8
      DropDownMenu = UtilitiesPopup
      Kind = cxbkDropDown
    end
  end
  object HotelSds: TSQLDataSet
    CommandText = 'SELECT * FROM fn_Addressbook(2,'#39'H'#39') '#13#10'WHERE Cities_id = -1'
    DataSource = BackOfficeDataModule.CitiesDS
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 323
    Top = 19
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 343
    Top = 19
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 364
    Top = 19
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
    Left = 378
    Top = 19
  end
  object SeasonsSds: TSQLDataSet
    CommandText = 'seasons'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 25
    Top = 92
  end
  object SeasonsDsp: TDataSetProvider
    DataSet = SeasonsSds
    UpdateMode = upWhereKeyOnly
    Left = 55
    Top = 92
  end
  object SeasonsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SeasonsDsp'
    BeforeInsert = SeasonsCdsBeforeInsert
    AfterInsert = SeasonsCdsAfterInsert
    BeforeEdit = SeasonsCdsBeforeEdit
    BeforePost = SeasonsCdsBeforePost
    AfterPost = SeasonsCdsAfterPost
    BeforeDelete = SeasonsCdsBeforeDelete
    AfterDelete = SeasonsCdsAfterDelete
    AfterScroll = SeasonsCdsAfterScroll
    OnCalcFields = SeasonsCdsCalcFields
    Left = 88
    Top = 92
    object SeasonsCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object SeasonsCdsfromdate: TSQLTimeStampField
      FieldName = 'fromdate'
    end
    object SeasonsCdstodate: TSQLTimeStampField
      FieldName = 'todate'
    end
    object SeasonsCdsfrompax: TBCDField
      FieldName = 'frompax'
      Precision = 10
      Size = 2
    end
    object SeasonsCdsto_pax: TBCDField
      FieldName = 'to_pax'
      Precision = 10
      Size = 2
    end
    object SeasonsCdsgit: TBooleanField
      FieldName = 'git'
    end
    object SeasonsCdsservicecharges: TBCDField
      FieldName = 'servicecharges'
      Precision = 10
      Size = 2
    end
    object SeasonsCdstac: TBCDField
      FieldName = 'tac'
      Precision = 10
      Size = 2
    end
    object SeasonsCdstac_pt: TBCDField
      FieldName = 'tac_pt'
      Precision = 10
      Size = 2
    end
    object SeasonsCdstaconmealplan: TBooleanField
      FieldName = 'taconmealplan'
    end
    object SeasonsCdstaconmealplan_pt: TBooleanField
      FieldName = 'taconmealplan_pt'
    end
    object SeasonsCdsservicechargesonplan: TBooleanField
      FieldName = 'servicechargesonplan'
    end
    object SeasonsCdsclosed: TBooleanField
      FieldName = 'closed'
    end
    object SeasonsCdstl_discount: TBCDField
      FieldName = 'tl_discount'
      Precision = 10
      Size = 2
    end
    object SeasonsCdstl_discountabove: TIntegerField
      FieldName = 'tl_discountabove'
    end
    object SeasonsCdstl_freeabove: TIntegerField
      FieldName = 'tl_freeabove'
    end
    object SeasonsCdstl_halfdouble: TBooleanField
      FieldName = 'tl_halfdouble'
    end
    object SeasonsCdsextrabedcost: TBCDField
      FieldName = 'extrabedcost'
      Precision = 10
      Size = 2
    end
    object SeasonsCdspolicyonescorts_id: TIntegerField
      FieldName = 'policyonescorts_id'
    end
    object SeasonsCdsdayoftheweek: TIntegerField
      FieldName = 'dayoftheweek'
    end
    object SeasonsCdsextrabedpercentage: TBCDField
      FieldName = 'extrabedpercentage'
      Precision = 10
      Size = 2
    end
    object SeasonsCdsluxtax: TBCDField
      FieldName = 'luxtax'
      OnChange = SeasonsCdsluxtaxChange
      Precision = 10
      Size = 2
    end
    object SeasonsCdsluxtaxonpt: TBooleanField
      FieldName = 'luxtaxonpt'
    end
    object SeasonsCdsexptax: TBCDField
      FieldName = 'exptax'
      Precision = 10
      Size = 2
    end
    object SeasonsCdssalestax: TBCDField
      FieldName = 'salestax'
      OnChange = SeasonsCdssalestaxChange
      Precision = 10
      Size = 2
    end
    object SeasonsCdssalestaxinclusive: TBooleanField
      FieldName = 'salestaxinclusive'
    end
    object SeasonsCdsdefault_roomtypes_id: TIntegerField
      FieldName = 'default_roomtypes_id'
    end
    object SeasonsCdsdefault_ac: TBooleanField
      FieldName = 'default_ac'
    end
    object SeasonsCdsexptax_notapplicable: TBooleanField
      FieldName = 'exptax_notapplicable'
    end
    object SeasonsCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Size = 80
      Calculated = True
    end
    object SeasonsCdsseasons_id: TIntegerField
      FieldName = 'seasons_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SeasonsCdssalestaxinclusive_pt: TBooleanField
      FieldName = 'salestaxinclusive_pt'
    end
    object SeasonsCdsSpecialPeriod: TBooleanField
      FieldName = 'SpecialPeriod'
    end
    object SeasonsCdsNotes: TMemoField
      FieldName = 'Notes'
      BlobType = ftMemo
    end
  end
  object SeasonsDs: TDataSource
    DataSet = SeasonsCds
    Left = 116
    Top = 91
  end
  object DefaultRoomTypesSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT r.roomtype, ht.roomtypes_id, ht.Seasons_id '#13#10'FRO' +
      'M hoteltariffsindia ht, roomtypes r'#13#10'WHERE ht.roomtypes_id=r.roo' +
      'mtypes_id'#13#10'AND ht.seasons_id= :seasons_id'#13#10'ORDER BY r.roomtype'
    DataSource = SeasonsDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Seasons_id'
        ParamType = ptInput
        Value = 3504
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 844
    Top = 117
  end
  object DefaultRoomTypesDsp: TDataSetProvider
    DataSet = DefaultRoomTypesSds
    Left = 856
    Top = 117
  end
  object DefaultRoomTypesCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Seasons_id'
    MasterFields = 'seasons_id'
    MasterSource = SeasonsDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'DefaultRoomTypesDsp'
    Left = 868
    Top = 117
    object DefaultRoomTypesCdsroomtype: TStringField
      FieldName = 'roomtype'
      Size = 50
    end
    object DefaultRoomTypesCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object DefaultRoomTypesCdsSeasons_id: TIntegerField
      FieldName = 'Seasons_id'
    end
  end
  object DefaultRoomTypesDs: TDataSource
    DataSet = DefaultRoomTypesCds
    Left = 879
    Top = 118
  end
  object TariffSds: TSQLDataSet
    CommandText = 'hoteltariffsindia'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 49
    Top = 216
  end
  object TariffDsp: TDataSetProvider
    DataSet = TariffSds
    UpdateMode = upWhereKeyOnly
    Left = 79
    Top = 216
  end
  object TariffCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'seasons_id'
    MasterFields = 'seasons_id'
    MasterSource = SeasonsDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TariffDsp'
    BeforeInsert = TariffCdsBeforeInsert
    AfterInsert = TariffCdsAfterInsert
    BeforeEdit = TariffCdsBeforeEdit
    BeforePost = TariffCdsBeforePost
    AfterPost = TariffCdsAfterPost
    BeforeDelete = TariffCdsBeforeDelete
    AfterDelete = TariffCdsAfterDelete
    Left = 110
    Top = 216
    object TariffCdshoteltariffs_id: TIntegerField
      FieldName = 'hoteltariffs_id'
    end
    object TariffCdsseasons_id: TIntegerField
      FieldName = 'seasons_id'
    end
    object TariffCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object TariffCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object TariffCdscurrencies_pt_id: TIntegerField
      FieldName = 'currencies_pt_id'
    end
    object TariffCdscost_single: TBCDField
      FieldName = 'cost_single'
      Precision = 10
      Size = 2
    end
    object TariffCdscost_single_pt: TBCDField
      FieldName = 'cost_single_pt'
      Precision = 10
      Size = 2
    end
    object TariffCdscost_single_ac: TBCDField
      FieldName = 'cost_single_ac'
      Precision = 10
      Size = 2
    end
    object TariffCdscost_single_ac_pt: TBCDField
      FieldName = 'cost_single_ac_pt'
      Precision = 10
      Size = 2
    end
    object TariffCdscost_double: TBCDField
      FieldName = 'cost_double'
      Precision = 10
      Size = 2
    end
    object TariffCdscost_double_pt: TBCDField
      FieldName = 'cost_double_pt'
      Precision = 10
      Size = 2
    end
    object TariffCdscost_double_ac: TBCDField
      FieldName = 'cost_double_ac'
      Precision = 10
      Size = 2
    end
    object TariffCdscost_double_ac_pt: TBCDField
      FieldName = 'cost_double_ac_pt'
      Precision = 10
      Size = 2
    end
    object TariffCdsnett: TBooleanField
      FieldName = 'nett'
    end
    object TariffCdsnett_pt: TBooleanField
      FieldName = 'nett_pt'
    end
    object TariffCdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object TariffCdsmealplans_pt_id: TIntegerField
      FieldName = 'mealplans_pt_id'
    end
    object TariffCdsfreetransfer: TBooleanField
      FieldName = 'freetransfer'
    end
    object TariffCdsextrabed: TBCDField
      FieldName = 'extrabed'
      DisplayFormat = '#,##0'
      Precision = 10
      Size = 2
    end
    object TariffCdsextrabed_pt: TBCDField
      FieldName = 'extrabed_pt'
      DisplayFormat = '#,##0'
      Precision = 10
      Size = 2
    end
  end
  object TariffDs: TDataSource
    DataSet = TariffCds
    Left = 140
    Top = 215
  end
  object MealCostsSds: TSQLDataSet
    Active = True
    CommandText = 'mealcostsindia'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'seasons_id'
        ParamType = ptInput
        Value = 1707
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 65
    Top = 352
  end
  object MealCostsDsp: TDataSetProvider
    DataSet = MealCostsSds
    UpdateMode = upWhereKeyOnly
    Left = 95
    Top = 352
  end
  object MealCostsCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'seasons_id'
    MasterFields = 'seasons_id'
    MasterSource = SeasonsDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'MealCostsDsp'
    BeforeInsert = MealCostsCdsBeforeInsert
    AfterInsert = MealCostsCdsAfterInsert
    BeforeEdit = MealCostsCdsBeforeEdit
    BeforePost = MealCostsCdsBeforePost
    AfterPost = MealCostsCdsAfterPost
    BeforeDelete = MealCostsCdsBeforeDelete
    AfterDelete = MealCostsCdsAfterDelete
    Left = 126
    Top = 353
    object MealCostsCdsmealcosts_id: TIntegerField
      FieldName = 'mealcosts_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MealCostsCdsseasons_id: TIntegerField
      FieldName = 'seasons_id'
    end
    object MealCostsCdsbreakfast: TBCDField
      FieldName = 'breakfast'
      Precision = 10
      Size = 2
    end
    object MealCostsCdsbreakfast_pt: TBCDField
      FieldName = 'breakfast_pt'
      Precision = 10
      Size = 2
    end
    object MealCostsCdslunch: TBCDField
      FieldName = 'lunch'
      Precision = 10
      Size = 2
    end
    object MealCostsCdslunch_pt: TBCDField
      FieldName = 'lunch_pt'
      Precision = 10
      Size = 2
    end
    object MealCostsCdsdinner: TBCDField
      FieldName = 'dinner'
      Precision = 10
      Size = 2
    end
    object MealCostsCdsdinner_pt: TBCDField
      FieldName = 'dinner_pt'
      Precision = 10
      Size = 2
    end
    object MealCostsCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MealCostsCdscurrencies_pt_id: TIntegerField
      FieldName = 'currencies_pt_id'
    end
  end
  object MealCostsDs: TDataSource
    DataSet = MealCostsCds
    Left = 156
    Top = 351
  end
  object TourLeaderSds: TSQLDataSet
    CommandText = 'SELECT * FROM PolicyOnEscorts ORDER BY Policy'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 290
    Top = 454
  end
  object TourLeaderDsp: TDataSetProvider
    DataSet = TourLeaderSds
    Left = 318
    Top = 454
  end
  object TourLeaderCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourLeaderDsp'
    Left = 347
    Top = 454
    object TourLeaderCdspolicyonescorts_id: TIntegerField
      FieldName = 'policyonescorts_id'
    end
    object TourLeaderCdspolicy: TStringField
      FieldName = 'policy'
      Size = 100
    end
  end
  object TourLeaderDs: TDataSource
    DataSet = TourLeaderCds
    Left = 377
    Top = 454
  end
  object UtilitiesPopup: TPopupMenu
    Left = 57
    Top = 588
    object CopyCosts1: TMenuItem
      Caption = 'Copy Costs'
      OnClick = CopyCosts1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CopyfromGITtoFIT1: TMenuItem
      Caption = 'Copy from GIT to FIT'
      OnClick = CopyfromGITtoFIT1Click
    end
    object CopyfromFITtoGIT1: TMenuItem
      Caption = 'Copy from FIT to GIT'
      OnClick = CopyfromFITtoGIT1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object HotelPriceList1: TMenuItem
      Caption = 'Hotel Price List'
      OnClick = HotelPriceList1Click
    end
  end
  object WefSds: TSQLDataSet
    CommandText = 
      'select distinct FromDate AS Wef from Seasons order by FromDate d' +
      'esc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 624
    Top = 27
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 640
    Top = 27
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WefDsp'
    Left = 656
    Top = 27
    object WefCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 672
    Top = 27
  end
end
