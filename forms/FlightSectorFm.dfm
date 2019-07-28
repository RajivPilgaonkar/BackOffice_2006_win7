object FlightSectorForm: TFlightSectorForm
  Left = 361
  Top = 0
  Width = 985
  Height = 629
  Caption = 'Flight Sector Form'
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
  object TopPnl: TPanel
    Left = 0
    Top = 0
    Width = 969
    Height = 549
    Align = alClient
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 47
      Align = alClient
      TabOrder = 1
      Height = 501
      Width = 967
      object cxPageControl1: TcxPageControl
        Left = 3
        Top = 18
        Width = 961
        Height = 480
        ActivePage = FlightsTab
        Align = alClient
        TabOrder = 0
        OnChange = cxPageControl1Change
        ClientRectBottom = 474
        ClientRectLeft = 3
        ClientRectRight = 955
        ClientRectTop = 26
        object FlightsTab: TcxTabSheet
          Caption = 'Flights'
          ImageIndex = 0
          object FlightsGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 952
            Height = 448
            Align = alClient
            TabOrder = 0
            object FlightsGridDBTableView1: TcxGridDBTableView
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
              DataController.DataSource = FlightsDS
              DataController.KeyFieldNames = 'flightsectorfaresindia_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object FlightsGridDBTableView1wef: TcxGridDBColumn
                Caption = 'With Effect From'
                DataBinding.FieldName = 'wef'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                SortIndex = 0
                SortOrder = soAscending
                Width = 106
              end
              object FlightsGridDBTableView1wet: TcxGridDBColumn
                Caption = 'With Effect To'
                DataBinding.FieldName = 'wet'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Width = 96
              end
              object FlightsGridDBTableView1flightno: TcxGridDBColumn
                Caption = 'Flight No'
                DataBinding.FieldName = 'flightno'
                Width = 76
              end
              object FlightsGridDBTableView1departure: TcxGridDBColumn
                Caption = 'Departure'
                DataBinding.FieldName = 'departure'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.UseCtrlIncrement = True
                Options.Filtering = False
                Width = 68
              end
              object FlightsGridDBTableView1arrival: TcxGridDBColumn
                Caption = 'Arrival'
                DataBinding.FieldName = 'arrival'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.UseCtrlIncrement = True
                Options.Filtering = False
                Width = 48
              end
              object FlightsGridDBTableView1FlightAirline: TcxGridDBColumn
                Caption = 'Operating Carrier'
                DataBinding.FieldName = 'FlightAirline'
                Width = 87
              end
              object FlightsGridDBTableView1FlightVia: TcxGridDBColumn
                Caption = 'Via'
                DataBinding.FieldName = 'FlightVia'
                Options.Filtering = False
                Options.Grouping = False
                Width = 87
              end
              object FlightsGridDBTableView1FlightCompanies_id: TcxGridDBColumn
                Caption = 'Carrier'
                DataBinding.FieldName = 'FlightCompanies_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 300
                Properties.KeyFieldNames = 'FlightCompanies_id'
                Properties.ListColumns = <
                  item
                    MinWidth = 300
                    FieldName = 'FlightCompany'
                  end>
                Properties.ListSource = FlightCompaniesDS
                Width = 100
              end
              object FlightsGridDBTableView1DaysName: TcxGridDBColumn
                Caption = 'Days'
                DataBinding.FieldName = 'DaysName'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = FlightsGridDBTableView1DaysNamePropertiesButtonClick
                Options.Filtering = False
                Width = 62
              end
              object FlightsGridDBTableView1overnight: TcxGridDBColumn
                Caption = 'Overnight'
                DataBinding.FieldName = 'overnight'
                Width = 79
              end
              object FlightsGridDBTableView1domestic: TcxGridDBColumn
                Caption = 'Domestic'
                DataBinding.FieldName = 'domestic'
                Width = 74
              end
              object FlightsGridDBTableView1duration: TcxGridDBColumn
                Caption = 'Duration'
                DataBinding.FieldName = 'duration'
                Options.Filtering = False
                Width = 67
              end
              object FlightsGridDBTableView1jcl_usd: TcxGridDBColumn
                Caption = 'J Class $'
                DataBinding.FieldName = 'jcl_usd'
                Options.Filtering = False
                Width = 65
              end
              object FlightsGridDBTableView1ycl_usd: TcxGridDBColumn
                Caption = 'Y Class $'
                DataBinding.FieldName = 'ycl_usd'
                Options.Filtering = False
                Width = 64
              end
              object FlightsGridDBTableView1jcl: TcxGridDBColumn
                Caption = 'J Class'
                DataBinding.FieldName = 'jcl'
                Options.Filtering = False
                Width = 58
              end
              object FlightsGridDBTableView1ycl: TcxGridDBColumn
                Caption = 'Y Class'
                DataBinding.FieldName = 'ycl'
                Options.Filtering = False
                Width = 58
              end
              object FlightsGridDBTableView1Constant1_amt: TcxGridDBColumn
                Caption = 'Constant_1'
                DataBinding.FieldName = 'Constant1_amt'
                Options.Filtering = False
                Options.Grouping = False
                Width = 71
              end
              object FlightsGridDBTableView1Constant2_amt: TcxGridDBColumn
                Caption = 'Constant_2'
                DataBinding.FieldName = 'Constant2_amt'
                Options.Filtering = False
                Options.Grouping = False
                Width = 81
              end
              object FlightsGridDBTableView1aircrafttypes_id: TcxGridDBColumn
                Caption = 'Aircraft Type'
                DataBinding.FieldName = 'aircrafttypes_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 100
                Properties.KeyFieldNames = 'AircraftTypes_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Aircraft'
                  end>
                Properties.ListSource = AirCraftDS
                Width = 88
              end
              object FlightsGridDBTableView1stops: TcxGridDBColumn
                Caption = 'Stops'
                DataBinding.FieldName = 'stops'
                Options.Filtering = False
                Width = 46
              end
            end
            object FlightsGridLevel1: TcxGridLevel
              GridView = FlightsGridDBTableView1
            end
          end
        end
        object BusesTab: TcxTabSheet
          Caption = 'Buses'
          ImageIndex = 1
          object BusesGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 952
            Height = 448
            Align = alClient
            TabOrder = 0
            object BusesGridDBTableView1: TcxGridDBTableView
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
              DataController.DataSource = BusesDS
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
              object BusesGridDBTableView1wef: TcxGridDBColumn
                Caption = 'With Effect From'
                DataBinding.FieldName = 'wef'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Width = 107
              end
              object BusesGridDBTableView1wet: TcxGridDBColumn
                Caption = 'With Effect To'
                DataBinding.FieldName = 'wet'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Width = 94
              end
              object BusesGridDBTableView1busno: TcxGridDBColumn
                Caption = 'Bus No'
                DataBinding.FieldName = 'busno'
                Width = 71
              end
              object BusesGridDBTableView1departure: TcxGridDBColumn
                Caption = 'Departure'
                DataBinding.FieldName = 'departure'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Width = 75
              end
              object BusesGridDBTableView1arrival: TcxGridDBColumn
                Caption = 'Arrival'
                DataBinding.FieldName = 'arrival'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Width = 63
              end
              object BusesGridDBTableView1DaysName: TcxGridDBColumn
                Caption = 'Days'
                DataBinding.FieldName = 'DaysName'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = BussesGridDBTableView1DaysNamePropertiesButtonClick
                Options.Filtering = False
                Width = 66
              end
              object BusesGridDBTableView1overnight: TcxGridDBColumn
                Caption = 'Overnight'
                DataBinding.FieldName = 'overnight'
                Width = 77
              end
              object BusesGridDBTableView1domestic: TcxGridDBColumn
                Caption = 'Domestic'
                DataBinding.FieldName = 'domestic'
                Width = 76
              end
              object BusesGridDBTableView1class_id: TcxGridDBColumn
                Caption = 'Class'
                DataBinding.FieldName = 'class_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'Class_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Class'
                  end>
                Properties.ListSource = ClassDS
                Width = 94
              end
              object BusesGridDBTableView1cost: TcxGridDBColumn
                Caption = 'Cost'
                DataBinding.FieldName = 'cost'
                Options.Filtering = False
              end
              object BusesGridDBTableView1currencies_id: TcxGridDBColumn
                Caption = 'Currency'
                DataBinding.FieldName = 'currencies_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'currencies_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'currency'
                  end>
                Properties.ListSource = BackOfficeDataModule.CurrenciesDS
                Width = 73
              end
            end
            object BusesGridLevel1: TcxGridLevel
              GridView = BusesGridDBTableView1
            end
          end
        end
        object TrainsTab: TcxTabSheet
          Caption = 'Trains'
          ImageIndex = 2
          object TrainsGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 952
            Height = 448
            Align = alClient
            TabOrder = 0
            object TrainsGridDBTableView1: TcxGridDBTableView
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
              DataController.DataSource = TrainsDS
              DataController.KeyFieldNames = 'TmpTrains_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object TrainsGridDBTableView1wef: TcxGridDBColumn
                Caption = 'With Effect From'
                DataBinding.FieldName = 'wef'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Width = 127
              end
              object TrainsGridDBTableView1wet: TcxGridDBColumn
                Caption = 'With Effect To'
                DataBinding.FieldName = 'wet'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.ShowTime = False
                Options.Filtering = False
                Width = 117
              end
              object TrainsGridDBTableView1trainno: TcxGridDBColumn
                Caption = 'Train No'
                DataBinding.FieldName = 'trainno'
              end
              object TrainsGridDBTableView1departure: TcxGridDBColumn
                DataBinding.FieldName = 'departure'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.UseCtrlIncrement = True
                Options.Filtering = False
                Width = 103
              end
              object TrainsGridDBTableView1arrival: TcxGridDBColumn
                DataBinding.FieldName = 'arrival'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.UseCtrlIncrement = True
                Options.Filtering = False
                Width = 99
              end
              object TrainsGridDBTableView1DaysName: TcxGridDBColumn
                DataBinding.FieldName = 'Days'
                Options.Filtering = False
                Width = 115
              end
              object TrainsGridDBTableView1trains_id: TcxGridDBColumn
                Caption = 'Train Name'
                DataBinding.FieldName = 'trains_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 450
                Properties.KeyFieldNames = 'Trains_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'TrainName'
                  end>
                Properties.ListSource = TrainLookUpDS
                Width = 173
              end
              object TrainsGridDBTableView1t1c: TcxGridDBColumn
                Caption = '1 Class'
                DataBinding.FieldName = 'T1C'
                Width = 78
              end
              object TrainsGridDBTableView1t1c_ac: TcxGridDBColumn
                Caption = '1 Class A/C'
                DataBinding.FieldName = 'T1C_AC'
                Width = 102
              end
              object TrainsGridDBTableView1t2c: TcxGridDBColumn
                Caption = '2 Class'
                DataBinding.FieldName = 'T2C'
              end
              object TrainsGridDBTableView1t2c_ac_2t: TcxGridDBColumn
                Caption = '2 Class A/c 2 Tier'
                DataBinding.FieldName = 'T2C_AC_2T'
                Width = 134
              end
              object TrainsGridDBTableView1t2c_ac_3t: TcxGridDBColumn
                Caption = '2 Class A/c 3 Tier'
                DataBinding.FieldName = 'T2C_AC_3T'
                Width = 134
              end
              object TrainsGridDBTableView1ac_cc: TcxGridDBColumn
                Caption = 'A/C Chair'
                DataBinding.FieldName = 'AC_CC'
              end
              object TrainsGridDBTableView1ac_cce: TcxGridDBColumn
                Caption = 'A/C Exe Chair'
                DataBinding.FieldName = 'AC_CCE'
                Width = 116
              end
              object TrainsGridDBTableView1sleeper: TcxGridDBColumn
                DataBinding.FieldName = 'Sleeper'
              end
              object TrainsGridDBTableView1FromStation: TcxGridDBColumn
                Caption = 'From Station'
                DataBinding.FieldName = 'FromStation'
                Options.Filtering = False
                Options.Grouping = False
                Width = 92
              end
              object TrainsGridDBTableView1ToStation: TcxGridDBColumn
                Caption = 'To Station'
                DataBinding.FieldName = 'ToStation'
                Options.Filtering = False
                Options.Grouping = False
                Width = 96
              end
              object rainsGridDBTableView1Nights: TcxGridDBColumn
                DataBinding.FieldName = 'Nights'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
              end
              object rainsGridDBTableView1Overnight: TcxGridDBColumn
                DataBinding.FieldName = 'Overnight'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
              end
            end
            object TrainsGridLevel1: TcxGridLevel
              GridView = TrainsGridDBTableView1
            end
          end
        end
        object FerriesTab: TcxTabSheet
          Caption = 'Ferries'
          ImageIndex = 3
          object FerriesGrid: TcxGrid
            Left = 0
            Top = 0
            Width = 952
            Height = 448
            Align = alClient
            TabOrder = 0
            object FerriesGridDBTableView1: TcxGridDBTableView
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
              DataController.DataSource = FerriesDS
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object FerriesGridDBTableView1wef: TcxGridDBColumn
                Caption = 'With Effect From'
                DataBinding.FieldName = 'wef'
                Options.Filtering = False
                Width = 135
              end
              object FerriesGridDBTableView1wet: TcxGridDBColumn
                Caption = 'With Effect To'
                DataBinding.FieldName = 'wet'
                Options.Filtering = False
                Width = 123
              end
              object FerriesGridDBTableView1ferryno: TcxGridDBColumn
                Caption = 'Ferry No'
                DataBinding.FieldName = 'ferryno'
                Width = 96
              end
              object FerriesGridDBTableView1departure: TcxGridDBColumn
                Caption = 'Departure'
                DataBinding.FieldName = 'departure'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Width = 99
              end
              object FerriesGridDBTableView1arrival: TcxGridDBColumn
                Caption = 'Arrival'
                DataBinding.FieldName = 'arrival'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Options.Filtering = False
                Width = 83
              end
              object FerriesGridDBTableView1nights: TcxGridDBColumn
                Caption = 'Nights'
                DataBinding.FieldName = 'nights'
                Options.Filtering = False
              end
              object FerriesGridDBTableView1domestic: TcxGridDBColumn
                Caption = 'Domestic'
                DataBinding.FieldName = 'domestic'
                Width = 86
              end
              object FerriesGridDBTableView1DaysName: TcxGridDBColumn
                Caption = 'Days Of Operation'
                DataBinding.FieldName = 'DaysName'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = FerriesGridDBTableView1DaysNamePropertiesButtonClick
                Options.Filtering = False
                Width = 132
              end
              object FerriesGridDBTableView1class_id: TcxGridDBColumn
                Caption = 'Class'
                DataBinding.FieldName = 'class_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'Class_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Class'
                  end>
                Properties.ListSource = ClassDS
                Width = 87
              end
              object FerriesGridDBTableView1cost: TcxGridDBColumn
                Caption = 'Cost'
                DataBinding.FieldName = 'cost'
                Options.Filtering = False
                Width = 75
              end
              object FerriesGridDBTableView1currencies_id: TcxGridDBColumn
                Caption = 'Currency'
                DataBinding.FieldName = 'currencies_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 150
                Properties.KeyFieldNames = 'currencies_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'currency'
                  end>
                Properties.ListSource = BackOfficeDataModule.CurrenciesDS
                SortIndex = 0
                SortOrder = soAscending
                Width = 107
              end
            end
            object FerriesGridLevel1: TcxGridLevel
              GridView = FerriesGridDBTableView1
            end
          end
        end
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      TabOrder = 0
      OnClick = cxGroupBox2Click
      Height = 46
      Width = 967
      object WefLabel: TLabel
        Left = 733
        Top = 25
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Filter Date'
        Transparent = True
      end
      object Label1: TLabel
        Left = 285
        Top = 26
        Width = 41
        Height = 13
        Caption = 'To City'
        Transparent = True
      end
      object Label2: TLabel
        Left = 16
        Top = 26
        Width = 53
        Height = 13
        Caption = 'From City'
        Transparent = True
      end
      object cxWefDateEdit: TcxDateEdit
        Left = 799
        Top = 21
        TabOrder = 2
        OnExit = cxWefDateEditExit
        OnKeyPress = FromCityLcmbKeyPress
        Width = 107
      end
      object BitBtn3: TBitBtn
        Left = 910
        Top = 20
        Width = 31
        Height = 23
        TabOrder = 3
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300033300000
          00003777FF377777777707070330FFFFFFF077777F37F3FF3FF707370330F00F
          00F077F77F37F773773707370330FFFFFFF077F77F37F3FFFF3707070330F000
          0FF077777337F777733730003330FFFFFFF037773337F3FF3FF733033330F00F
          0000337FFF37F773777733000330FFFF0FF033777FF7F3FF7F3733007030F08F
          0F03337777F7F7737F7330703700FFFF003337773777FFFF7733307333700000
          0333377FF37777777FFF33073070333000033377F777FF37777F333077000307
          7770333777777F7777773333003300003300333377337777FF77333333333307
          7770333333333377777733333333333000033333333333377773}
        NumGlyphs = 2
      end
      object FromCityLcmb: TcxLookupComboBox
        Left = 77
        Top = 22
        Properties.KeyFieldNames = 'Cities_id'
        Properties.ListColumns = <
          item
            FieldName = 'City'
          end>
        Properties.ListSource = FromCityDS
        Properties.OnEditValueChanged = FromCityLcmbPropertiesEditValueChanged
        TabOrder = 0
        OnExit = FromCityLcmbExit
        OnKeyPress = FromCityLcmbKeyPress
        Width = 184
      end
      object ToCityLcmb: TcxLookupComboBox
        Left = 330
        Top = 22
        Properties.KeyFieldNames = 'Cities_id'
        Properties.ListColumns = <
          item
            FieldName = 'City'
          end>
        Properties.ListSource = ToCityDS
        TabOrder = 1
        OnExit = FromCityLcmbExit
        OnKeyPress = FromCityLcmbKeyPress
        Width = 196
      end
    end
  end
  object BottomPnl: TPanel
    Left = 0
    Top = 549
    Width = 969
    Height = 42
    Align = alBottom
    TabOrder = 1
    object OKBtn: TBitBtn
      Left = 347
      Top = 9
      Width = 90
      Height = 25
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      NumGlyphs = 2
    end
    object CancelBtn: TBitBtn
      Left = 539
      Top = 9
      Width = 90
      Height = 25
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
      NumGlyphs = 2
    end
    object CloseBtn: TcxButton
      Left = 870
      Top = 9
      Width = 90
      Height = 26
      Caption = 'Clos&e'
      TabOrder = 2
      Visible = False
      OnClick = CloseBtnClick
      NumGlyphs = 2
    end
    object UtilitiesButton: TcxButton
      Left = 14
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 3
      DropDownMenu = UtilitiesPopup
      Kind = cxbkDropDown
    end
    object cxButton1: TcxButton
      Left = 152
      Top = 8
      Width = 153
      Height = 25
      Caption = 'Train Costs in Excel'
      TabOrder = 4
      OnClick = cxButton1Click
    end
  end
  object FromCityDS: TDataSource
    DataSet = FromCityCds
    Left = 110
    Top = 16
  end
  object FromCityCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FromCityDsp'
    Left = 120
    Top = 16
    object FromCityCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object FromCityCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object FromCityDsp: TDataSetProvider
    DataSet = FromCitySds
    Left = 136
    Top = 16
  end
  object FromCitySds: TSQLDataSet
    CommandText = 'SELECT Cities_id, City FROM Cities'#13#10'ORDER BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 154
    Top = 15
  end
  object ToCityDS: TDataSource
    DataSet = ToCityCds
    Left = 358
    Top = 16
  end
  object ToCityCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ToCityDsp'
    Left = 368
    Top = 16
    object ToCityCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object ToCityCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object ToCityDsp: TDataSetProvider
    DataSet = ToCitySds
    Left = 384
    Top = 16
  end
  object ToCitySds: TSQLDataSet
    CommandText = 'SELECT Cities_id, City FROM Cities'#13#10'ORDER BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 402
    Top = 15
  end
  object FlightsDS: TDataSource
    DataSet = FlightsCds
    Left = 22
    Top = 128
  end
  object FlightsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FlightsDsp'
    BeforeInsert = FlightsCdsBeforeInsert
    AfterInsert = FlightsCdsAfterInsert
    BeforeEdit = FlightsCdsBeforeEdit
    BeforePost = FlightsCdsBeforePost
    AfterPost = FlightsCdsAfterPost
    BeforeDelete = FlightsCdsBeforeDelete
    AfterDelete = FlightsCdsAfterPost
    OnCalcFields = FlightsCdsCalcFields
    Left = 32
    Top = 128
    object FlightsCdsflightsectorfaresindia_id: TIntegerField
      FieldName = 'flightsectorfaresindia_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FlightsCdsflights_id: TIntegerField
      FieldName = 'flights_id'
    end
    object FlightsCdsdays: TSmallintField
      FieldName = 'days'
    end
    object FlightsCdsflightno: TStringField
      FieldName = 'flightno'
      Size = 50
    end
    object FlightsCdsstops: TSmallintField
      FieldName = 'stops'
    end
    object FlightsCdsdomestic: TBooleanField
      FieldName = 'domestic'
    end
    object FlightsCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object FlightsCdswet: TSQLTimeStampField
      FieldName = 'wet'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object FlightsCdsovernight: TBooleanField
      FieldName = 'overnight'
    end
    object FlightsCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object FlightsCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object FlightsCdsaircrafttypes_id: TIntegerField
      FieldName = 'aircrafttypes_id'
    end
    object FlightsCdsdeparture: TSQLTimeStampField
      FieldName = 'departure'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object FlightsCdsarrival: TSQLTimeStampField
      FieldName = 'arrival'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object FlightsCdsduration: TStringField
      FieldName = 'duration'
      Size = 254
    end
    object FlightsCdsjcl: TFMTBCDField
      FieldName = 'jcl'
      Precision = 15
    end
    object FlightsCdsycl: TFMTBCDField
      FieldName = 'ycl'
      Precision = 15
    end
    object FlightsCdsjcl_usd: TFMTBCDField
      FieldName = 'jcl_usd'
      Precision = 15
    end
    object FlightsCdsycl_usd: TFMTBCDField
      FieldName = 'ycl_usd'
      Precision = 15
    end
    object FlightsCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Size = 80
      Calculated = True
    end
    object FlightsCdsConstant1_amt: TFMTBCDField
      FieldName = 'Constant1_amt'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object FlightsCdsConstant2_amt: TFMTBCDField
      FieldName = 'Constant2_amt'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object FlightsCdsFlightVia: TStringField
      FieldName = 'FlightVia'
      Size = 100
    end
    object FlightsCdsFlightCompanies_id: TIntegerField
      FieldName = 'FlightCompanies_id'
    end
    object FlightsCdsFlightAirline: TStringField
      FieldName = 'FlightAirline'
      Size = 100
    end
  end
  object FlightsDsp: TDataSetProvider
    DataSet = FlightsSds
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 128
  end
  object FlightsSds: TSQLDataSet
    CommandText = 'select * from FlightSectorFaresIndia where From_Cities_id = -1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 66
    Top = 127
  end
  object BusesDS: TDataSource
    DataSet = BusesCds
    Left = 22
    Top = 192
  end
  object BusesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BusesDsp'
    BeforeInsert = FlightsCdsBeforeInsert
    AfterInsert = BusesCdsAfterInsert
    BeforeEdit = BusesCdsBeforeEdit
    BeforePost = BusesCdsBeforePost
    AfterPost = BusesCdsAfterPost
    BeforeDelete = BusesCdsBeforeDelete
    AfterDelete = BusesCdsAfterPost
    OnCalcFields = BusesCdsCalcFields
    Left = 32
    Top = 192
    object BusesCdsbussectorfaresindia_id: TIntegerField
      FieldName = 'bussectorfaresindia_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object BusesCdsbuses_id: TIntegerField
      FieldName = 'buses_id'
    end
    object BusesCdsdays: TSmallintField
      FieldName = 'days'
    end
    object BusesCdsbusno: TStringField
      FieldName = 'busno'
      Size = 50
    end
    object BusesCdsstops: TSmallintField
      FieldName = 'stops'
    end
    object BusesCdsdomestic: TBooleanField
      FieldName = 'domestic'
    end
    object BusesCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object BusesCdswet: TSQLTimeStampField
      FieldName = 'wet'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object BusesCdsovernight: TBooleanField
      FieldName = 'overnight'
    end
    object BusesCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object BusesCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object BusesCdsdeparture: TSQLTimeStampField
      FieldName = 'departure'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object BusesCdsarrival: TSQLTimeStampField
      FieldName = 'arrival'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object BusesCdsduration: TStringField
      FieldName = 'duration'
      Size = 254
    end
    object BusesCdscostnonac: TFMTBCDField
      FieldName = 'costnonac'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object BusesCdscostac: TFMTBCDField
      FieldName = 'costac'
      DisplayFormat = '#,##0.00'
      Precision = 15
    end
    object BusesCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object BusesCdscost: TBCDField
      FieldName = 'cost'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object BusesCdsclass_id: TIntegerField
      FieldName = 'class_id'
    end
    object BusesCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Calculated = True
    end
  end
  object BusesDsp: TDataSetProvider
    DataSet = BusesSds
    Left = 48
    Top = 192
  end
  object BusesSds: TSQLDataSet
    CommandText = 'bussectorfaresindia'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 66
    Top = 191
  end
  object TrainsDS: TDataSource
    DataSet = TrainsCds
    Left = 22
    Top = 256
  end
  object TrainsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainsDsp'
    BeforeInsert = TrainsCdsBeforeInsert
    BeforeEdit = TrainsCdsBeforeEdit
    BeforeDelete = TrainsCdsBeforeDelete
    OnCalcFields = TrainsCdsCalcFields
    Left = 32
    Top = 256
    object TrainsCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object TrainsCdsWet: TSQLTimeStampField
      FieldName = 'Wet'
    end
    object TrainsCdsDayOfOperation: TIntegerField
      FieldName = 'DayOfOperation'
    end
    object TrainsCdsArrival: TSQLTimeStampField
      FieldName = 'Arrival'
      DisplayFormat = 'HH:mm'
    end
    object TrainsCdsDeparture: TSQLTimeStampField
      FieldName = 'Departure'
      DisplayFormat = 'HH:mm'
    end
    object TrainsCdskms: TIntegerField
      FieldName = 'kms'
    end
    object TrainsCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object TrainsCdsTrains_id: TIntegerField
      FieldName = 'Trains_id'
    end
    object TrainsCdsT1C: TFMTBCDField
      FieldName = 'T1C'
      Precision = 15
      Size = 2
    end
    object TrainsCdsT1C_AC: TFMTBCDField
      FieldName = 'T1C_AC'
      Precision = 15
      Size = 2
    end
    object TrainsCdsT2C: TFMTBCDField
      FieldName = 'T2C'
      Precision = 15
      Size = 2
    end
    object TrainsCdsT2C_AC_2T: TFMTBCDField
      FieldName = 'T2C_AC_2T'
      Precision = 15
      Size = 2
    end
    object TrainsCdsT2C_AC_3T: TFMTBCDField
      FieldName = 'T2C_AC_3T'
      Precision = 15
      Size = 2
    end
    object TrainsCdsAC_CC: TFMTBCDField
      FieldName = 'AC_CC'
      Precision = 15
      Size = 2
    end
    object TrainsCdsAC_CCE: TFMTBCDField
      FieldName = 'AC_CCE'
      Precision = 15
      Size = 2
    end
    object TrainsCdsSleeper: TFMTBCDField
      FieldName = 'Sleeper'
      Precision = 15
      Size = 2
    end
    object TrainsCdsTrainCategories_id: TIntegerField
      FieldName = 'TrainCategories_id'
    end
    object TrainsCdsTmpTrains_id: TIntegerField
      FieldName = 'TmpTrains_id'
    end
    object TrainsCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Calculated = True
    end
    object TrainsCdsTrainName: TStringField
      FieldName = 'TrainName'
      Size = 100
    end
    object TrainsCdsFromStation: TStringField
      FieldName = 'FromStation'
      Size = 50
    end
    object TrainsCdsToStation: TStringField
      FieldName = 'ToStation'
      Size = 50
    end
    object TrainsCdsFromStations_id: TIntegerField
      FieldName = 'FromStations_id'
    end
    object TrainsCdsToStations_id: TIntegerField
      FieldName = 'ToStations_id'
    end
    object TrainsCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object TrainsCdsOvernight: TBooleanField
      FieldName = 'Overnight'
    end
    object TrainsCdsDays: TStringField
      FieldName = 'Days'
      Size = 30
    end
  end
  object TrainsDsp: TDataSetProvider
    DataSet = TrainsSds
    Left = 48
    Top = 256
  end
  object TrainsSds: TSQLDataSet
    CommandText = 'exec p_TmpTrains -1, -1, '#39'05/01/2006'#39', 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 66
    Top = 255
  end
  object FerriesDS: TDataSource
    DataSet = FerriesCds
    Left = 22
    Top = 320
  end
  object FerriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FerriesDsp'
    BeforeInsert = FlightsCdsBeforeInsert
    AfterInsert = FerriesCdsAfterInsert
    BeforeEdit = FerriesCdsBeforeEdit
    BeforePost = FerriesCdsBeforePost
    AfterPost = FerriesCdsAfterDelete
    BeforeDelete = FerriesCdsBeforeDelete
    AfterDelete = FerriesCdsAfterDelete
    OnCalcFields = FerriesCdsCalcFields
    Left = 32
    Top = 320
    object FerriesCdsferries_id: TIntegerField
      FieldName = 'ferries_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FerriesCdsdays: TSmallintField
      FieldName = 'days'
    end
    object FerriesCdsferryno: TStringField
      FieldName = 'ferryno'
      Size = 50
    end
    object FerriesCdsdomestic: TBooleanField
      FieldName = 'domestic'
    end
    object FerriesCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object FerriesCdswet: TSQLTimeStampField
      FieldName = 'wet'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object FerriesCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object FerriesCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object FerriesCdsdeparture: TSQLTimeStampField
      FieldName = 'departure'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object FerriesCdsnights: TIntegerField
      FieldName = 'nights'
    end
    object FerriesCdsclass_id: TIntegerField
      FieldName = 'class_id'
    end
    object FerriesCdscost: TBCDField
      FieldName = 'cost'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object FerriesCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object FerriesCdsarrival: TSQLTimeStampField
      FieldName = 'arrival'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object FerriesCdsduration: TStringField
      FieldName = 'duration'
      Size = 254
    end
    object FerriesCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Calculated = True
    end
  end
  object FerriesDsp: TDataSetProvider
    DataSet = FerriesSds
    Left = 48
    Top = 320
  end
  object FerriesSds: TSQLDataSet
    CommandText = 'ferries'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 66
    Top = 319
  end
  object ClassDS: TDataSource
    DataSet = ClassCds
    Left = 156
    Top = 125
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 164
    Top = 125
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 180
    Top = 125
  end
  object ClassSds: TSQLDataSet
    CommandText = 
      'SELECT Class, Class_id FROM Class '#13#10'WHERE Tickets_id = :Tickets_' +
      'id'#13#10'ORDER BY class'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Tickets_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 194
    Top = 127
  end
  object AirCraftDS: TDataSource
    DataSet = AirCraftCds
    Left = 252
    Top = 133
  end
  object AirCraftCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AirCraftDsp'
    Left = 260
    Top = 133
    object AirCraftCdsAircraftTypes_id: TIntegerField
      FieldName = 'AircraftTypes_id'
    end
    object AirCraftCdsAircraft: TStringField
      FieldName = 'Aircraft'
      Size = 10
    end
  end
  object AirCraftDsp: TDataSetProvider
    DataSet = AirCraftSds
    Left = 276
    Top = 133
  end
  object AirCraftSds: TSQLDataSet
    CommandText = 
      'SELECT AircraftTypes_id, Aircraft FROM AircraftTypes'#13#10'ORDER BY A' +
      'ircraft'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 290
    Top = 132
  end
  object TrainLookUpDS: TDataSource
    DataSet = TrainLookUpCds
    Left = 180
    Top = 181
  end
  object TrainLookUpCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainLookUpDsp'
    Left = 188
    Top = 181
    object TrainLookUpCdsTrains_id: TIntegerField
      FieldName = 'Trains_id'
    end
    object TrainLookUpCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      FixedChar = True
      Size = 10
    end
    object TrainLookUpCdsTrainName: TStringField
      FieldName = 'TrainName'
      Size = 100
    end
  end
  object TrainLookUpDsp: TDataSetProvider
    DataSet = TrainLookUpSds
    Left = 204
    Top = 181
  end
  object TrainLookUpSds: TSQLDataSet
    CommandText = 
      'Select Trains_id, TrainNo, TrainName From Trains'#13#10'ORDER BY Train' +
      'Name '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 218
    Top = 183
  end
  object DataSource3: TDataSource
    DataSet = ClientDataSet3
    Left = 148
    Top = 317
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFerriesType'
    Left = 156
    Top = 317
  end
  object DataSetProvider3: TDataSetProvider
    Left = 172
    Top = 317
  end
  object SQLDataSet4: TSQLDataSet
    CommandText = 'bussectorfaresindia'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 186
    Top = 319
  end
  object UtilitiesPopup: TPopupMenu
    Left = 65
    Top = 564
    object CopyCosts1: TMenuItem
      Caption = 'Copy Costs'
      OnClick = CopyCosts1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object rainCostsToExcel1: TMenuItem
      Caption = 'Train Costs To Excel'
    end
  end
  object FlightCompaniesDS: TDataSource
    DataSet = FlightCompaniesCds
    Left = 276
    Top = 173
  end
  object FlightCompaniesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FlightCompaniesDsp'
    Left = 284
    Top = 173
    object FlightCompaniesCdsFlightCompanies_id: TIntegerField
      FieldName = 'FlightCompanies_id'
    end
    object FlightCompaniesCdsFlightCompany: TStringField
      FieldName = 'FlightCompany'
      Size = 100
    end
  end
  object FlightCompaniesDsp: TDataSetProvider
    DataSet = FlightCompaniesSds
    Left = 300
    Top = 173
  end
  object FlightCompaniesSds: TSQLDataSet
    CommandText = 'SELECT * FROM FlightCompanies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 314
    Top = 172
  end
end
