object QuoDayEditForm: TQuoDayEditForm
  Left = 761
  Top = 43
  Width = 1000
  Height = 661
  Caption = 'Day Edit'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 623
    Align = alClient
    TabOrder = 0
    object ItineraryPC: TcxPageControl
      Left = 1
      Top = 1
      Width = 982
      Height = 580
      ActivePage = TicketsTab
      Align = alClient
      Images = ImageList1
      TabOrder = 0
      ClientRectBottom = 574
      ClientRectLeft = 3
      ClientRectRight = 976
      ClientRectTop = 27
      object TicketsTab: TcxTabSheet
        Caption = 'Tickets'
        ImageIndex = 0
        object cxDriveGB: TcxGroupBox
          Left = 101
          Top = 19
          Caption = 'Drive'
          TabOrder = 0
          Height = 77
          Width = 800
          object DistanceLabel: TLabel
            Left = 14
            Top = 40
            Width = 82
            Height = 13
            Caption = 'DistanceLabel'
            Transparent = True
          end
          object Label1: TLabel
            Left = 479
            Top = 40
            Width = 93
            Height = 13
            Caption = 'Drive Start Time'
            Transparent = True
            Visible = False
          end
          object Label2: TLabel
            Left = 477
            Top = 57
            Width = 137
            Height = 13
            Caption = '[Enter 2:00pm as 14:00]'
            Transparent = True
            Visible = False
          end
          object cxDriveCkb: TcxCheckBox
            Left = 14
            Top = 17
            Caption = 'I would like to Drive'
            TabOrder = 0
            Transparent = True
            Width = 617
          end
          object cxDBTimeEdit3: TcxDBTimeEdit
            Left = 579
            Top = 37
            DataBinding.DataField = 'DriveStartTime'
            Properties.ImmediatePost = True
            Properties.ReadOnly = False
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Style.Color = 16247513
            TabOrder = 1
            Visible = False
            Width = 60
          end
        end
        object cxTicketsGB: TcxGroupBox
          Left = 101
          Top = 112
          Caption = 'Tickets'
          ParentColor = False
          Style.Color = 15451300
          TabOrder = 1
          Height = 152
          Width = 800
          object Label22: TLabel
            Left = 20
            Top = 30
            Width = 32
            Height = 13
            Caption = 'Mode'
            Transparent = True
          end
          object Label16: TLabel
            Left = 276
            Top = 30
            Width = 94
            Height = 13
            Caption = 'Travel Schedule'
            Transparent = True
          end
          object Label17: TLabel
            Left = 20
            Top = 54
            Width = 57
            Height = 13
            Caption = 'Departure'
            Transparent = True
          end
          object Label18: TLabel
            Left = 276
            Top = 54
            Width = 37
            Height = 13
            Caption = 'Arrival'
            Transparent = True
          end
          object Label23: TLabel
            Left = 568
            Top = 54
            Width = 31
            Height = 13
            Caption = 'Class'
            Transparent = True
          end
          object Label3: TLabel
            Left = 20
            Top = 78
            Width = 70
            Height = 13
            Caption = 'Car Release'
            Transparent = True
          end
          object Label4: TLabel
            Left = 276
            Top = 78
            Width = 78
            Height = 13
            Caption = 'Release Time'
            Transparent = True
          end
          object Label7: TLabel
            Left = 21
            Top = 102
            Width = 34
            Height = 13
            Caption = 'Agent'
            Transparent = True
          end
          object Label8: TLabel
            Left = 20
            Top = 126
            Width = 62
            Height = 13
            Caption = 'Car Report'
            Transparent = True
          end
          object Label9: TLabel
            Left = 276
            Top = 126
            Width = 70
            Height = 13
            Caption = 'Report Time'
            Transparent = True
          end
          object Label10: TLabel
            Left = 276
            Top = 102
            Width = 43
            Height = 13
            Caption = 'Vehicle'
            Transparent = True
          end
          object Label11: TLabel
            Left = 570
            Top = 126
            Width = 63
            Height = 13
            Caption = 'Drive Type'
            Transparent = True
          end
          object cxModeLCMB: TcxDBLookupComboBox
            Left = 97
            Top = 28
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
            TabOrder = 0
            Width = 159
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 380
            Top = 28
            DataBinding.DataField = 'flightno'
            DataBinding.DataSource = TicketDs
            Properties.ReadOnly = False
            Style.Color = 16247513
            TabOrder = 1
            Width = 280
          end
          object cxDBTimeEdit1: TcxDBTimeEdit
            Left = 97
            Top = 52
            DataBinding.DataField = 'ETD'
            DataBinding.DataSource = TicketDs
            Properties.ImmediatePost = True
            Properties.ReadOnly = False
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Style.Color = 16247513
            TabOrder = 2
            Width = 159
          end
          object cxDBTimeEdit2: TcxDBTimeEdit
            Left = 380
            Top = 52
            DataBinding.DataField = 'ETA'
            DataBinding.DataSource = TicketDs
            Properties.ImmediatePost = True
            Properties.ReadOnly = False
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Style.Color = 16247513
            TabOrder = 3
            Width = 158
          end
          object cxDBLookupComboBox5: TcxDBLookupComboBox
            Left = 620
            Top = 52
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
            TabOrder = 4
            Width = 158
          end
          object cxDisplayScheduleButton: TcxButton
            Left = 662
            Top = 28
            Width = 114
            Height = 21
            Caption = 'Display Schedule'
            TabOrder = 5
            OnClick = cxDisplayScheduleButtonClick
          end
          object cxDBTimeEdit5: TcxDBTimeEdit
            Left = 380
            Top = 76
            DataBinding.DataField = 'CarReleaseDate'
            DataBinding.DataSource = TicketDs
            Properties.ImmediatePost = True
            Properties.ReadOnly = False
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Style.Color = 16247513
            TabOrder = 6
            Width = 158
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 98
            Top = 76
            DataBinding.DataField = 'CarReleaseDate'
            DataBinding.DataSource = TicketDs
            Properties.ShowTime = False
            Style.Color = 16247513
            TabOrder = 7
            Width = 158
          end
          object cxDBCheckBox2: TcxDBCheckBox
            Left = 568
            Top = 80
            Caption = 'Reserve Hotel on Overnight'
            DataBinding.DataField = 'ReserveHotelOvernight'
            DataBinding.DataSource = TicketDs
            ParentColor = False
            Style.Color = clBtnFace
            Style.HotTrack = True
            Style.TransparentBorder = True
            TabOrder = 8
            Transparent = True
            Width = 217
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 98
            Top = 100
            DataBinding.DataField = 'AgentAddressbook_id'
            DataBinding.DataSource = TicketDs
            Properties.ClearKey = 46
            Properties.DropDownWidth = 600
            Properties.KeyFieldNames = 'Addressbook_id'
            Properties.ListColumns = <
              item
                Width = 400
                FieldName = 'Organisation'
              end
              item
                Width = 200
                FieldName = 'City'
              end>
            Properties.ListSource = BackOfficeDataModule.AgentDS
            Properties.ReadOnly = False
            Style.Color = 16247513
            TabOrder = 9
            Width = 158
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 98
            Top = 124
            DataBinding.DataField = 'CarReportDate'
            DataBinding.DataSource = TicketDs
            Properties.ShowTime = False
            Style.Color = 16247513
            TabOrder = 10
            Width = 158
          end
          object cxDBTimeEdit4: TcxDBTimeEdit
            Left = 380
            Top = 124
            DataBinding.DataField = 'CarReportDate'
            DataBinding.DataSource = TicketDs
            Properties.ImmediatePost = True
            Properties.ReadOnly = False
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Style.Color = 16247513
            TabOrder = 11
            Width = 158
          end
          object cxDBLookupComboBox2: TcxDBLookupComboBox
            Left = 380
            Top = 100
            DataBinding.DataField = 'Vehicles_id'
            DataBinding.DataSource = TicketDs
            Properties.ClearKey = 46
            Properties.DropDownWidth = 600
            Properties.KeyFieldNames = 'Vehicles_id'
            Properties.ListColumns = <
              item
                FieldName = 'Vehicle'
              end>
            Properties.ListSource = VehicleDs
            Properties.ReadOnly = False
            Style.Color = 16247513
            TabOrder = 12
            Width = 158
          end
          object cxDBLookupComboBox3: TcxDBLookupComboBox
            Left = 638
            Top = 124
            DataBinding.DataField = 'DriveTypes_id'
            DataBinding.DataSource = TicketDs
            Properties.ClearKey = 46
            Properties.DropDownWidth = 160
            Properties.KeyFieldNames = 'DriveTypes_id'
            Properties.ListColumns = <
              item
                FieldName = 'DriveType'
              end>
            Properties.ListSource = DriveTypesDs
            Properties.ReadOnly = False
            Properties.OnEditValueChanged = cxModeLCMBPropertiesEditValueChanged
            Style.Color = 16247513
            TabOrder = 13
            Width = 139
          end
        end
        object cxGroupBox1: TcxGroupBox
          Left = 104
          Top = 271
          Caption = 'Tickets'
          ParentColor = False
          Style.Color = 15451300
          TabOrder = 2
          Height = 200
          Width = 800
          object cxGridMaster: TcxGrid
            Left = 3
            Top = 18
            Width = 794
            Height = 179
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
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = TicketDs
              DataController.KeyFieldNames = 'QuoTickets_id'
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
              Bands = <
                item
                  Width = 740
                end>
              object cxGridMasterDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'QuoTickets_id'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1Quotations_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Quotations_id'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1Cities_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Cities_id'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1TravelDate: TcxGridDBBandedColumn
                Caption = 'Date'
                DataBinding.FieldName = 'TravelDate'
                Options.Filtering = False
                Options.Grouping = False
                Width = 83
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1AgentAddressbook_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'AgentAddressbook_id'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1Tickets_id: TcxGridDBBandedColumn
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
                Width = 67
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1NoOfTickets: TcxGridDBBandedColumn
                DataBinding.FieldName = 'NoOfTickets'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1From_Cities_id: TcxGridDBBandedColumn
                Caption = 'From City'
                DataBinding.FieldName = 'From_Cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'City'
                  end>
                Properties.ListSource = TktCitiesDs
                Options.Filtering = False
                Options.Grouping = False
                Width = 84
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1To_Cities_id: TcxGridDBBandedColumn
                Caption = 'To City'
                DataBinding.FieldName = 'To_Cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'City'
                  end>
                Properties.ListSource = TktCitiesDs
                Options.Filtering = False
                Options.Grouping = False
                Width = 75
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1FlightNo: TcxGridDBBandedColumn
                Caption = 'Schedule'
                DataBinding.FieldName = 'FlightNo'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridMasterDBBandedTableView1FlightNoPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 182
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1From_TrainStations_id: TcxGridDBBandedColumn
                Caption = 'From Station'
                DataBinding.FieldName = 'FromStationLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridMasterDBBandedTableView1From_TrainStations_idPropertiesButtonClick
                Visible = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 150
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1To_TrainStations_id: TcxGridDBBandedColumn
                Caption = 'To Station'
                DataBinding.FieldName = 'ToStationLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridMasterDBBandedTableView1To_TrainStations_idPropertiesButtonClick
                Visible = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 150
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1Class_id: TcxGridDBBandedColumn
                Caption = 'Class'
                DataBinding.FieldName = 'ClassLookup'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.OnButtonClick = cxGridMasterDBBandedTableView1Class_idPropertiesButtonClick
                Options.Filtering = False
                Options.Grouping = False
                Width = 120
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1ETD: TcxGridDBBandedColumn
                DataBinding.FieldName = 'ETD'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.UseCtrlIncrement = True
                Options.Filtering = False
                Options.Grouping = False
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1ETA: TcxGridDBBandedColumn
                DataBinding.FieldName = 'ETA'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.UseCtrlIncrement = True
                Options.Filtering = False
                Options.Grouping = False
                Width = 69
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1TravelDay: TcxGridDBBandedColumn
                DataBinding.FieldName = 'TravelDay'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1Cost: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Cost'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1Masters_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Masters_id'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1status: TcxGridDBBandedColumn
                DataBinding.FieldName = 'status'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1TrainNo: TcxGridDBBandedColumn
                DataBinding.FieldName = 'TrainNo'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 19
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1LineNum: TcxGridDBBandedColumn
                DataBinding.FieldName = 'LineNum'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 20
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1QuoCities_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'QuoCities_id'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 21
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1DaysOfOperation: TcxGridDBBandedColumn
                DataBinding.FieldName = 'DaysOfOperation'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 22
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1Overnight: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Overnight'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 23
                Position.RowIndex = 0
              end
              object cxGridMasterDBBandedTableView1Nights: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Nights'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Position.BandIndex = 0
                Position.ColIndex = 24
                Position.RowIndex = 0
              end
            end
            object cxGridMasterLevel1: TcxGridLevel
              GridView = cxGridMasterDBBandedTableView1
            end
          end
        end
        object cxRouteFinderButton: TcxButton
          Left = 103
          Top = 484
          Width = 94
          Height = 22
          Caption = 'Route Finder'
          TabOrder = 3
          OnClick = cxRouteFinderButtonClick
        end
        object cxAlternateRouteButton: TcxButton
          Left = 215
          Top = 484
          Width = 94
          Height = 22
          Caption = 'Alternate'
          TabOrder = 4
          OnClick = cxAlternateRouteButtonClick
        end
      end
      object AccTab: TcxTabSheet
        Caption = 'Accommodation'
        ImageIndex = 1
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = 'Accommodation'
          ParentColor = False
          Style.Color = 15451300
          TabOrder = 0
          Height = 506
          Width = 973
          object Label32: TLabel
            Left = 44
            Top = 39
            Width = 31
            Height = 13
            Caption = 'Hotel'
            Transparent = True
          end
          object Label29: TLabel
            Left = 12
            Top = 62
            Width = 65
            Height = 13
            Caption = 'Room Type'
            Transparent = True
          end
          object Label30: TLabel
            Left = 274
            Top = 64
            Width = 23
            Height = 13
            Caption = 'A/C'
            Transparent = True
          end
          object Label31: TLabel
            Left = 19
            Top = 85
            Width = 57
            Height = 13
            Caption = 'Meal Plan'
            Transparent = True
          end
          object Label5: TLabel
            Left = 273
            Top = 85
            Width = 51
            Height = 13
            Caption = 'Selected'
            Transparent = True
          end
          object Label6: TLabel
            Left = 274
            Top = 40
            Width = 56
            Height = 13
            Caption = 'Overnight'
            Transparent = True
          end
          object HotelLcmb: TcxDBLookupComboBox
            Left = 84
            Top = 36
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
            Width = 161
          end
          object RoomTypeLcmb: TcxDBLookupComboBox
            Left = 84
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
            TabOrder = 1
            Width = 161
          end
          object ACchkbox: TcxDBCheckBox
            Left = 330
            Top = 62
            DataBinding.DataField = 'AC'
            DataBinding.DataSource = AccDs
            ParentColor = False
            Properties.ReadOnly = False
            Style.Color = 16247513
            TabOrder = 2
            Width = 21
          end
          object MealPlanLcmb: TcxDBLookupComboBox
            Left = 84
            Top = 83
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
            TabOrder = 3
            Width = 161
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 330
            Top = 82
            DataBinding.DataField = 'Selected'
            DataBinding.DataSource = AccDs
            ParentColor = False
            Properties.ReadOnly = False
            Style.Color = 16247513
            TabOrder = 4
            Width = 21
          end
          object cxDBCheckBox3: TcxDBCheckBox
            Left = 330
            Top = 38
            DataBinding.DataField = 'ReserveHotelOvernight'
            DataBinding.DataSource = AccDs
            ParentColor = False
            Properties.ReadOnly = True
            Style.Color = 16247513
            TabOrder = 5
            Width = 21
          end
          object cxGrid1: TcxGrid
            Left = 11
            Top = 168
            Width = 350
            Height = 270
            TabOrder = 6
            object cxGridDBTableView2: TcxGridDBTableView
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
            object cxGridDBBandedTableView1: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = AccDs
              DataController.KeyFieldNames = 'QuoAccommodation_id'
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
              Bands = <
                item
                  Width = 302
                end>
              object cxGridDBBandedTableView1DateIn: TcxGridDBBandedColumn
                Caption = 'Date In'
                DataBinding.FieldName = 'DateIn'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.InputKind = ikStandard
                Properties.Kind = ckDateTime
                Width = 158
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1DateOut: TcxGridDBBandedColumn
                Caption = 'Date Out'
                DataBinding.FieldName = 'DateOut'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.InputKind = ikStandard
                Width = 144
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBBandedTableView1
            end
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 506
          Width = 973
          Height = 41
          Align = alBottom
          TabOrder = 1
        end
      end
      object ServicesTab: TcxTabSheet
        Caption = 'Sight Seeing'
        ImageIndex = 2
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = 'Sight Seeing'
          ParentColor = False
          Style.Color = 15451300
          TabOrder = 0
          Height = 547
          Width = 973
          object QuoLinesGrid: TcxGrid
            Left = 3
            Top = 18
            Width = 967
            Height = 526
            Align = alClient
            TabOrder = 0
            object QuoLinesGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = SightSeeingDs
              DataController.KeyFieldNames = 'QuoServices_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object QuoLinesGridDBTableView1QuoServices_id: TcxGridDBColumn
                DataBinding.FieldName = 'QuoServices_id'
                Visible = False
              end
              object QuoLinesGridDBTableView1Selected: TcxGridDBColumn
                DataBinding.FieldName = 'Selected'
                Options.Filtering = False
                Options.Grouping = False
                Width = 59
              end
              object QuoLinesGridDBTableView1Services_id: TcxGridDBColumn
                Caption = 'Service'
                DataBinding.FieldName = 'Services_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Services_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Description'
                  end>
                Properties.ListSource = BackOfficeDataModule.ServicesDS
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 217
              end
              object QuoLinesGridDBTableView1Timings: TcxGridDBColumn
                DataBinding.FieldName = 'Timings'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 90
              end
              object QuoLinesGridDBTableView1Guide: TcxGridDBColumn
                DataBinding.FieldName = 'Guide'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Options.Filtering = False
                Options.Grouping = False
              end
              object QuoLinesGridDBTableView1Transport: TcxGridDBColumn
                DataBinding.FieldName = 'Transport'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 60
              end
              object QuoLinesGridDBTableView1EntranceFees: TcxGridDBColumn
                Caption = 'Entrance Fees'
                DataBinding.FieldName = 'EntranceFees'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Options.Filtering = False
                Options.Grouping = False
                Width = 90
              end
              object QuoLinesGridDBTableView1DaysName: TcxGridDBColumn
                Caption = 'Availability'
                DataBinding.FieldName = 'DaysName'
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 86
              end
              object QuoLinesGridDBTableView1ServiceDate: TcxGridDBColumn
                Caption = 'Date'
                DataBinding.FieldName = 'ServiceDate'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.SaveTime = False
                Properties.ShowTime = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 86
              end
              object QuoLinesGridDBTableView1StartTime: TcxGridDBColumn
                Caption = 'Start Time'
                DataBinding.FieldName = 'StartTime'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.UseCtrlIncrement = True
                Options.Filtering = False
                Options.Grouping = False
                Width = 79
              end
              object QuoLinesGridDBTableView1Vehicles_id: TcxGridDBColumn
                Caption = 'Vehicle'
                DataBinding.FieldName = 'Vehicles_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Vehicles_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Vehicle'
                  end>
                Properties.ListSource = VehicleDs
                Options.Filtering = False
                Options.Grouping = False
              end
              object QuoLinesGridDBTableView1NoOfVehicles: TcxGridDBColumn
                Caption = 'No. of Vehicles'
                DataBinding.FieldName = 'NoOfVehicles'
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
                Width = 82
              end
              object QuoLinesGridDBTableView1Lock: TcxGridDBColumn
                DataBinding.FieldName = 'Lock'
              end
              object QuoLinesGridDBTableView1AgentAddressbook_id: TcxGridDBColumn
                Caption = 'Agent'
                DataBinding.FieldName = 'AgentAddressbook_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 600
                Properties.KeyFieldNames = 'Addressbook_id'
                Properties.ListColumns = <
                  item
                    Width = 400
                    FieldName = 'Organisation'
                  end
                  item
                    Width = 200
                    FieldName = 'City'
                  end>
                Properties.ListSource = BackOfficeDataModule.AgentDS
                Width = 120
              end
            end
            object QuoLinesGridLevel1: TcxGridLevel
              GridView = QuoLinesGridDBTableView1
            end
          end
        end
      end
      object TransfersTab: TcxTabSheet
        Caption = 'Transfers'
        ImageIndex = 3
        object cxGroupBox4: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = 'Sight Seeing'
          ParentColor = False
          Style.Color = 15451300
          TabOrder = 0
          Height = 547
          Width = 973
          object cxTransferGrid: TcxGrid
            Left = 3
            Top = 18
            Width = 967
            Height = 526
            Align = alClient
            TabOrder = 0
            object cxTransferGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = TransferDs
              DataController.KeyFieldNames = 'QuoServices_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,##0.00'
                  Kind = skSum
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object cxTransferGridDBTableView1QuoServices_id: TcxGridDBColumn
                DataBinding.FieldName = 'QuoServices_id'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxTransferGridDBTableView1Selected: TcxGridDBColumn
                DataBinding.FieldName = 'Selected'
                Options.Filtering = False
                Options.Grouping = False
                Width = 67
              end
              object cxTransferGridDBTableView1Services_id: TcxGridDBColumn
                Caption = 'Service'
                DataBinding.FieldName = 'Services_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Services_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Description'
                  end>
                Properties.ListSource = BackOfficeDataModule.ServicesDS
                Options.Editing = False
                Options.Filtering = False
                Options.Grouping = False
                Width = 313
              end
              object cxTransferGridDBTableView1ServiceDate: TcxGridDBColumn
                Caption = 'Service Date'
                DataBinding.FieldName = 'ServiceDate'
                Options.Filtering = False
                Options.Grouping = False
                Width = 106
              end
              object cxTransferGridDBTableView1StartTime: TcxGridDBColumn
                Caption = 'Start Time'
                DataBinding.FieldName = 'StartTime'
                PropertiesClassName = 'TcxTimeEditProperties'
                Properties.TimeFormat = tfHourMin
                Properties.UseCtrlIncrement = True
                Options.Filtering = False
                Options.Grouping = False
                Width = 102
              end
              object cxTransferGridDBTableView1Vehicles_id: TcxGridDBColumn
                Caption = 'Vehicle'
                DataBinding.FieldName = 'Vehicles_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Vehicles_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Vehicle'
                  end>
                Properties.ListSource = VehicleDs
                Options.Filtering = False
                Options.Grouping = False
                Width = 128
              end
              object cxTransferGridDBTableView1NoOfVehicles: TcxGridDBColumn
                Caption = 'No. of Vehicles'
                DataBinding.FieldName = 'NoOfVehicles'
                Options.Filtering = False
                Options.Grouping = False
                Options.Sorting = False
              end
              object cxTransferGridDBTableView1AC: TcxGridDBColumn
                DataBinding.FieldName = 'AC'
                Options.Filtering = False
                Options.Grouping = False
              end
              object cxTransferGridDBTableView1Lock: TcxGridDBColumn
                DataBinding.FieldName = 'Lock'
              end
              object cxTransferGridDBTableView1AgentAddressbook_id: TcxGridDBColumn
                Caption = 'Agent'
                DataBinding.FieldName = 'AgentAddressbook_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownWidth = 600
                Properties.KeyFieldNames = 'Addressbook_id'
                Properties.ListColumns = <
                  item
                    Width = 400
                    FieldName = 'Organisation'
                  end
                  item
                    Width = 200
                    FieldName = 'City'
                  end>
                Properties.ListSource = BackOfficeDataModule.AgentDS
              end
            end
            object cxTransferGridLevel1: TcxGridLevel
              GridView = cxTransferGridDBTableView1
            end
          end
        end
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 581
      Width = 982
      Height = 41
      Align = alBottom
      TabOrder = 1
      object cxButton1: TcxButton
        Left = 427
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Cancel'
        ModalResult = 2
        TabOrder = 0
        OnClick = cxButton1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFF33FF333FFF339993370733
          999333777FF37FF377733339993000399933333777F777F77733333399970799
          93333333777F7377733333333999399933333333377737773333333333990993
          3333333333737F73333333333331013333333333333777FF3333333333910193
          333333333337773FF3333333399000993333333337377737FF33333399900099
          93333333773777377FF333399930003999333337773777F777FF339993370733
          9993337773337333777333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object cxButton9: TcxButton
        Left = 555
        Top = 8
        Width = 75
        Height = 25
        Caption = 'OK'
        ModalResult = 1
        TabOrder = 1
        OnClick = cxButton9Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
      object cxAlternateTransferButton: TcxButton
        Left = 16
        Top = 8
        Width = 129
        Height = 25
        Caption = 'Alternate Transfers'
        TabOrder = 2
        OnClick = cxAlternateTransferButtonClick
      end
      object cxCopySightSeeingButton: TcxButton
        Left = 152
        Top = 8
        Width = 161
        Height = 25
        Caption = 'Add same Sight Seeing'
        TabOrder = 3
        OnClick = cxCopySightSeeingButtonClick
      end
    end
  end
  object ImageList1: TImageList
    Left = 144
    Top = 80
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
      000000000000000000000000000000000000E9E9E900D2D2D200E3E3E300F3F3
      F300FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDA42B00B2831B0087733E00666A
      6D007B7B7B009E9E9E00BFBFBF00DADADA00EAEAEA00FBFBFB00FBFBFB00DEDE
      DE00F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8BD6E00F1D6AA00F3DAB500F3D9
      B400F3D9B400EAC47B00DDA62D009D7C2C00796844006D6D6D006D8955004E78
      2E0088888800DDDDDD00F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB9300E6B86100F5E1C200F5E0
      C200F5E0C100F5DFC000F5DFBF00F4DEBE00E8D3B500AFA586008DBD61007CCE
      9A00618E2700937430008C8C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB9300F0CF9E00E1AD4100F7E7
      CF00F7E7CE00F7E6CD00F7E6CD00F6E6CC00B6AA990061AC21007CCB8B0076CA
      8C007ACD950083A133006B6B6B00FBFBFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB9300F0D09F00F2D8B100DEA8
      3200F9EEDC00F9EDDB00F9EDDA00C0B7AA004CA50000A1D8A3006DC3750071C5
      7D0074C8870078CB8F0046602D00D7D7D7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB9300F1D1A100F3D9B200F5E1
      C400DDA62B00FCF5EA00FBF4E800FBF4E800B8CF9A0055A3300089C881006BC1
      6F006FC478005199230050922200F4F4F4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB9300F1D2A300F3D9B400F5E2
      C600F8EBD700E5BB5C00FEFBF700FEFBF600FEFBF600BBB8B600A2C4810065BD
      600069C06A00F6E4C9006D6D6D00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECB9400F1D3A500F3DAB600F6E3
      C700F6E6CB00C4B46E00CCA63F00E0AF4000CDB2760071910400AAD2940060B9
      4C00529F2800F8EBD70089858000F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECC9500F1D3A600F4DBB700E4B7
      5800C1E0EC00BCE4FC00AED4EC0090AFC3007DA79800478F020064B837005AB3
      3500EFECD800FBF3E600847B6700F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFCC9600F0D09D00D7BC6F00D4EE
      FD0060AA2F005EA2300059A22400499902008BB5620069B8250050A20F00CCA9
      3F00FEFBF600FEFAF500806F4B00F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFA93800E1F2FD00E8F6FE00E6F5
      FE00E2F4FE00D6ECEE00B8D8BF0091BD8000B4D6BF00D6EFFD00D3EEFD00D1ED
      FD00D5AA3F00FFFFFF00806F4B00F3F3F3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECD49D0099C0BB0084CEF90084CE
      F90084CEF90084CEF90084CEF90084CEF90085CEF90086CFF90089D0F90080C7
      F80083C8F800BFAD5E009B8B6600F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D7AE4C008DD2
      F90092D3FA0096D5FA009AD7FA009FD8FB00A3DAFB00A8DCFB00ACDDFB00B1DF
      FB00BCCDBD00CCAA6100F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FBF7
      EE00C8B05E00BCE4FC00C1E6FC00C5E8FB00CBEAFC00CFECFC00D3E3DD00CBA1
      4500F5F5F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9CC8C00E3DEBF00F0F9FE00F3F5EF00CDA13B00F0F0F0000000
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
      0000FEFEFE00EAEAEA00D4D4D400CFCFCF00D0D0D000DDDDDD00F7F7F7000000
      0000000000000000000000000000000000005945FF005945FF005945FF005945
      FF005945FF005945FF005945FF005945FF005945FF005945FF005945FF005945
      FF005945FF005945FF005945FF005945FF00FFD18C00FFE98B00FFD98D00FFD2
      9900FFD07900FFDA7A00FFDE8200FEE09D00FFFFCB00FFFFA300FFE29900FFEC
      C400FFF4D400FFFCD800FFF4D4005945FF0000000000EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00AAAAAA00000000000000000000000000FEFEFE00E0E0
      E000907C7C008E171800AB2123009F01030098040600712C2D006E6E6E00BABA
      BA00F8F8F800000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD18800FEE18900FFDE8D00FFD6
      8900FFD07900FFD98000FFD38400FFE6AF00FFFAE200FCF96E00FFE69F00FFE3
      C500FFF9DB00FFF6CE00FFF7D6005945FF000000000000000000EEEEEE00EEEE
      EE0000000000AAAAAA0000000000EEEEEE00EEEEEE0000000000AAAAAA00AAAA
      AA00AAAAAA00AAAAAA00000000000000000000000000FEFEFE00C4BBBB009F01
      03009F0103009F010300FFD38000DB9A91009F0103009F0103009F010300771E
      1F008B8B8B00F2F2F2000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD28100FFD58500FFD28700FFD6
      9400FFD98D00FFD28100FFD56400FFF4DF00FFF2A300FFE77800FFD69400FFDD
      BC00FFF7D600FFFAD300FFF2D1005945FF000000000000000000000000000000
      000000000000AAAAAA0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBC2C2009F0103009F01
      03009F0103009F010300C96C6500FFDEA000FFD78C00AB271A009F0103009F01
      03008D0C0E0089898900F7F7F70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000002C1B1200A6938D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD16E00FFBE8600FFCD8800FFE1
      8D00FFD16E00FFC68A00FFE07100FFEDCC00FFD77600FFE07100FFCE9100FFD2
      AF00FFF3B300FFF7DD00FFF4D4005945FF000000000000000000000000000000
      000000000000AAAAAA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F2F2009F0103009F0103009F01
      03009F010300B1313200FFF1D600FFEFD100FFE8BD00FFDB97009F0303009F01
      03009F010300771E1F00BABABA0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0065665500352F11000A88B00000667F0005718900248BB4007FE3FF000708
      110007081100B6ACAB00FFFFFF005945FF00FFD37400EF845F00FFCAA200FFE2
      8000FFE9B80000000000F2D69A00FFCBA900FFD69C00FFDF7C00FFD58500FFCA
      9500FFE99900FFEDBD00FFF0CC005945FF000000000000000000EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE0000000000AAAAAA00AAAA
      AA00AAAAAA00AAAAAA000000000000000000A7313300A50E0B00AB1B1300AF23
      1700AF231800FFFAF000FFFAF100FFFAEF00FFF3DC00FFE6B600F9CF8B009F01
      03009F0103009F0103006E6E6E00F7F7F700FFFFFF00FFFFFF00FFFFFF00003A
      2E002C1B120059443E000973930003547200176C890000536A00000000000000
      00000000000003060400797C7B005945FF00FFD776000000000000000000FFF6
      AB00F4C67C0000000000000000000000000000000000FFE17A00FFD98000FFCA
      8C00FFDD9800FFDD9800FFE1A9005945FF000000000000000000EEEEEE000000
      000000000000000000000065CC00EEEEEE00EEEEEE0000000000000000000000
      000000000000000000000000000000000000B1271A00BB3D2700C24D3000C656
      3500C6563600FCEFE300FFFEFD00FFFEFC00FFF7E800FFEAC200C35836009F05
      03009F010300BD505200835B5B00DDDDDD00FFFFFF0000000000003748000029
      340039383A000000000042AFB5008BD1C000A9E9E500A5E5FF00A5E5FF008BDA
      FF0000000000AC9E58003F5646005945FF00FFC6690085641A00000000000000
      0000FFDAC7000000000000000000FECB7500FFDAA000FFDA8A00FFCE8500FFC8
      8200FFCD9600FFD98D00FFE68E005945FF000000000000000000EEEEEE00EEEE
      EE000000000000000000EEEEEE00EEEEEE00EEEEEE00000000000065CC000065
      CC000065CC000065CC000000000000000000C5533400D06C4300D97F4D00DD89
      5300ECBB9800E4AF9000FFFCF700FFFCF600E3B59F00A7110D009F0103009F01
      03009F010300FFFDF900EDE0DA00D0D0D00039383A0000486900023E58000044
      56000000000034BBC800471C5C00B9B78A00F9FFF300BAC8B80096DCEF000306
      040000313600FFFFFF00014C63005945FF00FFCE7D00FFECB800000000000000
      0000000000000000000005173300FFCAA200FFC79100FFCD8A00FFCE9100FFC7
      7C00FFCA8C00FFE18500FFDE8D005945FF00000000000000000000000000EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00000000000065CC000065CC000065
      CC000065CC00000000000000000000000000D77B4C00E5995D00EFAF6A00FAE1
      C300FFF6E500EAA86400F6D5B300C9643800C85A3800B6332100A30908009F01
      03009F010300FFFAF000FFF9EC00CFCFCF000031360000495C00145C75003665
      79009DF5F50047B1C7006DDBDB00A9E9E500BCEEF9009EE0FB00B6ECFD00CBE6
      FF00FFFFFF00269BCC00A7B994005945FF00FFC48200FFD16E006E491B000000
      0000000000000000000000000000000000000000000000000000F2AC3D00FFC2
      7400FFDD7900FFD28100FFD295005945FF000000000000000000000000000000
      0000EEEEEE00EEEEEE00EEEEEE0000000000000000000065CC000065CC000065
      CC0000000000000000000000000000000000E8A06100F8C47600FFF9EE00E7BE
      A200FFDFA100FFF5E200F9C57700E9A26200D77A4B00C34F3100AE2217009F01
      03009F010300FFF7E800FFF4DF00D4D4D40011626500145C750071827F00B7F3
      FF00F0FFEC00FFFFFF00E0FFF100D9F9EA00D6F5D600F9FFF300FFFFFF00B8E8
      FF005DC2F300A1D0F900C9C8B5005945FF00FFC86F00FFD28100FFE3CA000000
      0000000000000000000000000000000000000000000000000000FFF2A300FFE1
      7A00FFE17A00FFD58500FFCA8C005945FF000000000000000000000000000000
      000000000000EEEEEE000000000000000000AAAAAA000065CC000065CC000000
      000000000000000000000000000000000000F6BF7300FFDC9A00FFFFFF00FFFF
      FD00EDCDB600F9E9D600FFDD9D00F7C17500E3955A00CD663F00B7362300A206
      0700B7414200FFF1D700C39F8B00EAEAEA00B6C3C3004B574700C9E0C9000306
      0400000000000000000065665500ACAF8E004B9F9E006FCBE40034BAD60066B4
      AF00C4CDCB00F2F2F200FFFFFF005945FF00FFD37400FFD87C00FFCD8D000000
      00000000000000000000000000003D460000CFD8AA00D0ECB400FBFB7E00FFE1
      7A00FFD77600FFD38400FFD581005945FF000000000000000000000000000000
      0000EEEEEE0000000000EEEEEE0000000000AAAAAA0000000000000000000000
      000000000000000000000000000000000000FED38400FFF7E900FFFEFB00FFFD
      FA00FFFAF100FFF4E000E7B88F00FED48600EBA76500D4754800BD432A00A610
      0C00CF7E7D00A50F0E00907C7C00FEFEFE00FFFFFF00898D6300F9FAF900797C
      7B006767670083848600CCCCCC00FCFCFC00FFFFFF00352F1100FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD37C00FFDF7C00FFD37C00591F
      0000140D0000F0FFC500FFE6A800FFD58100FFD07900FFDF7C00FFCF8000FFCE
      8500FFD18C00FFD87C00EAFD72005945FF00000000000000000000000000EEEE
      EE00EEEEEE0000000000EEEEEE00000000000000000000000000000000000000
      000000000000000000000000000000000000FDF6E900FFF6E600FFFAF000FFF9
      EE00FFF6E600FFF0D500FFE8BC00E1A26600EEAE6900DA845700EBBDA200FFE9
      C000EDBC8400B7392B00E0E0E00000000000FFFFFF00FFFFFF00D6D6D600B4BB
      B4009CA5940081856B009CA59400858B7700C7CBC100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFC77800FFE27600FFE69F000000
      0000FFE4D400FFE28000FFCE8A00FFCD8A00FFCE8500FFD08400FFCB7E00FFCD
      8A00FFCA8500FFD58500CCE3A1005945FF000000000000000000000000000000
      0000EEEEEE0000000000EEEEEE00000000000065CC0000000000000000000000
      00000000000000000000000000000000000000000000FCEBCB00FFF5E100FFF3
      DB00FFF0D200F3D4B000FFE6B500F9D6A100E0955600D6784A00BF452C00A713
      0E009F010300C4BBBB00FEFEFE0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFC27C00FFDE7300FFE999000000
      0000E7B99400FFDE8200FFCF8800FFCF8800FFCF8800FFD08400FFD08400FFD2
      9000FFD37C00FFD38400CCE3A1005945FF000000000000000000000000000000
      000000000000EEEEEE00000000000065CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCEFD500FFE9
      C000FFE6B700FFE0A500F9CE8900FFD38000E69C5F00D06C4300BA3B2600A40A
      0900CBC2C200FEFEFE000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005945FF00FFD07900FFD98000FFDC6D00F5E2
      AB00FFCE7800FFD98D00FFD29000FFD18C00FFCF8800FFCF8800FFCF8800FFCF
      8000FFE17A00FFDD7900D3EFAA005945FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDF7
      ED00FFDA9300FFD48400FFD38000E7A25F00DC855100C7593700B6524500F2F2
      F20000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
  object TicketSds: TSQLDataSet
    CommandText = 'SELECT * FROM QuoTickets WHERE QuoCities_id = :QuoCities_id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoCities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 720
    Top = 384
  end
  object TicketDsp: TDataSetProvider
    DataSet = TicketSds
    Left = 736
    Top = 384
  end
  object TicketCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TicketDsp'
    AfterInsert = TicketCdsAfterInsert
    BeforePost = TicketCdsBeforePost
    AfterPost = TicketCdsAfterPost
    AfterDelete = TicketCdsAfterDelete
    Left = 752
    Top = 385
    object TicketCdsQuoTickets_id: TIntegerField
      FieldName = 'QuoTickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object TicketCdsQuoCities_id: TIntegerField
      FieldName = 'QuoCities_id'
    end
    object TicketCdsDaysOfOperation: TIntegerField
      FieldName = 'DaysOfOperation'
    end
    object TicketCdsOvernight: TBooleanField
      FieldName = 'Overnight'
    end
    object TicketCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object TicketCdsHops: TIntegerField
      FieldName = 'Hops'
    end
    object TicketCdsModePreference: TIntegerField
      FieldName = 'ModePreference'
    end
    object TicketCdsCarReleaseDate: TSQLTimeStampField
      FieldName = 'CarReleaseDate'
    end
    object TicketCdsClassLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'ClassLookUp'
      LookupDataSet = ClassCds
      LookupKeyFields = 'Class_id'
      LookupResultField = 'class'
      KeyFields = 'Class_id'
      Size = 50
      Lookup = True
    end
    object TicketCdsP2P: TIntegerField
      FieldName = 'P2P'
    end
    object TicketCdsReserveHotelOvernight: TBooleanField
      FieldName = 'ReserveHotelOvernight'
    end
    object TicketCdsCarReportDate: TSQLTimeStampField
      FieldName = 'CarReportDate'
    end
    object TicketCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object TicketCdsFromStationLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'FromStationLookup'
      LookupDataSet = BackOfficeDataModule.TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'station'
      KeyFields = 'From_TrainStations_id'
      Size = 100
      Lookup = True
    end
    object TicketCdsToStationLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ToStationLookup'
      LookupDataSet = BackOfficeDataModule.TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'station'
      KeyFields = 'To_TrainStations_id'
      Size = 100
      Lookup = True
    end
    object TicketCdsDriveTypes_id: TIntegerField
      FieldName = 'DriveTypes_id'
    end
  end
  object TicketDs: TDataSource
    DataSet = TicketCds
    Left = 776
    Top = 387
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
    Left = 768
    Top = 240
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 782
    Top = 241
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
    Left = 800
    Top = 248
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
    Left = 812
    Top = 248
  end
  object TktCitiesSds: TSQLDataSet
    CommandText = 'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'ORDER BY c.City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 336
    Top = 318
  end
  object TktCitiesDsp: TDataSetProvider
    DataSet = TktCitiesSds
    Left = 350
    Top = 319
  end
  object TktCitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TktCitiesDsp'
    Left = 368
    Top = 318
    object TktCitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TktCitiesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object TktCitiesDs: TDataSource
    DataSet = TktCitiesCds
    Left = 380
    Top = 318
  end
  object AccSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoAccommodation WHERE QuoCities_id = :QuoCities_i' +
      'd'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoCities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 106
    Top = 137
  end
  object AccDsp: TDataSetProvider
    DataSet = AccSds
    Left = 122
    Top = 137
  end
  object AccCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccDsp'
    AfterInsert = AccCdsAfterInsert
    BeforePost = AccCdsBeforePost
    AfterPost = AccCdsAfterPost
    AfterDelete = AccCdsAfterDelete
    Left = 138
    Top = 138
    object AccCdsQuoAccommodation_id: TIntegerField
      FieldName = 'QuoAccommodation_id'
    end
    object AccCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object AccCdsDayIn: TIntegerField
      FieldName = 'DayIn'
    end
    object AccCdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
      DisplayFormat = 'dd/mm/yyyy HH:mm'
    end
    object AccCdsDateOut: TSQLTimeStampField
      FieldName = 'DateOut'
      DisplayFormat = 'dd/mm/yyyy'
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
    object AccCdsQuoCities_id: TIntegerField
      FieldName = 'QuoCities_id'
    end
    object AccCdsSelected: TBooleanField
      FieldName = 'Selected'
    end
    object AccCdsReserveHotelOvernight: TBooleanField
      FieldName = 'ReserveHotelOvernight'
    end
  end
  object AccDs: TDataSource
    DataSet = AccCds
    Left = 162
    Top = 140
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
    Left = 418
    Top = 105
  end
  object RoomTypeDsp: TDataSetProvider
    DataSet = RoomTypeSds
    Left = 434
    Top = 105
  end
  object RoomTypeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = HotelDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'RoomTypeDsp'
    Left = 442
    Top = 105
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
    Left = 458
    Top = 105
  end
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 474
    Top = 67
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = AccCitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 458
    Top = 67
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
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 442
    Top = 67
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM fn_Addressbook (2,'#39'H'#39')'#13#10'WHERE Cities_id = :Cities_' +
      'id'
    DataSource = AccCitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 426
    Top = 67
  end
  object AccCitiesSds: TSQLDataSet
    CommandText = 'SELECT Cities_id FROM Cities'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 206
    Top = 132
  end
  object AccCitiesDsp: TDataSetProvider
    DataSet = AccCitiesSds
    Left = 222
    Top = 132
  end
  object AccCitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccCitiesDsp'
    Left = 246
    Top = 133
    object AccCitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object AccCitiesDs: TDataSource
    DataSet = AccCitiesCds
    Left = 262
    Top = 135
  end
  object SightSeeingDsp: TDataSetProvider
    DataSet = SightSeeingSds
    Left = 856
    Top = 422
  end
  object SightSeeingSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoServices WHERE QuoCities_id = :QuoCities_id AND' +
      ' SightSeeing = :SightSeeing'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoCities_id'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = 'SightSeeing'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 832
    Top = 422
  end
  object SightSeeingCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SightSeeingDsp'
    BeforePost = SightSeeingCdsBeforePost
    AfterPost = SightSeeingCdsAfterPost
    AfterDelete = SightSeeingCdsAfterDelete
    OnCalcFields = SightSeeingCdsCalcFields
    Left = 872
    Top = 423
    object SightSeeingCdsQuoServices_id: TIntegerField
      FieldName = 'QuoServices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SightSeeingCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object SightSeeingCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object SightSeeingCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object SightSeeingCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object SightSeeingCdsStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      DisplayFormat = 'HH:mm'
    end
    object SightSeeingCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object SightSeeingCdsGuide: TBooleanField
      FieldName = 'Guide'
    end
    object SightSeeingCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
    object SightSeeingCdsSightSeeing: TBooleanField
      FieldName = 'SightSeeing'
    end
    object SightSeeingCdsPlace: TStringField
      FieldName = 'Place'
      Size = 50
    end
    object SightSeeingCdsTransferTypes_id: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object SightSeeingCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object SightSeeingCdsServiceDay: TIntegerField
      FieldName = 'ServiceDay'
    end
    object SightSeeingCdsServiceDate: TSQLTimeStampField
      FieldName = 'ServiceDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SightSeeingCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object SightSeeingCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
    end
    object SightSeeingCdsMasters_id: TStringField
      FieldName = 'Masters_id'
      Size = 10
    end
    object SightSeeingCdsFlightNo: TStringField
      FieldName = 'FlightNo'
      Size = 30
    end
    object SightSeeingCdsstatus: TIntegerField
      FieldName = 'status'
    end
    object SightSeeingCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
    object SightSeeingCdsEntranceFees: TBooleanField
      FieldName = 'EntranceFees'
    end
    object SightSeeingCdsQuoCities_id: TIntegerField
      FieldName = 'QuoCities_id'
    end
    object SightSeeingCdsSelected: TBooleanField
      FieldName = 'Selected'
    end
    object SightSeeingCdsTimings: TStringField
      FieldName = 'Timings'
    end
    object SightSeeingCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Size = 40
      Calculated = True
    end
    object SightSeeingCdsDaysOfOperation: TIntegerField
      FieldName = 'DaysOfOperation'
    end
    object SightSeeingCdsLock: TBooleanField
      FieldName = 'Lock'
    end
  end
  object SightSeeingDs: TDataSource
    DataSet = SightSeeingCds
    Left = 888
    Top = 425
  end
  object TransferSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoServices WHERE QuoCities_id = :QuoCities_id AND' +
      ' SightSeeing = :SightSeeing'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'QuoCities_id'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = 'SightSeeing'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 832
    Top = 374
  end
  object TransferDsp: TDataSetProvider
    DataSet = TransferSds
    Left = 856
    Top = 374
  end
  object TransferCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TransferDsp'
    BeforePost = TransferCdsBeforePost
    AfterPost = TransferCdsAfterPost
    AfterDelete = TransferCdsAfterDelete
    OnCalcFields = TransferCdsCalcFields
    Left = 872
    Top = 375
    object TransferCdsQuoServices_id: TIntegerField
      FieldName = 'QuoServices_id'
    end
    object TransferCdsQuotations_id: TIntegerField
      FieldName = 'Quotations_id'
    end
    object TransferCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object TransferCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object TransferCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object TransferCdsStartTime: TSQLTimeStampField
      FieldName = 'StartTime'
      DisplayFormat = 'HH:mm'
    end
    object TransferCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object TransferCdsGuide: TBooleanField
      FieldName = 'Guide'
    end
    object TransferCdsTransport: TBooleanField
      FieldName = 'Transport'
    end
    object TransferCdsSightSeeing: TBooleanField
      FieldName = 'SightSeeing'
    end
    object TransferCdsPlace: TStringField
      FieldName = 'Place'
      Size = 50
    end
    object TransferCdsTransferTypes_id: TIntegerField
      FieldName = 'TransferTypes_id'
    end
    object TransferCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object TransferCdsServiceDay: TIntegerField
      FieldName = 'ServiceDay'
    end
    object TransferCdsServiceDate: TSQLTimeStampField
      FieldName = 'ServiceDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object TransferCdsNoOfVehicles: TIntegerField
      FieldName = 'NoOfVehicles'
    end
    object TransferCdsCost: TFMTBCDField
      FieldName = 'Cost'
      Precision = 18
      Size = 4
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
    object TransferCdsLineNum: TIntegerField
      FieldName = 'LineNum'
    end
    object TransferCdsEntranceFees: TBooleanField
      FieldName = 'EntranceFees'
    end
    object TransferCdsQuoCities_id: TIntegerField
      FieldName = 'QuoCities_id'
    end
    object TransferCdsSelected: TBooleanField
      FieldName = 'Selected'
    end
    object TransferCdsTimings: TStringField
      FieldName = 'Timings'
    end
    object TransferCdsDaysOfOperation: TIntegerField
      FieldName = 'DaysOfOperation'
    end
    object TransferCdsLock: TBooleanField
      FieldName = 'Lock'
    end
  end
  object TransferDs: TDataSource
    DataSet = TransferCds
    Left = 888
    Top = 377
  end
  object VehicleSds: TSQLDataSet
    CommandText = 
      'SELECT Vehicles_id, Vehicle FROM Vehicles '#13#10'WHERE Vehicles_id > ' +
      '0 ORDER BY Vehicle'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 768
    Top = 168
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 782
    Top = 169
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 800
    Top = 176
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
    Left = 812
    Top = 176
  end
  object DriveTypesSds: TSQLDataSet
    CommandText = 'SELECT * FROM DriveTypes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 784
    Top = 96
  end
  object DriveTypesDsp: TDataSetProvider
    DataSet = DriveTypesSds
    Left = 798
    Top = 97
  end
  object DriveTypesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DriveTypesDsp'
    Left = 816
    Top = 104
    object DriveTypesCdsDriveTypes_id: TIntegerField
      FieldName = 'DriveTypes_id'
    end
    object DriveTypesCdsDriveType: TStringField
      FieldName = 'DriveType'
      Size = 50
    end
  end
  object DriveTypesDs: TDataSource
    DataSet = DriveTypesCds
    Left = 828
    Top = 104
  end
end
