inherited CostSrvForm: TCostSrvForm
  Left = 161
  Top = 21
  Width = 1153
  Caption = 'Cost Services'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter2: TSplitter
    Width = 1137
  end
  inherited Splitter3: TSplitter
    Width = 1137
  end
  inherited Splitter5: TSplitter
    Width = 1137
  end
  inherited Panel1: TPanel
    Width = 1137
    inherited Label5: TLabel
      Left = 782
    end
    inherited SpeedButton1: TSpeedButton
      Left = 939
      Top = 5
      OnClick = SpeedButton1Click
    end
    inherited cxLabel1: TcxLabel
      Left = 5
    end
    inherited cxCityLcmb: TcxLookupComboBox
      Left = 34
      Properties.ListSource = CitiesDs
      Properties.OnEditValueChanged = cxCityLcmbPropertiesEditValueChanged
      Style.Color = 15334910
    end
    inherited cxLabel2: TcxLabel
      Left = 191
    end
    inherited cxAgentLcmb: TcxLookupComboBox
      Left = 228
      Properties.OnEditValueChanged = cxHotelLcmbPropertiesEditValueChanged
      Style.Color = 15334910
    end
    inherited cxWefLCMB: TcxLookupComboBox
      Left = 811
      Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
      Style.Color = 15334910
      TabOrder = 5
      Width = 124
    end
    inherited cxLabel3: TcxLabel
      Left = 547
    end
    inherited cxServiceCityLcmb: TcxLookupComboBox
      Left = 625
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = ServiceCitiesDs
      Properties.OnEditValueChanged = cxServiceCityLcmbPropertiesEditValueChanged
      Style.Color = 15334910
      TabOrder = 4
    end
    object cxTrsfRB: TcxRadioButton
      Left = 973
      Top = 8
      Width = 73
      Height = 17
      Caption = 'Transfer'
      Checked = True
      TabOrder = 7
      TabStop = True
      OnClick = cxTrsfRBClick
    end
    object cxSsRB: TcxRadioButton
      Left = 1042
      Top = 8
      Width = 45
      Height = 17
      Caption = 'S/S'
      TabOrder = 8
      OnClick = cxSsRBClick
    end
  end
  inherited Panel2: TPanel
    Width = 1137
    OnClick = Panel2Click
    inherited cxButtonUtilities: TcxButton
      DropDownMenu = PopupMenu1
    end
  end
  inherited Panel3: TPanel
    Width = 1137
    inherited cxPageControl4: TcxPageControl
      Width = 1135
      ClientRectRight = 1129
      inherited cxTabSheetTransport: TcxTabSheet
        object cxGrid6: TcxGrid
          Left = 0
          Top = 0
          Width = 1126
          Height = 86
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView6: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = Detail5Ds
            DataController.KeyFieldNames = 'costservicestransport_id'
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
            Styles.Background = BackOfficeDataModule.cxStyleLightBlueBackground
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            Bands = <
              item
              end>
            object cxGridDBBandedTableView6costservicestransport_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'costservicestransport_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6costservice_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'costservice_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6frompax: TcxGridDBBandedColumn
              Caption = 'From Pax'
              DataBinding.FieldName = 'frompax'
              Width = 61
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6topax: TcxGridDBBandedColumn
              Caption = 'To Pax'
              DataBinding.FieldName = 'topax'
              Width = 58
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6vehicles_id: TcxGridDBBandedColumn
              Caption = 'Vehicle'
              DataBinding.FieldName = 'vehicles_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Vehicles_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Vehicle'
                end>
              Properties.ListSource = VehicleDs
              Width = 108
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6fit: TcxGridDBBandedColumn
              Caption = 'FIT'
              DataBinding.FieldName = 'fit'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6costnonac: TcxGridDBBandedColumn
              Caption = 'Cost Non A/C'
              DataBinding.FieldName = 'costnonac'
              Width = 90
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6costac: TcxGridDBBandedColumn
              Caption = 'Cost A/C'
              DataBinding.FieldName = 'costac'
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6parkingfee: TcxGridDBBandedColumn
              Caption = 'Parking Fee'
              DataBinding.FieldName = 'parkingfee'
              Width = 84
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6RoadTaxPerDay: TcxGridDBBandedColumn
              Caption = 'Road Tax Per Day'
              DataBinding.FieldName = 'RoadTaxPerDay'
              Width = 64
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6SpecialGst: TcxGridDBBandedColumn
              Caption = 'Special Gst'
              DataBinding.FieldName = 'SpecialGst'
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6nett: TcxGridDBBandedColumn
              Caption = 'Nett'
              DataBinding.FieldName = 'nett'
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6MeetAndAssist: TcxGridDBBandedColumn
              Caption = 'Meet And Assist'
              DataBinding.FieldName = 'MeetAndAssist'
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6EntryAp: TcxGridDBBandedColumn
              Caption = 'Entry A/P'
              DataBinding.FieldName = 'EntryAp'
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Width = 62
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6SpecialGst2: TcxGridDBBandedColumn
              Caption = 'Special Gst (2)'
              DataBinding.FieldName = 'SpecialGst2'
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6nett2: TcxGridDBBandedColumn
              Caption = 'Nett (2)'
              DataBinding.FieldName = 'nett2'
              Styles.Header = BackOfficeDataModule.cxStylePublished
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6currencies_id: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencies_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Currencies_id'
              Properties.ListColumns = <
                item
                  FieldName = 'CurrencyCode'
                end>
              Properties.ListSource = CurrencyDs
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView6masters_id: TcxGridDBBandedColumn
              Caption = 'Master'
              DataBinding.FieldName = 'masters_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'masters_id'
              Properties.ListColumns = <
                item
                  FieldName = 'MasterCode'
                end>
              Properties.ListSource = MasterCodeDS
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
          end
          object cxGridLevel6: TcxGridLevel
            GridView = cxGridDBBandedTableView6
          end
        end
      end
    end
  end
  inherited Panel4: TPanel
    Width = 1137
    inherited Splitter1: TSplitter
      Left = 551
    end
    inherited Panel10: TPanel
      Width = 550
      inherited cxPageControl3: TcxPageControl
        Width = 548
        ClientRectRight = 542
        inherited cxTabSheet3: TcxTabSheet
          object cxDBMemo2: TcxDBMemo
            Left = 0
            Top = 110
            Align = alBottom
            DataBinding.DataField = 'remarks'
            DataBinding.DataSource = Detail3Ds
            Style.Color = 15334910
            TabOrder = 0
            Height = 36
            Width = 539
          end
          object cxGrid4: TcxGrid
            Left = 0
            Top = 0
            Width = 539
            Height = 110
            Align = alClient
            TabOrder = 1
            object cxGridDBBandedTableView4: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = Detail3Ds
              DataController.KeyFieldNames = 'costservicesguides_id'
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
              Styles.Background = BackOfficeDataModule.cxStyleLightBlueBackground
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              Bands = <
                item
                end>
              object cxGridDBBandedTableView4costservicesguides_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'costservicesguides_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView4costservices_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'costservices_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView4frompax: TcxGridDBBandedColumn
                Caption = 'From Pax'
                DataBinding.FieldName = 'frompax'
                Width = 61
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView4topax: TcxGridDBBandedColumn
                Caption = 'To Pax'
                DataBinding.FieldName = 'topax'
                Width = 58
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView4cost: TcxGridDBBandedColumn
                Caption = 'Cost Per Group'
                DataBinding.FieldName = 'cost'
                Width = 94
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView4tourleaderfree: TcxGridDBBandedColumn
                Caption = 'TL Free'
                DataBinding.FieldName = 'tourleaderfree'
                Visible = False
                Width = 76
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView4currencies_id: TcxGridDBBandedColumn
                Caption = 'Currency'
                DataBinding.FieldName = 'currencies_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Currencies_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'CurrencyCode'
                  end>
                Properties.ListSource = CurrencyDs
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView4resident: TcxGridDBBandedColumn
                Caption = 'Resident'
                DataBinding.FieldName = 'resident'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'resident_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'resident_string'
                  end>
                Properties.ListSource = ResidentDs
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView4SpecialGst: TcxGridDBBandedColumn
                Caption = 'Special Gst'
                DataBinding.FieldName = 'SpecialGst'
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView4nett: TcxGridDBBandedColumn
                Caption = 'Nett'
                DataBinding.FieldName = 'nett'
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
            end
            object cxGridLevel4: TcxGridLevel
              GridView = cxGridDBBandedTableView4
            end
          end
        end
      end
    end
    inherited Panel11: TPanel
      Left = 554
      Width = 582
      inherited cxPageControl6: TcxPageControl
        Width = 580
        ClientRectRight = 574
        inherited cxTabSheet5: TcxTabSheet
          object cxDBMemo3: TcxDBMemo
            Left = 0
            Top = 110
            Align = alBottom
            DataBinding.DataField = 'remarks'
            DataBinding.DataSource = Detail4Ds
            Style.Color = 15334910
            TabOrder = 0
            Height = 36
            Width = 571
          end
          object cxGrid5: TcxGrid
            Left = 0
            Top = 0
            Width = 571
            Height = 110
            Align = alClient
            TabOrder = 1
            object cxGridDBBandedTableView5: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = Detail4Ds
              DataController.KeyFieldNames = 'costservicesentrancefees_id'
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
              Styles.Background = BackOfficeDataModule.cxStyleLightBlueBackground
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              Bands = <
                item
                end>
              object cxGridDBBandedTableView5costservicesentrancefees_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'costservicesentrancefees_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView5costservices_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'costservices_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView5frompax: TcxGridDBBandedColumn
                Caption = 'From Pax'
                DataBinding.FieldName = 'frompax'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView5topax: TcxGridDBBandedColumn
                Caption = 'To Pax'
                DataBinding.FieldName = 'topax'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView5cost: TcxGridDBBandedColumn
                Caption = 'Cost'
                DataBinding.FieldName = 'cost'
                Width = 97
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView5tourleaderfree: TcxGridDBBandedColumn
                Caption = 'TL Free'
                DataBinding.FieldName = 'tourleaderfree'
                Visible = False
                Width = 63
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView5currencies_id: TcxGridDBBandedColumn
                Caption = 'Currency'
                DataBinding.FieldName = 'currencies_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Currencies_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'CurrencyCode'
                  end>
                Properties.ListSource = CurrencyDs
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView5resident: TcxGridDBBandedColumn
                Caption = 'Resident'
                DataBinding.FieldName = 'resident'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'resident_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'resident_string'
                  end>
                Properties.ListSource = ResidentDs
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView5Column1: TcxGridDBBandedColumn
                Caption = 'Remarks'
                DataBinding.FieldName = 'remarks'
                Width = 150
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView5SpecialGst: TcxGridDBBandedColumn
                Caption = 'Special Gst'
                DataBinding.FieldName = 'SpecialGst'
                Width = 77
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView5nett: TcxGridDBBandedColumn
                Caption = 'Nett'
                DataBinding.FieldName = 'nett'
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
            end
            object cxGridLevel5: TcxGridLevel
              GridView = cxGridDBBandedTableView5
            end
          end
        end
      end
    end
  end
  inherited Panel5: TPanel
    Width = 1137
    inherited Splitter4: TSplitter
      Left = 751
    end
    inherited Panel6: TPanel
      Width = 1135
      object cxDBMemo1: TcxDBMemo
        Left = 1
        Top = 1
        Align = alClient
        DataBinding.DataField = 'remarks'
        DataBinding.DataSource = MasterDs
        Style.Color = 15334910
        TabOrder = 0
        Height = 48
        Width = 1133
      end
    end
    inherited Panel8: TPanel
      Width = 750
      inherited cxPageControl1: TcxPageControl
        Width = 748
        ClientRectRight = 742
        inherited cxTabSheet1: TcxTabSheet
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 739
            Height = 104
            Align = alClient
            TabOrder = 0
            object cxGridDBBandedTableView1: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = MasterDs
              DataController.KeyFieldNames = 'costservices_id'
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
              Styles.Background = BackOfficeDataModule.cxStyleLightBlueBackground
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              Bands = <
                item
                end>
              object cxGridDBBandedTableView1costservices_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'costservices_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1addressbook_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'addressbook_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1services_id: TcxGridDBBandedColumn
                Caption = 'Service'
                DataBinding.FieldName = 'services_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Services_id'
                Properties.ListColumns = <
                  item
                    Width = 340
                    FieldName = 'Description'
                  end
                  item
                    Width = 80
                    FieldName = 'Active'
                  end>
                Properties.ListSource = ServiceDs
                SortIndex = 0
                SortOrder = soAscending
                Width = 480
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1wef: TcxGridDBBandedColumn
                Caption = 'Wef'
                DataBinding.FieldName = 'wef'
                Width = 83
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1remarks: TcxGridDBBandedColumn
                DataBinding.FieldName = 'remarks'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1tourleaderfree: TcxGridDBBandedColumn
                DataBinding.FieldName = 'tourleaderfree'
                Visible = False
                Options.Editing = False
                Width = 93
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1servicecharges: TcxGridDBBandedColumn
                DataBinding.FieldName = 'servicecharges'
                Visible = False
                Options.Editing = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1agentcharges: TcxGridDBBandedColumn
                Caption = 'Agent Chgs.'
                DataBinding.FieldName = 'agentcharges'
                Visible = False
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1commissionontransport: TcxGridDBBandedColumn
                Caption = 'Comm. on Trspt'
                DataBinding.FieldName = 'commissionontransport'
                Visible = False
                Width = 103
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1cities_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'cities_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1costservicesdistinct_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'costservicesdistinct_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBBandedTableView1
            end
          end
        end
      end
    end
    inherited Panel9: TPanel
      Left = 754
      Width = 382
      inherited cxPageControl5: TcxPageControl
        Width = 380
        ClientRectRight = 374
        inherited cxTabSheet4: TcxTabSheet
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 371
            Height = 104
            Align = alClient
            TabOrder = 0
            object cxGridDBBandedTableView2: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = Detail1Ds
              DataController.KeyFieldNames = 'CostServicesClose_id'
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
              Styles.Background = BackOfficeDataModule.cxStyleLightBlueBackground
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              Bands = <
                item
                end>
              object cxGridDBBandedTableView2CostServicesClose_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CostServicesClose_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView2CostServices_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CostServices_id'
                Visible = False
                Options.Editing = False
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView2FromDate: TcxGridDBBandedColumn
                Caption = 'From Date'
                DataBinding.FieldName = 'FromDate'
                Width = 130
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView2ToDate: TcxGridDBBandedColumn
                Caption = 'To Date'
                DataBinding.FieldName = 'ToDate'
                Width = 122
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBBandedTableView2
            end
          end
        end
      end
    end
  end
  inherited Panel7: TPanel
    Width = 1137
    inherited cxPageControl2: TcxPageControl
      Width = 1135
      ClientRectRight = 1129
      inherited cxTabSheet2: TcxTabSheet
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 1126
          Height = 69
          Align = alClient
          TabOrder = 0
          object cxGridDBBandedTableView3: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = Detail2Ds
            DataController.KeyFieldNames = 'costservicesothers_id'
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
            Styles.Background = BackOfficeDataModule.cxStyleLightBlueBackground
            Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
            Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
            Bands = <
              item
              end>
            object cxGridDBBandedTableView3costservicesothers_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'costservicesothers_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3costservices_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'costservices_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3frompax: TcxGridDBBandedColumn
              Caption = 'From Pax'
              DataBinding.FieldName = 'frompax'
              Width = 63
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3topax: TcxGridDBBandedColumn
              Caption = 'To Pax'
              DataBinding.FieldName = 'topax'
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3costperperson: TcxGridDBBandedColumn
              Caption = 'Cost Per Person'
              DataBinding.FieldName = 'costperperson'
              Width = 104
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3costpergroup: TcxGridDBBandedColumn
              Caption = 'Cost Per Group'
              DataBinding.FieldName = 'costpergroup'
              Width = 98
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3remarks: TcxGridDBBandedColumn
              Caption = 'Remarks'
              DataBinding.FieldName = 'remarks'
              Width = 300
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3tourleaderfree: TcxGridDBBandedColumn
              Caption = 'TL Free'
              DataBinding.FieldName = 'tourleaderfree'
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3currencies_id: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencies_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Currencies_id'
              Properties.ListColumns = <
                item
                  FieldName = 'CurrencyCode'
                end>
              Properties.ListSource = CurrencyDs
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3resident: TcxGridDBBandedColumn
              Caption = 'Resident'
              DataBinding.FieldName = 'resident'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'resident_id'
              Properties.ListColumns = <
                item
                  FieldName = 'resident_string'
                end>
              Properties.ListSource = ResidentDs
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3tourleader: TcxGridDBBandedColumn
              Caption = 'Tour Leader'
              DataBinding.FieldName = 'tourleader'
              Visible = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3SpecialGst: TcxGridDBBandedColumn
              Caption = 'Special Gst'
              DataBinding.FieldName = 'SpecialGst'
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3nett: TcxGridDBBandedColumn
              Caption = 'Nett'
              DataBinding.FieldName = 'nett'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBBandedTableView3
          end
        end
      end
    end
  end
  inherited PopupMenu1: TPopupMenu
    inherited CopyTrains1: TMenuItem
      Caption = 'Copy'
      object AllCostingsDisplayed1: TMenuItem
        Caption = 'All Costings Displayed'
        OnClick = AllCostingsDisplayed1Click
      end
      object CurrentCostingSelected1: TMenuItem
        Caption = 'Current Costing Selected'
        OnClick = CurrentCostingSelected1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PriceLists1: TMenuItem
      Caption = 'Price Lists'
      object Sightseeing1: TMenuItem
        Caption = 'Sightseeing'
        Visible = False
        OnClick = Sightseeing1Click
      end
      object ransfer1: TMenuItem
        Caption = 'Transfer'
        Visible = False
        OnClick = ransfer1Click
      end
      object Guide1: TMenuItem
        Caption = 'Guide'
        Visible = False
        OnClick = Guide1Click
      end
      object Miscellaneous1: TMenuItem
        Caption = 'Miscellaneous'
        Visible = False
        OnClick = Miscellaneous1Click
      end
      object EntranceFees1: TMenuItem
        Caption = 'Entrance Fees'
        Visible = False
        OnClick = EntranceFees1Click
      end
      object N4: TMenuItem
        Caption = '-'
        Visible = False
      end
      object Services1: TMenuItem
        Caption = 'Sightseeing'
        OnClick = Services1Click
      end
      object ransfers1: TMenuItem
        Caption = 'Transfers'
        OnClick = ransfers1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object AddnewServiceCity1: TMenuItem
      Caption = 'Add new Service City'
      OnClick = AddnewServiceCity1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object DeletethisCosting1: TMenuItem
      Caption = 'Delete this Costing'
      OnClick = DeletethisCosting1Click
    end
  end
  inherited Detail1Cds: TClientDataSet
    inherited Detail1CdsFromDate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited Detail1CdsToDate: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  inherited Detail2Cds: TClientDataSet
    AfterInsert = Detail2CdsAfterInsert
    inherited Detail2Cdscostperperson: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail2Cdscostpergroup: TBCDField
      DisplayFormat = '#,##0'
    end
    object Detail2CdsSpecialGst: TFMTBCDField
      FieldName = 'SpecialGst'
      DisplayFormat = '#,##0.00%'
      Precision = 18
      Size = 4
    end
    object Detail2Cdsnett: TBooleanField
      FieldName = 'nett'
    end
  end
  inherited WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT cs.Addressbook_id, cs.Wef, cs.cities_id '#13#10'FROM C' +
      'ostServices cs'#13#10'WHERE cs.Addressbook_id = :Addressbook_id'#13#10'AND c' +
      's.Cities_id = :Cities_id'#13#10'ORDER BY cs.Wef DESC'#13#10
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 825
    Top = 19
  end
  inherited WefDsp: TDataSetProvider
    Left = 841
    Top = 19
  end
  inherited WefCds: TClientDataSet
    Active = False
    IndexFieldNames = 'Addressbook_id;cities_id'
    MasterFields = 'Addressbook_id;cities_id'
    MasterSource = ServiceCitiesDs
    Left = 857
    Top = 19
  end
  inherited WefDS: TDataSource
    Left = 873
    Top = 19
  end
  inherited CitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state'#13#10'from cities c '#13#10'left join states ' +
      's on c.states_id = s.states_id'#13#10'WHERE EXISTS (SELECT * FROM Serv' +
      'ices s '#13#10'WHERE s.Cities_id IS NOT NULL'#13#10'AND s.Cities_id = c.Citi' +
      'es_id)'#13#10'order by city'
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM CostServices cs'#13#10'WHERE addressbook_id = :addressbo' +
      'ok_id'#13#10'AND cities_id = :Cities_id'#13#10'AND Wef = :Wef'#13#10'AND EXISTS (S' +
      'ELECT * FROM Services s'#13#10'  WHERE cs.Services_id = s.Services_id'#13 +
      #10'        AND Transfer = :Transfer)'
    Params = <
      item
        DataType = ftInteger
        Name = 'addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Wef'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = 'Transfer'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    inherited MasterCdscostservices_id: TIntegerField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    inherited MasterCdswef: TSQLTimeStampField
      DisplayFormat = 'dd/mm/yyyy'
    end
    inherited MasterCdsservicecharges: TBCDField
      DisplayFormat = '#,##0.00'
    end
    inherited MasterCdsagentcharges: TBCDField
      DisplayFormat = '#,##0.00'
    end
    inherited MasterCdscommissionontransport: TBCDField
      DisplayFormat = '#,##0.00'
    end
  end
  inherited ServiceCitiesSds: TSQLDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited Detail3Sds: TSQLDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'costservices_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited Detail3Cds: TClientDataSet
    AfterInsert = Detail3CdsAfterInsert
    inherited Detail3Cdscost: TBCDField
      DisplayFormat = '#,##0'
    end
    object Detail3CdsSpecialGst: TFMTBCDField
      FieldName = 'SpecialGst'
      DisplayFormat = '#,##0.00%'
      Precision = 18
      Size = 4
    end
    object Detail3Cdsnett: TBooleanField
      FieldName = 'nett'
    end
  end
  inherited Detail4Sds: TSQLDataSet
    Params = <
      item
        DataType = ftInteger
        Name = 'costservices_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited Detail4Cds: TClientDataSet
    AfterInsert = Detail4CdsAfterInsert
    inherited Detail4Cdscost: TBCDField
      DisplayFormat = '#,##0'
    end
    object Detail4CdsSpecialGst: TFMTBCDField
      FieldName = 'SpecialGst'
      DisplayFormat = '#,##0.00%'
      Precision = 18
      Size = 4
    end
    object Detail4Cdsnett: TBooleanField
      FieldName = 'nett'
    end
  end
  inherited Detail5Cds: TClientDataSet
    AfterInsert = Detail5CdsAfterInsert
    inherited Detail5Cdscostnonac: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail5Cdscostac: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail5Cdsparkingfee: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail5CdsRoadTaxPerDay: TFMTBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail5CdsMeetAndAssist: TBCDField
      DisplayFormat = '#,##0'
    end
    inherited Detail5CdsEntryAp: TBCDField
      DisplayFormat = '#,##0'
    end
    object Detail5CdsSpecialGst: TFMTBCDField
      FieldName = 'SpecialGst'
      DisplayFormat = '#,##0.00%'
      Precision = 18
      Size = 4
    end
    object Detail5Cdsnett: TBooleanField
      FieldName = 'nett'
    end
    object Detail5CdsSpecialGst2: TFMTBCDField
      FieldName = 'SpecialGst2'
      DisplayFormat = '#,##0.00%'
      Precision = 18
      Size = 2
    end
    object Detail5Cdsnett2: TBooleanField
      FieldName = 'nett2'
    end
  end
  object ServiceSds: TSQLDataSet
    CommandText = 
      'SELECT Services_id, Service, Description, Active FROM Services '#13 +
      #10'WHERE Service IS NOT NULL '#13#10'AND Transfer = :Transfer'#13#10'AND Citie' +
      's_id = :Cities_id'#13#10'ORDER BY Service'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBoolean
        Name = 'Transfer'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 162
    Top = 110
  end
  object ServiceDsp: TDataSetProvider
    DataSet = ServiceSds
    UpdateMode = upWhereKeyOnly
    Left = 182
    Top = 110
  end
  object ServiceCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ServiceDsp'
    Left = 203
    Top = 110
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
    Left = 217
    Top = 110
  end
  object CurrencySds: TSQLDataSet
    CommandText = 'select Currencies_id, CurrencyCode, Currency from currencies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 464
    Top = 274
  end
  object CurrencyDsp: TDataSetProvider
    DataSet = CurrencySds
    Left = 488
    Top = 274
  end
  object CurrencyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrencyDsp'
    Left = 504
    Top = 274
    object CurrencyCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrencyCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object CurrencyCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
  end
  object CurrencyDs: TDataSource
    DataSet = CurrencyCds
    Left = 520
    Top = 274
  end
  object VehicleSds: TSQLDataSet
    CommandText = 'SELECT Vehicles_id, Vehicle'#13#10'FROM Vehicles'#13#10'ORDER BY Vehicle'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 136
    Top = 576
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 152
    Top = 576
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 168
    Top = 576
    object VehicleCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object VehicleCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
  end
  object VehicleDs: TDataSource
    DataSet = VehicleCds
    Left = 184
    Top = 576
  end
  object ResidentSds: TSQLDataSet
    CommandText = 
      'select cast('#39'Yes'#39' as varchar(5)) as resident_string, 1 as reside' +
      'nt_id'#13#10'union '#13#10'select cast('#39'No'#39' as varchar(5)) as resident_strin' +
      'g, 2 as resident_id'#13#10'union '#13#10'select cast('#39'All'#39' as varchar(5)) as' +
      ' resident_string, 4 as resident_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 154
    Top = 398
  end
  object ResidentDsp: TDataSetProvider
    DataSet = ResidentSds
    Left = 182
    Top = 398
  end
  object ResidentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ResidentDsp'
    Left = 211
    Top = 398
    object ResidentCdsresident_string: TStringField
      FieldName = 'resident_string'
      Size = 5
    end
    object ResidentCdsresident_id: TIntegerField
      FieldName = 'resident_id'
    end
  end
  object ResidentDs: TDataSource
    DataSet = ResidentCds
    Left = 241
    Top = 398
  end
  object MasterCodeSds: TSQLDataSet
    CommandText = 
      'select masters_id, MasterCode,[name] from Masters'#13#10'ORDER BY Mast' +
      'erCode'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 576
    Top = 576
  end
  object MasterCodeDsp: TDataSetProvider
    DataSet = MasterCodeSds
    Left = 592
    Top = 576
  end
  object MasterCodeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterCodeDsp'
    Left = 608
    Top = 576
    object IntegerField7: TIntegerField
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
    Left = 624
    Top = 576
  end
end
