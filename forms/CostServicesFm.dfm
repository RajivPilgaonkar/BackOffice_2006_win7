object CostServicesForm: TCostServicesForm
  Left = 282
  Top = 53
  Width = 1017
  Height = 660
  Caption = 'CostServicesForm'
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
  object Panel2: TPanel
    Left = 0
    Top = 584
    Width = 1001
    Height = 38
    Align = alBottom
    TabOrder = 2
    object cxButton1: TcxButton
      Left = 912
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Close'
      TabOrder = 0
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
    object cxButton2: TcxButton
      Left = 13
      Top = 5
      Width = 124
      Height = 25
      Caption = 'Utilities'
      TabOrder = 1
      DropDownMenu = PopUpCopyCostings
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
      Kind = cxbkDropDown
      NumGlyphs = 2
    end
    object cxButton4: TcxButton
      Left = 160
      Top = 5
      Width = 137
      Height = 25
      Caption = 'Update Active'
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
  end
  object GroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 0
    Height = 60
    Width = 1001
    object Label1: TcxLabel
      Left = 2
      Top = 22
      Caption = 'City'
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 0
      Top = 43
      Caption = 'Agent'
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 180
      Top = 42
      Caption = 'Service City'
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 180
      Top = 20
      Caption = 'Display all Service Cities'
      Transparent = True
    end
    object CityLCMB: TcxLookupComboBox
      Left = 35
      Top = 19
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = BackOfficeDataModule.AgentCityDs
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = CityLCMBPropertiesEditValueChanged
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 0
      Width = 145
    end
    object cxAgentLcmb: TcxLookupComboBox
      Left = 35
      Top = 40
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = AgentDs
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = AgentLcmbPropertiesEditValueChanged
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 1
      Width = 144
    end
    object cxServiceCityLcmb: TcxLookupComboBox
      Left = 253
      Top = 38
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = ServiceCityDs
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = ServiceCityLcmbPropertiesEditValueChanged
      EditValue = 0
      Style.Color = 16247513
      TabOrder = 3
      Width = 179
    end
    object DisplayAllChkBox: TcxCheckBox
      Left = 321
      Top = 18
      Caption = 'Display All Service Cities'
      TabOrder = 2
      Transparent = True
      OnClick = DisplayAllChkBoxClick
      Width = 19
    end
    object STRBG: TcxRadioGroup
      Left = 819
      Top = 19
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Transfer'
          Value = True
        end
        item
          Caption = 'Service'
          Value = False
        end>
      TabOrder = 4
      OnClick = STRBGClick
      Height = 38
      Width = 166
    end
    object cxDisplayActiveCkb: TcxCheckBox
      Left = 675
      Top = 40
      Caption = 'Display Active'
      State = cbsChecked
      TabOrder = 5
      Transparent = True
      OnClick = cxDisplayActiveCkbClick
      Width = 106
    end
    object cxGroupBox1: TcxGroupBox
      Left = 437
      Top = 18
      Caption = 'With Effect From'
      TabOrder = 10
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
        OnExit = cxWefLCMBExit
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
  object Panel1: TPanel
    Left = 0
    Top = 60
    Width = 1001
    Height = 524
    Align = alClient
    Color = 15451300
    TabOrder = 1
    object GroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      TabOrder = 0
      Height = 139
      Width = 999
      object ServiceGrid: TcxGrid
        Left = 3
        Top = 18
        Width = 415
        Height = 118
        Align = alLeft
        TabOrder = 0
        object ServiceGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ServiceDistinctDs
          DataController.KeyFieldNames = 'costservicesdistinct_id'
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
          object ServiceGridDBTableView1services_id: TcxGridDBColumn
            Caption = 'Available Services'
            DataBinding.FieldName = 'services_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Services_id'
            Properties.ListColumns = <
              item
                FieldName = 'Description'
              end>
            Properties.ListSource = ServiceDs
            Width = 365
          end
        end
        object ServiceGridLevel1: TcxGridLevel
          GridView = ServiceGridDBTableView1
        end
      end
      object GroupBox3: TcxGroupBox
        Left = 418
        Top = 18
        Align = alRight
        Caption = ' Service Period '
        TabOrder = 1
        Height = 118
        Width = 578
        object ServicePeriodGrid: TcxGrid
          Left = 3
          Top = 18
          Width = 326
          Height = 74
          PopupMenu = PopupMenu1
          TabOrder = 0
          object ServicePeriodGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = CostServicesDs
            DataController.KeyFieldNames = 'costservices_id'
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
            object ServicePeriodGridDBTableView1wef: TcxGridDBColumn
              Caption = 'With Effect From'
              DataBinding.FieldName = 'wef'
              Width = 106
            end
            object ServicePeriodGridDBTableView1agentcharges: TcxGridDBColumn
              Caption = 'Agent Charges'
              DataBinding.FieldName = 'agentcharges'
              Width = 100
            end
            object ServicePeriodGridDBTableView1commissionontransport: TcxGridDBColumn
              Caption = 'Commission On Transport'
              DataBinding.FieldName = 'commissionontransport'
              Width = 100
            end
            object ServicePeriodGridDBTableView1DBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'costservices_id'
              Visible = False
            end
          end
          object ServicePeriodGridLevel1: TcxGridLevel
            GridView = ServicePeriodGridDBTableView1
          end
        end
        object cxDBMemo1: TcxDBMemo
          Left = 3
          Top = 88
          DataBinding.DataField = 'remarks'
          DataBinding.DataSource = CostServicesDs
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 1
          Height = 27
          Width = 326
        end
        object cxGrid6: TcxGrid
          Left = 339
          Top = 18
          Width = 238
          Height = 97
          PopupMenu = PopupMenu1
          TabOrder = 2
          object cxGridDBTableView6: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = CostServicesCloseDs
            DataController.KeyFieldNames = 'CostServicesClose_id'
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
            object cxGridDBTableView6CostServicesClose_id: TcxGridDBColumn
              DataBinding.FieldName = 'CostServicesClose_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView6CostServices_id: TcxGridDBColumn
              DataBinding.FieldName = 'CostServices_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
            end
            object cxGridDBTableView6FromDate: TcxGridDBColumn
              Caption = 'Closed From'
              DataBinding.FieldName = 'FromDate'
              Width = 100
            end
            object cxGridDBTableView6ToDate: TcxGridDBColumn
              Caption = 'Closed To '
              DataBinding.FieldName = 'ToDate'
              Width = 100
            end
          end
          object cxGridLevel6: TcxGridLevel
            GridView = cxGridDBTableView6
          end
        end
      end
    end
    object GroupBox4: TcxGroupBox
      Left = 1
      Top = 140
      Align = alTop
      Caption = '  Miscellaneous Costs  '
      TabOrder = 1
      Height = 83
      Width = 999
      object cxGrid1: TcxGrid
        Left = 3
        Top = 18
        Width = 993
        Height = 62
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = CostDs
          DataController.KeyFieldNames = 'costservicesothers_id'
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
          object cxGridDBTableView1frompax: TcxGridDBColumn
            Caption = 'From Pax'
            DataBinding.FieldName = 'frompax'
          end
          object cxGridDBTableView1topax: TcxGridDBColumn
            Caption = 'To Pax'
            DataBinding.FieldName = 'topax'
            Width = 78
          end
          object cxGridDBTableView1costperperson: TcxGridDBColumn
            Caption = 'Cost Per Person'
            DataBinding.FieldName = 'costperperson'
            Width = 113
          end
          object cxGridDBTableView1costpergroup: TcxGridDBColumn
            Caption = 'Cost Per Group'
            DataBinding.FieldName = 'costpergroup'
            Width = 110
          end
          object cxGridDBTableView1remarks: TcxGridDBColumn
            Caption = 'Remarks'
            DataBinding.FieldName = 'remarks'
            SortIndex = 0
            SortOrder = soDescending
            Width = 223
          end
          object cxGridDBTableView1tourleaderfree: TcxGridDBColumn
            Caption = 'TLFree'
            DataBinding.FieldName = 'tourleaderfree'
            Width = 63
          end
          object cxGridDBTableView1currencies_id: TcxGridDBColumn
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
            Width = 77
          end
          object cxGridDBTableView1resident: TcxGridDBColumn
            Caption = 'Resident'
            DataBinding.FieldName = 'resident'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'req_val'
            Properties.ListColumns = <
              item
                FieldName = 'req'
              end>
            Properties.ListSource = ResidentDs
            Width = 77
          end
          object cxGridDBTableView1tourleader: TcxGridDBColumn
            Caption = 'Tour Leader'
            DataBinding.FieldName = 'tourleader'
            Width = 97
          end
          object cxGridDBTableView1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'costservicesothers_id'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object GroupBox5: TcxGroupBox
      Left = 1
      Top = 390
      Align = alClient
      Caption = ' Transportation Costs'
      TabOrder = 3
      Height = 133
      Width = 999
      object cxGrid2: TcxGrid
        Left = 3
        Top = 18
        Width = 993
        Height = 112
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.Background = BackOfficeDataModule.cxStyleBackground
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          Styles.Header = BackOfficeDataModule.cxStyleHeader
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object cxGrid5: TcxGrid
        Left = 3
        Top = 18
        Width = 993
        Height = 112
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView5: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = TransportDs
          DataController.KeyFieldNames = 'costservicestransport_id'
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
          object cxGridDBTableView5frompax: TcxGridDBColumn
            Caption = 'From Pax'
            DataBinding.FieldName = 'frompax'
          end
          object cxGridDBTableView5topax: TcxGridDBColumn
            Caption = 'To Pax'
            DataBinding.FieldName = 'topax'
          end
          object cxGridDBTableView5vehicles_id: TcxGridDBColumn
            Caption = 'Vehicle'
            DataBinding.FieldName = 'vehicles_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Automobiles_id'
            Properties.ListColumns = <
              item
                FieldName = 'Automobile'
              end>
            Properties.ListSource = VehiclesDs
            Width = 119
          end
          object cxGridDBTableView5fit: TcxGridDBColumn
            Caption = 'Fit'
            DataBinding.FieldName = 'fit'
          end
          object cxGridDBTableView5costnonac: TcxGridDBColumn
            Caption = 'Cost Non A/C'
            DataBinding.FieldName = 'costnonac'
            Width = 106
          end
          object cxGridDBTableView5costac: TcxGridDBColumn
            Caption = 'Cost A/C'
            DataBinding.FieldName = 'costac'
          end
          object cxGridDBTableView5parkingfee: TcxGridDBColumn
            Caption = 'Parking Fee'
            DataBinding.FieldName = 'parkingfee'
          end
          object cxGridDBTableView5MeetAndAssist: TcxGridDBColumn
            Caption = 'Meet & Assist'
            DataBinding.FieldName = 'MeetAndAssist'
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
          end
          object cxGridDBTableView5EntryAp: TcxGridDBColumn
            Caption = 'Entry A/P Rail'
            DataBinding.FieldName = 'EntryAp'
          end
          object cxGridDBTableView5currencies_id: TcxGridDBColumn
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
            Width = 90
          end
          object cxGridDBTableView5masters_id: TcxGridDBColumn
            Caption = 'Master'
            DataBinding.FieldName = 'masters_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Masters_id'
            Properties.ListColumns = <
              item
                FieldName = 'MasterCode'
              end>
            Properties.ListSource = BackOfficeDataModule.MasterCodeDS
            Width = 147
          end
          object cxGridDBTableView5DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'costservicestransport_id'
            Visible = False
          end
          object cxGridDBTableView5RoadTaxPerDay: TcxGridDBColumn
            Caption = 'Toll Tax (Per Day)'
            DataBinding.FieldName = 'RoadTaxPerDay'
            Options.Filtering = False
            Options.Grouping = False
            Width = 134
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = cxGridDBTableView5
        end
      end
    end
    object GroupBox8: TcxGroupBox
      Left = 1
      Top = 223
      Align = alTop
      TabOrder = 2
      Height = 167
      Width = 999
      object GroupBox6: TcxGroupBox
        Left = 3
        Top = 18
        Align = alLeft
        Caption = ' Guide Charges '
        TabOrder = 0
        Height = 146
        Width = 502
        object cxGrid3: TcxGrid
          Left = 3
          Top = 18
          Width = 496
          Height = 91
          Align = alTop
          TabOrder = 0
          object cxGridDBTableView3: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = GuideDs
            DataController.KeyFieldNames = 'costservicesguides_id'
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
            object cxGridDBTableView3frompax: TcxGridDBColumn
              Caption = 'From Pax'
              DataBinding.FieldName = 'frompax'
              Width = 76
            end
            object cxGridDBTableView3topax: TcxGridDBColumn
              Caption = 'To Pax'
              DataBinding.FieldName = 'topax'
              Width = 78
            end
            object cxGridDBTableView3cost: TcxGridDBColumn
              Caption = 'Cost'
              DataBinding.FieldName = 'cost'
              SortIndex = 0
              SortOrder = soDescending
              Width = 85
            end
            object cxGridDBTableView3tourleaderfree: TcxGridDBColumn
              Caption = 'TLFree'
              DataBinding.FieldName = 'tourleaderfree'
              Width = 65
            end
            object cxGridDBTableView3currencies_id: TcxGridDBColumn
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
            end
            object cxGridDBTableView3resident: TcxGridDBColumn
              Caption = 'Resident'
              DataBinding.FieldName = 'resident'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'req_val'
              Properties.ListColumns = <
                item
                  FieldName = 'req'
                end>
              Properties.ListSource = ResidentDs
            end
            object cxGridDBTableView3DBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'costservicesguides_id'
              Visible = False
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
        object cxDBMemo2: TcxDBMemo
          Left = 3
          Top = 109
          Align = alClient
          DataBinding.DataField = 'remarks'
          DataBinding.DataSource = GuideDs
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 1
          Height = 34
          Width = 496
        end
      end
      object GroupBox7: TcxGroupBox
        Left = 506
        Top = 18
        Align = alRight
        Caption = ' Entrance Fees '
        TabOrder = 1
        Height = 146
        Width = 490
        object cxGrid4: TcxGrid
          Left = 3
          Top = 18
          Width = 484
          Height = 91
          Align = alTop
          TabOrder = 0
          object cxGridDBTableView4: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = EntranceDs
            DataController.KeyFieldNames = 'costservicesentrancefees_id'
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
            object cxGridDBTableView4frompax: TcxGridDBColumn
              Caption = 'From Pax'
              DataBinding.FieldName = 'frompax'
              Width = 77
            end
            object cxGridDBTableView4topax: TcxGridDBColumn
              Caption = 'To Pax'
              DataBinding.FieldName = 'topax'
              Width = 68
            end
            object cxGridDBTableView4cost: TcxGridDBColumn
              Caption = 'Cost'
              DataBinding.FieldName = 'cost'
              Width = 85
            end
            object cxGridDBTableView4tourleaderfree: TcxGridDBColumn
              Caption = 'TLFree'
              DataBinding.FieldName = 'tourleaderfree'
              Width = 68
            end
            object cxGridDBTableView4currencies_id: TcxGridDBColumn
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
              Width = 74
            end
            object cxGridDBTableView4resident: TcxGridDBColumn
              Caption = 'Resident'
              DataBinding.FieldName = 'resident'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'req_val'
              Properties.ListColumns = <
                item
                  FieldName = 'req'
                end>
              Properties.ListSource = ResidentDs
            end
            object cxGridDBTableView4DBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'costservicesentrancefees_id'
              Visible = False
            end
            object cxGridDBTableView4Remarks: TcxGridDBColumn
              Caption = 'Remarks'
              DataBinding.FieldName = 'remarks'
              Options.Grouping = False
              Width = 200
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBTableView4
          end
        end
        object cxDBMemo3: TcxDBMemo
          Left = 3
          Top = 109
          Align = alClient
          DataBinding.DataField = 'remarks'
          DataBinding.DataSource = EntranceDs
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 1
          Height = 34
          Width = 484
        end
      end
    end
  end
  object ServiceDistinctSds: TSQLDataSet
    CommandText = 'costservicesdistinct'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 25
    Top = 97
  end
  object ServiceDistinctDsp: TDataSetProvider
    DataSet = ServiceDistinctSds
    UpdateMode = upWhereKeyOnly
    Left = 55
    Top = 97
  end
  object ServiceDistinctCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ServiceDistinctDsp'
    BeforeInsert = ServiceDistinctCdsBeforeInsert
    AfterInsert = ServiceDistinctCdsAfterInsert
    BeforeEdit = ServiceDistinctCdsBeforeEdit
    BeforePost = ServiceDistinctCdsBeforePost
    AfterPost = ServiceDistinctCdsAfterPost
    BeforeDelete = ServiceDistinctCdsBeforeDelete
    AfterDelete = ServiceDistinctCdsAfterDelete
    AfterScroll = ServiceDistinctCdsAfterScroll
    Left = 86
    Top = 97
    object ServiceDistinctCdscostservicesdistinct_id: TIntegerField
      FieldName = 'costservicesdistinct_id'
    end
    object ServiceDistinctCdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object ServiceDistinctCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object ServiceDistinctCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object ServiceDistinctCdstransfer: TBooleanField
      FieldName = 'transfer'
    end
    object ServiceDistinctCdsActive: TBooleanField
      FieldName = 'Active'
    end
  end
  object ServiceDistinctDs: TDataSource
    DataSet = ServiceDistinctCds
    Left = 116
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 68
    Top = 13
    object CopyStructure2: TMenuItem
      Caption = 'Copy Structure'
      OnClick = CopyStructure2Click
    end
  end
  object CostServicesSds: TSQLDataSet
    CommandText = 'select * from CostServices'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 451
    Top = 121
  end
  object CostServicesDsp: TDataSetProvider
    DataSet = CostServicesSds
    UpdateMode = upWhereKeyOnly
    Left = 479
    Top = 121
  end
  object CostServicesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CostServicesDsp'
    BeforeInsert = CostServicesCdsBeforeInsert
    AfterInsert = CostServicesCdsAfterInsert
    BeforeEdit = CostServicesCdsBeforeEdit
    BeforePost = CostServicesCdsBeforePost
    AfterPost = CostServicesCdsAfterPost
    BeforeDelete = CostServicesCdsBeforeDelete
    AfterDelete = CostServicesCdsAfterDelete
    Left = 508
    Top = 121
    object CostServicesCdscostservices_id: TIntegerField
      FieldName = 'costservices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CostServicesCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object CostServicesCdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object CostServicesCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object CostServicesCdsremarks: TMemoField
      FieldName = 'remarks'
      BlobType = ftMemo
    end
    object CostServicesCdstourleaderfree: TBooleanField
      FieldName = 'tourleaderfree'
    end
    object CostServicesCdsservicecharges: TBCDField
      FieldName = 'servicecharges'
      DisplayFormat = '#,##0.00'
      Precision = 2
      Size = 0
    end
    object CostServicesCdsagentcharges: TBCDField
      FieldName = 'agentcharges'
      DisplayFormat = '#,##0.00'
      Precision = 2
      Size = 0
    end
    object CostServicesCdscommissionontransport: TBCDField
      FieldName = 'commissionontransport'
      DisplayFormat = '#,##0.00'
      Precision = 2
      Size = 0
    end
    object CostServicesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object CostServicesCdscostservicesdistinct_id: TIntegerField
      FieldName = 'costservicesdistinct_id'
    end
  end
  object CostServicesDs: TDataSource
    DataSet = CostServicesCds
    Left = 538
    Top = 121
  end
  object CostSds: TSQLDataSet
    CommandText = 'costservicesothers'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'costservices_id'
        ParamType = ptInput
        Value = 346
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 410
    Top = 238
  end
  object CostDsp: TDataSetProvider
    DataSet = CostSds
    UpdateMode = upWhereKeyOnly
    Left = 430
    Top = 230
  end
  object CostCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'costservices_id'
    MasterFields = 'costservices_id'
    MasterSource = CostServicesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'CostDsp'
    BeforeInsert = CostCdsBeforeInsert
    AfterInsert = CostCdsAfterInsert
    BeforeEdit = CostCdsBeforeEdit
    BeforePost = CostCdsBeforePost
    AfterPost = CostCdsAfterPost
    BeforeDelete = CostCdsBeforeDelete
    AfterDelete = CostCdsAfterDelete
    Left = 451
    Top = 230
    object CostCdscostservicesothers_id: TIntegerField
      FieldName = 'costservicesothers_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CostCdscostservices_id: TIntegerField
      FieldName = 'costservices_id'
    end
    object CostCdsfrompax: TIntegerField
      FieldName = 'frompax'
    end
    object CostCdstopax: TIntegerField
      FieldName = 'topax'
    end
    object CostCdscostperperson: TBCDField
      FieldName = 'costperperson'
      Precision = 10
      Size = 2
    end
    object CostCdscostpergroup: TBCDField
      FieldName = 'costpergroup'
      Precision = 10
      Size = 2
    end
    object CostCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 100
    end
    object CostCdstourleaderfree: TBooleanField
      FieldName = 'tourleaderfree'
    end
    object CostCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object CostCdsresident: TSmallintField
      FieldName = 'resident'
    end
    object CostCdstourleader: TIntegerField
      FieldName = 'tourleader'
    end
  end
  object CostDs: TDataSource
    DataSet = CostCds
    Left = 465
    Top = 222
  end
  object GuideSds: TSQLDataSet
    CommandText = 'costservicesguides'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'costservices_id'
        ParamType = ptInput
        Value = 346
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 116
    Top = 321
  end
  object GuideDsp: TDataSetProvider
    DataSet = GuideSds
    UpdateMode = upWhereKeyOnly
    Left = 146
    Top = 321
  end
  object GuideCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'costservices_id'
    MasterFields = 'costservices_id'
    MasterSource = CostServicesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'GuideDsp'
    BeforeInsert = GuideCdsBeforeInsert
    AfterInsert = GuideCdsAfterInsert
    BeforeEdit = GuideCdsBeforeEdit
    BeforePost = GuideCdsBeforePost
    AfterPost = GuideCdsAfterPost
    BeforeDelete = GuideCdsBeforeDelete
    AfterDelete = GuideCdsAfterDelete
    Left = 173
    Top = 321
    object GuideCdscostservicesguides_id: TIntegerField
      FieldName = 'costservicesguides_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object GuideCdscostservices_id: TIntegerField
      FieldName = 'costservices_id'
    end
    object GuideCdsfrompax: TIntegerField
      FieldName = 'frompax'
    end
    object GuideCdstopax: TIntegerField
      FieldName = 'topax'
    end
    object GuideCdscost: TBCDField
      FieldName = 'cost'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object GuideCdstourleaderfree: TBooleanField
      FieldName = 'tourleaderfree'
    end
    object GuideCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 100
    end
    object GuideCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object GuideCdsresident: TSmallintField
      FieldName = 'resident'
    end
  end
  object GuideDs: TDataSource
    DataSet = GuideCds
    Left = 203
    Top = 321
  end
  object EntranceSds: TSQLDataSet
    CommandText = 'costservicesentrancefees'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'costservices_id'
        ParamType = ptInput
        Value = 346
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 532
    Top = 327
  end
  object EntranceDsp: TDataSetProvider
    DataSet = EntranceSds
    UpdateMode = upWhereKeyOnly
    Left = 560
    Top = 327
  end
  object EntranceCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'costservices_id'
    MasterFields = 'costservices_id'
    MasterSource = CostServicesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'EntranceDsp'
    BeforeInsert = EntranceCdsBeforeInsert
    AfterInsert = EntranceCdsAfterInsert
    BeforeEdit = EntranceCdsBeforeEdit
    BeforePost = EntranceCdsBeforePost
    AfterPost = EntranceCdsAfterPost
    BeforeDelete = EntranceCdsBeforeDelete
    AfterDelete = EntranceCdsAfterDelete
    Left = 589
    Top = 327
    object EntranceCdscostservicesentrancefees_id: TIntegerField
      FieldName = 'costservicesentrancefees_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object EntranceCdscostservices_id: TIntegerField
      FieldName = 'costservices_id'
    end
    object EntranceCdsfrompax: TIntegerField
      FieldName = 'frompax'
    end
    object EntranceCdstopax: TIntegerField
      FieldName = 'topax'
    end
    object EntranceCdscost: TBCDField
      FieldName = 'cost'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object EntranceCdstourleaderfree: TBooleanField
      FieldName = 'tourleaderfree'
    end
    object EntranceCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 100
    end
    object EntranceCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object EntranceCdsresident: TSmallintField
      FieldName = 'resident'
    end
  end
  object EntranceDs: TDataSource
    DataSet = EntranceCds
    Left = 619
    Top = 327
  end
  object TransportSds: TSQLDataSet
    CommandText = 'costservicestransport'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'costservice_id'
        ParamType = ptInput
        Value = 346
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 372
    Top = 496
  end
  object TransportDsp: TDataSetProvider
    DataSet = TransportSds
    UpdateMode = upWhereKeyOnly
    Left = 400
    Top = 496
  end
  object TransportCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'costservice_id'
    MasterFields = 'costservices_id'
    MasterSource = CostServicesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TransportDsp'
    BeforeInsert = TransportCdsBeforeInsert
    AfterInsert = TransportCdsAfterInsert
    BeforeEdit = TransportCdsBeforeEdit
    BeforePost = TransportCdsBeforePost
    AfterPost = TransportCdsAfterPost
    BeforeDelete = TransportCdsBeforeDelete
    AfterDelete = TransportCdsAfterDelete
    Left = 429
    Top = 496
    object TransportCdscostservicestransport_id: TIntegerField
      FieldName = 'costservicestransport_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TransportCdscostservice_id: TIntegerField
      FieldName = 'costservice_id'
    end
    object TransportCdsfrompax: TIntegerField
      FieldName = 'frompax'
    end
    object TransportCdstopax: TIntegerField
      FieldName = 'topax'
    end
    object TransportCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object TransportCdsfit: TBooleanField
      FieldName = 'fit'
    end
    object TransportCdscostnonac: TBCDField
      FieldName = 'costnonac'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object TransportCdscostac: TBCDField
      FieldName = 'costac'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object TransportCdsparkingfee: TBCDField
      FieldName = 'parkingfee'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object TransportCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object TransportCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object TransportCdsobsolete: TSmallintField
      FieldName = 'obsolete'
    end
    object TransportCdsRoadTaxPerDay: TFMTBCDField
      FieldName = 'RoadTaxPerDay'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object TransportCdsMeetAndAssist: TBCDField
      FieldName = 'MeetAndAssist'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object TransportCdsEntryAp: TBCDField
      FieldName = 'EntryAp'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
  end
  object TransportDs: TDataSource
    DataSet = TransportCds
    Left = 459
    Top = 496
  end
  object ResidentSds: TSQLDataSet
    CommandText = 
      'select cast('#39'Yes'#39' as varchar(5)) as req, 1 as req_val'#13#10'union '#13#10's' +
      'elect cast('#39'No'#39' as varchar(5)) as req, 2 as req_val'#13#10'union '#13#10'sel' +
      'ect cast('#39'All'#39' as varchar(5)) as req, 4 as req_val'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 610
    Top = 230
  end
  object ResidentDsp: TDataSetProvider
    DataSet = ResidentSds
    Left = 638
    Top = 230
  end
  object ResidentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ResidentDsp'
    Left = 667
    Top = 230
    object ResidentCdsreq: TStringField
      FieldName = 'req'
      Size = 5
    end
    object ResidentCdsreq_val: TIntegerField
      FieldName = 'req_val'
    end
  end
  object ResidentDs: TDataSource
    DataSet = ResidentCds
    Left = 697
    Top = 230
  end
  object VehiclesSds: TSQLDataSet
    CommandText = 
      'SELECT Vehicles_id as Automobiles_id, Vehicle as Automobile '#13#10'FR' +
      'OM Vehicles'#13#10'ORDER BY Vehicle'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 570
    Top = 486
  end
  object VehiclesDsp: TDataSetProvider
    DataSet = VehiclesSds
    Left = 598
    Top = 486
  end
  object VehiclesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehiclesDsp'
    Left = 627
    Top = 486
    object VehiclesCdsAutomobiles_id: TIntegerField
      FieldName = 'Automobiles_id'
    end
    object VehiclesCdsAutomobile: TStringField
      FieldName = 'Automobile'
      Size = 35
    end
  end
  object VehiclesDs: TDataSource
    DataSet = VehiclesCds
    Left = 657
    Top = 486
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM fn_Addressbook(2,'#39'A'#39') '#13#10'WHERE Cities_id = :Cities_' +
      'id'
    DataSource = BackOfficeDataModule.AgentCityDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 234
    Top = 66
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 262
    Top = 66
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = BackOfficeDataModule.AgentCityDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 291
    Top = 66
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
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 321
    Top = 66
  end
  object ServiceCitySds: TSQLDataSet
    CommandText = 
      'SELECT  DISTINCT C.City AS City, S.cities_id'#13#10'FROM Services S'#13#10'I' +
      'NNER JOIN Cities C ON C.cities_id = S.cities_id'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 384
    Top = 5
  end
  object ServiceCityDsp: TDataSetProvider
    DataSet = ServiceCitySds
    Left = 413
    Top = 5
  end
  object ServiceCityCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ServiceCityDsp'
    Left = 441
    Top = 5
    object ServiceCityCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object ServiceCityCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
  end
  object ServiceCityDs: TDataSource
    DataSet = ServiceCityCds
    Left = 471
    Top = 5
  end
  object ServiceSds: TSQLDataSet
    CommandText = 
      'SELECT Services_id, Service, Description, Active FROM Services '#13 +
      #10'WHERE Service IS NOT NULL '#13#10'ORDER BY Service'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 34
    Top = 134
  end
  object ServiceDsp: TDataSetProvider
    DataSet = ServiceSds
    UpdateMode = upWhereKeyOnly
    Left = 62
    Top = 134
  end
  object ServiceCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ServiceDsp'
    Left = 91
    Top = 134
    object ServiceCdsServices_id: TIntegerField
      FieldName = 'Services_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ServiceCdsService: TStringField
      FieldName = 'Service'
      Size = 25
    end
    object ServiceCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object ServiceCdsActive: TBooleanField
      FieldName = 'Active'
    end
  end
  object ServiceDs: TDataSource
    DataSet = ServiceCds
    Left = 121
    Top = 134
  end
  object PopUpCopyCostings: TPopupMenu
    Left = 73
    Top = 554
    object CopyCurrentCosting1: TMenuItem
      Caption = 'Copy Current Costing'
      OnClick = CopyCurrentCosting1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CopyallCostingsDisplayed1: TMenuItem
      Caption = 'Copy all Costings Displayed'
      OnClick = CopyallCostingsDisplayed1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CorrectTransfersSightSeeing1: TMenuItem
      Caption = 'Correct Transfers / SightSeeing'
      OnClick = CorrectTransfersSightSeeing1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ransfersPriceList1: TMenuItem
      Caption = 'Transfers Price List'
      OnClick = ransfersPriceList1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object SightSeeingPriceList1: TMenuItem
      Caption = 'Sight Seeing Price List'
      OnClick = SightSeeingPriceList1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object GuidePriceList1: TMenuItem
      Caption = 'Guide Price List'
      OnClick = GuidePriceList1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object MiscPriceList1: TMenuItem
      Caption = 'Misc Price List'
      OnClick = MiscPriceList1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object EntranceFeesPriceList1: TMenuItem
      Caption = 'Entrance Fees Price List'
      OnClick = EntranceFeesPriceList1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object ServicesPriceList1: TMenuItem
      Caption = 'Services Price List'
    end
  end
  object WefSds: TSQLDataSet
    CommandText = 'select distinct wef from CostServices order by wef desc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 736
    Top = 11
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 752
    Top = 11
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WefDsp'
    Left = 768
    Top = 11
    object WefCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 784
    Top = 11
  end
  object CostServicesCloseSds: TSQLDataSet
    CommandText = 
      'select * from CostServicesClose'#13#10'where CostServices_id = :CostSe' +
      'rvices_id'
    DataSource = CostServicesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CostServices_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 803
    Top = 113
  end
  object CostServicesCloseDsp: TDataSetProvider
    DataSet = CostServicesCloseSds
    UpdateMode = upWhereKeyOnly
    Left = 831
    Top = 113
  end
  object CostServicesCloseCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CostServices_id'
    MasterFields = 'costservices_id'
    MasterSource = CostServicesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'CostServicesCloseDsp'
    BeforeInsert = CostServicesCloseCdsBeforeInsert
    BeforeEdit = CostServicesCloseCdsBeforeEdit
    BeforePost = CostServicesCloseCdsBeforePost
    AfterPost = CostServicesCloseCdsAfterPost
    BeforeDelete = CostServicesCloseCdsBeforeDelete
    AfterDelete = CostServicesCloseCdsAfterDelete
    Left = 860
    Top = 113
    object CostServicesCloseCdsCostServicesClose_id: TIntegerField
      FieldName = 'CostServicesClose_id'
    end
    object CostServicesCloseCdsCostServices_id: TIntegerField
      FieldName = 'CostServices_id'
    end
    object CostServicesCloseCdsFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CostServicesCloseCdsToDate: TSQLTimeStampField
      FieldName = 'ToDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object CostServicesCloseDs: TDataSource
    DataSet = CostServicesCloseCds
    Left = 890
    Top = 113
  end
end
