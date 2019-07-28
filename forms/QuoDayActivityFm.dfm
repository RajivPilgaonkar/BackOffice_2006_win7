inherited QuoDayActivityForm: TQuoDayActivityForm
  Left = 59
  Top = 40
  Width = 1250
  Height = 695
  Caption = 'Day Activity'
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1234
    object cxCityLabel: TcxLabel
      Left = 10
      Top = 13
      Caption = 'cxCityLabel'
    end
  end
  inherited Panel2: TPanel
    Top = 616
    Width = 1234
    inherited cxButtonClose: TcxButton
      Left = 1081
    end
    object cxButton3: TcxButton
      Left = 552
      Top = 5
      Width = 41
      Height = 25
      Hint = 'Next Day'
      TabOrder = 1
      OnClick = cxButton3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object cxButton4: TcxButton
      Left = 504
      Top = 5
      Width = 41
      Height = 25
      Hint = 'Previous Day'
      TabOrder = 2
      OnClick = cxButton4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object cxButtonSave: TcxButton
      Left = 817
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 3
      OnClick = cxButtonSaveClick
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
    object cxButtonCancel: TcxButton
      Left = 905
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 4
      OnClick = cxButtonCancelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  inherited cxPageControl1: TcxPageControl
    Width = 1234
    Height = 575
    ActivePage = cxTabSheetAcc
    ClientRectBottom = 569
    ClientRectRight = 1228
    inherited cxTabSheetTickets: TcxTabSheet
      inherited Panel3: TPanel
        Width = 1225
        object DistanceLabel: TLabel
          Left = 14
          Top = 22
          Width = 82
          Height = 13
          Caption = 'DistanceLabel'
          Transparent = True
        end
        object cxDriveCkb: TcxCheckBox
          Left = 14
          Top = 2
          Caption = 'I would like to Drive'
          Properties.OnEditValueChanged = cxDriveCkbPropertiesEditValueChanged
          TabOrder = 0
          Transparent = True
          Width = 617
        end
      end
      inherited Panel4: TPanel
        Top = 502
        Width = 1225
        inherited cxDBLabelKeyId_Tickets: TcxDBLabel
          DataBinding.DataField = 'QuoTickets_id'
          DataBinding.DataSource = TicketsDs
        end
        object cxButton1: TcxButton
          Left = 2
          Top = 8
          Width = 103
          Height = 25
          Caption = 'Route Finder'
          TabOrder = 1
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Left = 122
          Top = 9
          Width = 159
          Height = 25
          Caption = 'Alternate Route Finder'
          TabOrder = 2
          OnClick = cxButton2Click
        end
      end
      inherited cxGrid1: TcxGrid
        Width = 1225
        Height = 263
        inherited cxGridDBBandedTableView1: TcxGridDBBandedTableView
          DataController.DataSource = TicketsDs
          DataController.KeyFieldNames = 'QuoTickets_id'
          OptionsView.BandHeaders = True
          Styles.ContentEven = PrestoForm.cxStyleBlue
          Styles.ContentOdd = PrestoForm.cxStyleGreen
          Bands = <
            item
              Width = 626
            end
            item
              Caption = 'Flight/Train'
            end
            item
              Caption = 'Car'
            end>
          object cxGridDBBandedTableView1QuoTickets_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoTickets_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Quotations_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Quotations_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Cities_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Cities_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1AgentAddressbook_id: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'AgentAddressbook_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'Addressbook_id'
            Properties.ListColumns = <
              item
                Width = 300
                FieldName = 'Organisation'
              end
              item
                Width = 100
                FieldName = 'City'
              end>
            Properties.ListSource = AgentDS
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Tickets_id: TcxGridDBBandedColumn
            Caption = 'Mode'
            DataBinding.FieldName = 'Tickets_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'tickets_id'
            Properties.ListColumns = <
              item
                FieldName = 'details'
              end>
            Properties.ListSource = ModesDs
            Properties.OnEditValueChanged = cxGridDBBandedTableView1Tickets_idPropertiesEditValueChanged
            Width = 49
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1NoOfTickets: TcxGridDBBandedColumn
            Caption = 'Pax'
            DataBinding.FieldName = 'NoOfTickets'
            Width = 48
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1TravelDate: TcxGridDBBandedColumn
            Caption = 'Travel Date'
            DataBinding.FieldName = 'TravelDate'
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1From_Cities_id: TcxGridDBBandedColumn
            Caption = 'From City'
            DataBinding.FieldName = 'From_Cities_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 300
            Properties.KeyFieldNames = 'Cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'City'
              end>
            Properties.ListSource = CitiesDs
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1To_Cities_id: TcxGridDBBandedColumn
            Caption = 'To City'
            DataBinding.FieldName = 'To_Cities_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 300
            Properties.KeyFieldNames = 'Cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'City'
              end>
            Properties.ListSource = CitiesDs
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1FlightNo: TcxGridDBBandedColumn
            Caption = 'Flight No'
            DataBinding.FieldName = 'FlightNo'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView1FlightNoPropertiesButtonClick
            Width = 60
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1From_TrainStationLookup: TcxGridDBBandedColumn
            Caption = 'From Station'
            DataBinding.FieldName = 'FromTrainStationLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Width = 89
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1To_TrainStationLookup: TcxGridDBBandedColumn
            Caption = 'To Station'
            DataBinding.FieldName = 'ToTrainStationLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Width = 72
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1ClassLookup: TcxGridDBBandedColumn
            Caption = 'Class'
            DataBinding.FieldName = 'ClassLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView1Class_idPropertiesButtonClick
            Width = 50
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1ETD: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ETD'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Width = 45
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1ETA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ETA'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Width = 37
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1TravelDay: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TravelDay'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Cost: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Cost'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Masters_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Masters_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1status: TcxGridDBBandedColumn
            DataBinding.FieldName = 'status'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1TrainNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TrainNo'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1LineNum: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LineNum'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1QuoCities_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoCities_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1DaysOfOperation: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DaysOfOperation'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Overnight: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Overnight'
            Options.Editing = False
            Width = 38
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Nights: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Nights'
            Visible = False
            Options.Editing = False
            Width = 47
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Hops: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Hops'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1ModePreference: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ModePreference'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1CarReleaseDate: TcxGridDBBandedColumn
            Caption = 'Car Release'
            DataBinding.FieldName = 'CarReleaseDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ShowTime = False
            Width = 80
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1CarReportDate: TcxGridDBBandedColumn
            Caption = 'Car Report'
            DataBinding.FieldName = 'CarReportDate'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ShowTime = False
            Width = 62
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1P2P: TcxGridDBBandedColumn
            DataBinding.FieldName = 'P2P'
            Visible = False
            Options.Editing = False
            Width = 33
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1SendMail: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SendMail'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1RequestedOn: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RequestedOn'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1ConfirmedOn: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ConfirmedOn'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Remarks: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Remarks'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1TicketString: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TicketString'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1RemarksAgent: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RemarksAgent'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1DriveTypes_id: TcxGridDBBandedColumn
            Caption = 'Drive Type'
            DataBinding.FieldName = 'DriveTypes_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'DriveTypes_id'
            Properties.ListColumns = <
              item
                FieldName = 'DriveType'
              end>
            Properties.ListSource = DriveTypesDs
            Position.BandIndex = 2
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1CarHireGroups_id: TcxGridDBBandedColumn
            Caption = 'Car Hire Group'
            DataBinding.FieldName = 'CarHireGroups_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CarHireGroups_id'
            Properties.ListColumns = <
              item
                FieldName = 'CarHireGroup'
              end>
            Properties.ListSource = CarHireGroupsDs
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1ReserveHotelOvernight: TcxGridDBBandedColumn
            Caption = 'Reserve Hotel O/N'
            DataBinding.FieldName = 'ReserveHotelOvernight'
            Width = 38
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1RemarksAgentCancel: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RemarksAgentCancel'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1Vehicles_id: TcxGridDBBandedColumn
            Caption = 'Vehicle'
            DataBinding.FieldName = 'Vehicles_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 300
            Properties.KeyFieldNames = 'Vehicles_id'
            Properties.ListColumns = <
              item
                FieldName = 'Vehicle'
              end>
            Properties.ListSource = VehicleDs
            Visible = False
            Position.BandIndex = 2
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1NightHalt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NightHalt'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1CarReportTime: TcxGridDBBandedColumn
            Caption = 'Time'
            DataBinding.FieldName = 'CarReportDate'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Width = 46
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1CarReleaseTime: TcxGridDBBandedColumn
            Caption = 'Time'
            DataBinding.FieldName = 'CarReleaseDate'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Width = 48
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView1GroupNo: TcxGridDBBandedColumn
            Caption = 'Group No'
            DataBinding.FieldName = 'GroupNo'
            Visible = False
            Options.Editing = False
            Options.Filtering = False
            Width = 46
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
        end
      end
      object Panel17: TPanel
        Left = 0
        Top = 304
        Width = 1225
        Height = 198
        Align = alBottom
        TabOrder = 3
        object GroupBox1: TGroupBox
          Left = 16
          Top = 8
          Width = 345
          Height = 145
          Caption = 'Flight / Train Details'
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 24
            Width = 95
            Height = 13
            Caption = 'Flight / Train No'
          end
          object Label2: TLabel
            Left = 8
            Top = 48
            Width = 31
            Height = 13
            Caption = 'Class'
          end
          object Label3: TLabel
            Left = 8
            Top = 72
            Width = 72
            Height = 13
            Caption = 'From Station'
          end
          object Label4: TLabel
            Left = 8
            Top = 96
            Width = 60
            Height = 13
            Caption = 'To Station'
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 136
            Top = 21
            DataBinding.DataField = 'FlightNo'
            DataBinding.DataSource = TicketsDs
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 177
          end
          object cxDBLookupComboBox1: TcxDBLookupComboBox
            Left = 136
            Top = 69
            DataBinding.DataField = 'From_TrainStations_id'
            DataBinding.DataSource = TicketsDs
            ParentFont = False
            Properties.KeyFieldNames = 'trainstations_id'
            Properties.ListColumns = <
              item
                FieldName = 'station'
              end>
            Properties.ListSource = TrainStationDs
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 177
          end
          object cxDBLookupComboBox2: TcxDBLookupComboBox
            Left = 136
            Top = 93
            DataBinding.DataField = 'To_TrainStations_id'
            DataBinding.DataSource = TicketsDs
            ParentFont = False
            Properties.KeyFieldNames = 'trainstations_id'
            Properties.ListColumns = <
              item
                FieldName = 'station'
              end>
            Properties.ListSource = TrainStationDs
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 177
          end
          object cxDBLookupComboBox3: TcxDBLookupComboBox
            Left = 136
            Top = 45
            DataBinding.DataField = 'Class_id'
            DataBinding.DataSource = TicketsDs
            ParentFont = False
            Properties.KeyFieldNames = 'Class_id'
            Properties.ListColumns = <
              item
                FieldName = 'class'
              end>
            Properties.ListSource = ClassDs
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 177
          end
        end
        object GroupBox2: TGroupBox
          Left = 392
          Top = 8
          Width = 409
          Height = 145
          Caption = 'Car Details'
          TabOrder = 1
          object Label5: TLabel
            Left = 8
            Top = 24
            Width = 66
            Height = 13
            Caption = 'Car Report '
          end
          object Label6: TLabel
            Left = 8
            Top = 48
            Width = 70
            Height = 13
            Caption = 'Car Release'
          end
          object Label7: TLabel
            Left = 8
            Top = 72
            Width = 63
            Height = 13
            Caption = 'Drive Type'
          end
          object Label8: TLabel
            Left = 8
            Top = 96
            Width = 85
            Height = 13
            Caption = 'Car Hire Group'
          end
          object Label9: TLabel
            Left = 7
            Top = 120
            Width = 43
            Height = 13
            Caption = 'Vehicle'
          end
          object SpeedButton1: TSpeedButton
            Left = 338
            Top = 19
            Width = 23
            Height = 22
            Hint = 'Clear Report Date'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
              33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
              993337777F777F3377F3393999707333993337F77737333337FF993399933333
              399377F3777FF333377F993339903333399377F33737FF33377F993333707333
              399377F333377FF3377F993333101933399377F333777FFF377F993333000993
              399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
              99333773FF777F777733339993707339933333773FF7FFF77333333999999999
              3333333777333777333333333999993333333333377777333333}
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 338
            Top = 43
            Width = 23
            Height = 22
            Hint = 'Clear Release Date'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
              33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
              993337777F777F3377F3393999707333993337F77737333337FF993399933333
              399377F3777FF333377F993339903333399377F33737FF33377F993333707333
              399377F333377FF3377F993333101933399377F333777FFF377F993333000993
              399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
              99333773FF777F777733339993707339933333773FF7FFF77333333999999999
              3333333777333777333333333999993333333333377777333333}
            NumGlyphs = 2
            OnClick = SpeedButton2Click
          end
          object SpeedButton3: TSpeedButton
            Left = 376
            Top = 19
            Width = 23
            Height = 22
            Hint = 'Report Date'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
              7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
              777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
              79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
              7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
              777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
              79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
              CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
            NumGlyphs = 2
            OnClick = SpeedButton3Click
          end
          object SpeedButton4: TSpeedButton
            Left = 376
            Top = 41
            Width = 23
            Height = 22
            Hint = 'Report Date'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
              7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
              777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
              79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
              7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
              777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
              79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
              CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
            NumGlyphs = 2
            OnClick = SpeedButton4Click
          end
          object cxDBLookupComboBox4: TcxDBLookupComboBox
            Left = 136
            Top = 69
            DataBinding.DataField = 'DriveTypes_id'
            DataBinding.DataSource = TicketsDs
            ParentFont = False
            Properties.KeyFieldNames = 'DriveTypes_id'
            Properties.ListColumns = <
              item
                FieldName = 'DriveType'
              end>
            Properties.ListSource = DriveTypesDs
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 193
          end
          object cxDBLookupComboBox5: TcxDBLookupComboBox
            Left = 136
            Top = 93
            DataBinding.DataField = 'CarHireGroups_id'
            DataBinding.DataSource = TicketsDs
            ParentFont = False
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'CarHireGroups_id'
            Properties.ListColumns = <
              item
                FieldName = 'CarHireGroup'
              end>
            Properties.ListSource = CarHireGroupsDs
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 193
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 136
            Top = 21
            DataBinding.DataField = 'CarReportDate'
            DataBinding.DataSource = TicketsDs
            ParentFont = False
            Properties.ShowTime = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 121
          end
          object cxDBTimeEdit1: TcxDBTimeEdit
            Left = 264
            Top = 21
            DataBinding.DataField = 'CarReportDate'
            DataBinding.DataSource = TicketsDs
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 65
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 136
            Top = 45
            DataBinding.DataField = 'CarReleaseDate'
            DataBinding.DataSource = TicketsDs
            ParentFont = False
            Properties.ShowTime = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 121
          end
          object cxDBTimeEdit2: TcxDBTimeEdit
            Left = 264
            Top = 45
            DataBinding.DataField = 'CarReleaseDate'
            DataBinding.DataSource = TicketsDs
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 65
          end
          object cxDBLookupComboBox6: TcxDBLookupComboBox
            Left = 135
            Top = 117
            DataBinding.DataField = 'Vehicles_id'
            DataBinding.DataSource = TicketsDs
            ParentFont = False
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'Vehicles_id'
            Properties.ListColumns = <
              item
                FieldName = 'Vehicle'
              end>
            Properties.ListSource = VehicleDs
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 193
          end
        end
        object cxBandCkb: TcxCheckBox
          Left = 838
          Top = 16
          Caption = 'Show Flight/Train/Car Details in Table'
          Properties.OnEditValueChanged = cxBandCkbPropertiesEditValueChanged
          State = cbsChecked
          TabOrder = 2
          Transparent = True
          Width = 251
        end
      end
    end
    inherited cxTabSheetAcc: TcxTabSheet
      inherited Panel5: TPanel
        Top = 502
        Width = 1225
      end
      inherited cxGrid2: TcxGrid
        Top = 32
        Width = 1225
        Height = 288
        inherited cxGridDBBandedTableView2: TcxGridDBBandedTableView
          DataController.DataSource = AccDs
          DataController.KeyFieldNames = 'QuoAccommodation_id'
          Styles.ContentEven = PrestoForm.cxStyleBlue
          Styles.ContentOdd = PrestoForm.cxStyleGreen
          object cxGridDBBandedTableView2QuoAccommodation_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoAccommodation_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2DateIn: TcxGridDBBandedColumn
            Caption = 'Date In'
            DataBinding.FieldName = 'DateIn'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ShowTime = False
            Width = 114
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2DateOut: TcxGridDBBandedColumn
            Caption = 'Date Out'
            DataBinding.FieldName = 'DateOut'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ShowTime = False
            Width = 118
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2HotelAddressbook_id: TcxGridDBBandedColumn
            Caption = 'Hotel'
            DataBinding.FieldName = 'HotelAddressbook_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Addressbook_id'
            Properties.ListColumns = <
              item
                FieldName = 'Organisation'
              end>
            Properties.ListSource = HotelDs
            Properties.OnEditValueChanged = cxGridDBBandedTableView2HotelAddressbook_idPropertiesEditValueChanged
            Width = 184
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2AC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AC'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2RoomTypes_id: TcxGridDBBandedColumn
            Caption = 'Room Type'
            DataBinding.FieldName = 'RoomTypeLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView2RoomTypes_idPropertiesButtonClick
            Width = 126
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2MealPlans_id: TcxGridDBBandedColumn
            Caption = 'Meal Plan'
            DataBinding.FieldName = 'MealPlans_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'mealplans_id'
            Properties.ListColumns = <
              item
                FieldName = 'plan'
              end>
            Properties.ListSource = MealPlanDs
            Width = 119
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Selected: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Selected'
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2TimeIn: TcxGridDBBandedColumn
            Caption = 'Time In'
            DataBinding.FieldName = 'DateIn'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2TimeOut: TcxGridDBBandedColumn
            Caption = 'Time Out'
            DataBinding.FieldName = 'DateOut'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Singles: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Singles'
            Visible = False
            Width = 58
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Doubles: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Doubles'
            Visible = False
            Width = 54
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Triples: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Triples'
            Visible = False
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2Twins: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Twins'
            Visible = False
            Width = 56
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView2ReserveHotelOvernight: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ReserveHotelOvernight'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1225
        Height = 32
        Align = alTop
        TabOrder = 2
      end
      object Panel13: TPanel
        Left = 0
        Top = 320
        Width = 1225
        Height = 182
        Align = alBottom
        TabOrder = 3
        object Panel14: TPanel
          Left = 1
          Top = 1
          Width = 448
          Height = 180
          Align = alLeft
          TabOrder = 0
          object cxDBMemo1: TcxDBMemo
            Left = 1
            Top = 1
            Align = alClient
            DataBinding.DataField = 'Description'
            DataBinding.DataSource = HotelDetailsDs
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 178
            Width = 446
          end
        end
        object Panel15: TPanel
          Left = 449
          Top = 1
          Width = 775
          Height = 180
          Align = alClient
          TabOrder = 1
          object cxGrid6: TcxGrid
            Left = 1
            Top = 1
            Width = 773
            Height = 178
            Align = alClient
            TabOrder = 0
            object cxGridDBBandedTableView6: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = HotelTariffDs
              DataController.KeyFieldNames = 'HotelTariffs_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.BandHeaders = False
              Styles.ContentEven = PrestoForm.cxStyleBlue
              Styles.ContentOdd = PrestoForm.cxStyleGreen
              Bands = <
                item
                end>
              object cxGridDBBandedTableView6HotelTariffs_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'HotelTariffs_id'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView6RoomType: TcxGridDBBandedColumn
                Caption = 'Room Type'
                DataBinding.FieldName = 'RoomType'
                Width = 201
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView6plan: TcxGridDBBandedColumn
                Caption = 'Meal Plan'
                DataBinding.FieldName = 'plan'
                Width = 80
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView6CostSingle: TcxGridDBBandedColumn
                Caption = 'Single'
                DataBinding.FieldName = 'CostSingle'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView6CostDouble: TcxGridDBBandedColumn
                Caption = 'Double'
                DataBinding.FieldName = 'CostDouble'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView6CostExtraBed: TcxGridDBBandedColumn
                Caption = 'Extra Bed'
                DataBinding.FieldName = 'CostExtraBed'
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView6Addressbook_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Addressbook_id'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView6DateIn: TcxGridDBBandedColumn
                DataBinding.FieldName = 'DateIn'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView6DefaultRoom: TcxGridDBBandedColumn
                Caption = 'Default'
                DataBinding.FieldName = 'DefaultRoom'
                Width = 57
                Position.BandIndex = 0
                Position.ColIndex = 1
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
    inherited cxTabSheetSs: TcxTabSheet
      inherited Panel6: TPanel
        Top = 502
        Width = 1225
        inherited cxDBLabelKeyId_Ss: TcxDBLabel
          DataBinding.DataField = 'QuoServices_id'
          DataBinding.DataSource = SsDs
        end
        object cxCopySightSeeingButton: TcxButton
          Left = 4
          Top = 8
          Width = 161
          Height = 25
          Caption = 'Add same Sight Seeing'
          TabOrder = 1
          OnClick = cxCopySightSeeingButtonClick
        end
      end
      inherited cxGrid3: TcxGrid
        Top = 32
        Width = 1225
        Height = 281
        Align = alTop
        inherited cxGridDBBandedTableView3: TcxGridDBBandedTableView
          DataController.DataSource = SsDs
          DataController.KeyFieldNames = 'QuoServices_id'
          Styles.ContentEven = PrestoForm.cxStyleBlue
          Styles.ContentOdd = PrestoForm.cxStyleGreen
          object cxGridDBBandedTableView3QuoServices_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoServices_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Quotations_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Quotations_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3AgentAddressbook_id: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'AgentAddressbook_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'Addressbook_id'
            Properties.ListColumns = <
              item
                Width = 300
                FieldName = 'Organisation'
              end
              item
                Width = 100
                FieldName = 'City'
              end>
            Properties.ListSource = AgentDS
            Width = 118
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Services_id: TcxGridDBBandedColumn
            Caption = 'Service'
            DataBinding.FieldName = 'Services_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Services_id'
            Properties.ListColumns = <
              item
                FieldName = 'Description'
              end>
            Properties.ListSource = ServicesDs
            Options.Editing = False
            Width = 179
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3StartTime: TcxGridDBBandedColumn
            Caption = 'Start Time'
            DataBinding.FieldName = 'StartTime'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Options.Filtering = False
            Width = 69
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3AC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AC'
            Visible = False
            Options.Filtering = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Guide: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Guide'
            Options.Filtering = False
            Width = 47
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Transport: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Transport'
            Options.Filtering = False
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Duration: TcxGridDBBandedColumn
            Caption = 'Duration'
            DataBinding.FieldName = 'Services_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Services_id'
            Properties.ListColumns = <
              item
                FieldName = 'Duration'
              end>
            Properties.ListSource = ServicesDs
            Options.Editing = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 64
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Vehicles_id: TcxGridDBBandedColumn
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
            Width = 127
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3ServiceDate: TcxGridDBBandedColumn
            Caption = 'Date'
            DataBinding.FieldName = 'ServiceDate'
            Width = 105
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3NoOfVehicles: TcxGridDBBandedColumn
            Caption = 'Vehicles'
            DataBinding.FieldName = 'NoOfVehicles'
            Options.Filtering = False
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3EntranceFees: TcxGridDBBandedColumn
            Caption = 'Entrance Fees'
            DataBinding.FieldName = 'EntranceFees'
            Options.Filtering = False
            Width = 88
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Selected: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Selected'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnEditValueChanged = cxGridDBBandedTableView3SelectedPropertiesEditValueChanged
            Width = 63
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Timings: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Timings'
            Options.Editing = False
            Options.Filtering = False
            Width = 117
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3DaysName: TcxGridDBBandedColumn
            Caption = 'Availability'
            DataBinding.FieldName = 'DaysName'
            Options.Filtering = False
            Width = 93
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView3Lock: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Lock'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnEditValueChanged = cxGridDBBandedTableView3LockPropertiesEditValueChanged
            Width = 45
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1225
        Height = 32
        Align = alTop
        TabOrder = 2
      end
      object Panel16: TPanel
        Left = 0
        Top = 313
        Width = 1225
        Height = 189
        Align = alClient
        TabOrder = 3
        object cxDBMemo2: TcxDBMemo
          Left = 1
          Top = 1
          Align = alLeft
          DataBinding.DataField = 'WriteUp'
          DataBinding.DataSource = ServiceDetailsDs
          ParentFont = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 187
          Width = 360
        end
        object cxGrid7: TcxGrid
          Left = 361
          Top = 1
          Width = 863
          Height = 187
          Align = alClient
          TabOrder = 1
          object cxGridDBBandedTableView7: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = SsCostDs
            DataController.KeyFieldNames = 'c_id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.BandHeaders = False
            Styles.ContentEven = PrestoForm.cxStyleBlue
            Styles.ContentOdd = PrestoForm.cxStyleGreen
            Bands = <
              item
              end>
            object cxGridDBBandedTableView7c_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'c_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7CostType: TcxGridDBBandedColumn
              Caption = 'Type'
              DataBinding.FieldName = 'CostType'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7CurrencyCode: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'CurrencyCode'
              Width = 117
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView7Cost: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cost'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxGridDBBandedTableView7
          end
        end
      end
    end
    inherited cxTabSheetTrsf: TcxTabSheet
      inherited Panel7: TPanel
        Top = 502
        Width = 1225
        inherited cxDBLabelKeyId_Transfers: TcxDBLabel
          DataBinding.DataField = 'QuoServices_id'
          DataBinding.DataSource = TransfersDs
        end
        object cxAlternateTransferButton: TcxButton
          Left = 7
          Top = 8
          Width = 129
          Height = 25
          Caption = 'Alternate Transfers'
          TabOrder = 1
          OnClick = cxAlternateTransferButtonClick
        end
        object cxButton5: TcxButton
          Left = 151
          Top = 8
          Width = 129
          Height = 25
          Caption = 'Add Transfer'
          TabOrder = 2
          OnClick = cxButton5Click
        end
      end
      inherited cxGrid4: TcxGrid
        Top = 32
        Width = 1225
        Height = 470
        inherited cxGridDBBandedTableView4: TcxGridDBBandedTableView
          DataController.DataSource = TransfersDs
          DataController.KeyFieldNames = 'QuoServices_id'
          OptionsData.Appending = False
          OptionsData.Inserting = False
          Styles.ContentEven = PrestoForm.cxStyleBlue
          Styles.ContentOdd = PrestoForm.cxStyleGreen
          object cxGridDBBandedTableView4QuoServices_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoServices_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Quotations_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Quotations_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4AgentAddressbook_id: TcxGridDBBandedColumn
            Caption = 'Agent'
            DataBinding.FieldName = 'AgentAddressbook_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 400
            Properties.KeyFieldNames = 'Addressbook_id'
            Properties.ListColumns = <
              item
                Width = 300
                FieldName = 'Organisation'
              end
              item
                Width = 100
                FieldName = 'City'
              end>
            Properties.ListSource = AgentDS
            Width = 175
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Services_id: TcxGridDBBandedColumn
            Caption = 'Service'
            DataBinding.FieldName = 'Services_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Services_id'
            Properties.ListColumns = <
              item
                FieldName = 'Description'
              end>
            Properties.ListSource = ServicesDs
            Width = 297
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4StartTime: TcxGridDBBandedColumn
            Caption = 'Start Time'
            DataBinding.FieldName = 'StartTime'
            PropertiesClassName = 'TcxTimeEditProperties'
            Properties.TimeFormat = tfHourMin
            Properties.UseCtrlIncrement = True
            Width = 96
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4AC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AC'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Place: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Place'
            Visible = False
            Width = 91
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4TransferTypes_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TransferTypes_id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Vehicles_id: TcxGridDBBandedColumn
            Caption = 'Vehicle'
            DataBinding.FieldName = 'Vehicles_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Vehicles_id'
            Properties.ListColumns = <
              item
                FieldName = 'Vehicle'
              end>
            Properties.ListSource = VehicleDs
            Width = 162
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4ServiceDate: TcxGridDBBandedColumn
            Caption = 'Date'
            DataBinding.FieldName = 'ServiceDate'
            Width = 107
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4NoOfVehicles: TcxGridDBBandedColumn
            Caption = 'Vehicles'
            DataBinding.FieldName = 'NoOfVehicles'
            Width = 85
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Selected: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Selected'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnEditValueChanged = cxGridDBBandedTableView4SelectedPropertiesEditValueChanged
            Width = 66
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView4Lock: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Lock'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnEditValueChanged = cxGridDBBandedTableView4LockPropertiesEditValueChanged
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1225
        Height = 32
        Align = alTop
        TabOrder = 2
      end
    end
    inherited cxTabSheetPkg: TcxTabSheet
      inherited Panel11: TPanel
        Top = 502
        Width = 1225
      end
      inherited cxGrid5: TcxGrid
        Top = 32
        Width = 1225
        Height = 470
        inherited cxGridDBBandedTableView5: TcxGridDBBandedTableView
          DataController.DataSource = PkgDs
          DataController.KeyFieldNames = 'QuoPackages_id'
          Styles.ContentEven = PrestoForm.cxStyleBlue
          Styles.ContentOdd = PrestoForm.cxStyleGreen
          object cxGridDBBandedTableView5QuoPackages_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoPackages_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5Quotations_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Quotations_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5Cities_id: TcxGridDBBandedColumn
            Caption = 'City'
            DataBinding.FieldName = 'Cities_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'City'
              end>
            Properties.ListSource = CitiesDs
            Width = 96
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5Packages_id: TcxGridDBBandedColumn
            Caption = 'Package'
            DataBinding.FieldName = 'PackagesLookup'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxGridDBBandedTableView5Packages_idPropertiesButtonClick
            Width = 336
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5DateIn: TcxGridDBBandedColumn
            Caption = 'Date In'
            DataBinding.FieldName = 'DateIn'
            Width = 130
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5DateOut: TcxGridDBBandedColumn
            Caption = 'Date Out'
            DataBinding.FieldName = 'DateOut'
            Options.Editing = False
            Width = 132
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedTableView5QuoCities_id: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QuoCities_id'
            Visible = False
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 1225
        Height = 32
        Align = alTop
        TabOrder = 2
      end
    end
  end
  inherited TicketsCds: TClientDataSet
    AfterInsert = TicketsCdsAfterInsert
    object TicketsCdsFromTrainStationLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'FromTrainStationLookup'
      LookupDataSet = TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'stationname'
      KeyFields = 'from_trainstations_id'
      Size = 100
      Lookup = True
    end
    object TicketsCdsToTrainStationLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ToTrainStationLookup'
      LookupDataSet = TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'stationname'
      KeyFields = 'to_trainstations_id'
      Size = 100
      Lookup = True
    end
    object TicketsCdsClassLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ClassLookup'
      LookupDataSet = ClassCds
      LookupKeyFields = 'Class_id'
      LookupResultField = 'class'
      KeyFields = 'Class_id'
      Size = 30
      Lookup = True
    end
    object TicketsCdsGroupNo: TIntegerField
      FieldName = 'GroupNo'
    end
  end
  inherited TicketsDs: TDataSource
    OnStateChange = TicketsDsStateChange
  end
  inherited AccCds: TClientDataSet
    AfterInsert = AccCdsAfterInsert
    inherited AccCdsHotelAddressbook_id: TIntegerField
      OnChange = AccCdsHotelAddressbook_idChange
    end
    object AccCdsRoomTypeLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'RoomTypeLookup'
      LookupDataSet = RoomTypeCds
      LookupKeyFields = 'roomtypes_id'
      LookupResultField = 'roomtype'
      KeyFields = 'RoomTypes_id'
      Lookup = True
    end
    object AccCdsSingles: TIntegerField
      FieldName = 'Singles'
    end
    object AccCdsDoubles: TIntegerField
      FieldName = 'Doubles'
    end
    object AccCdsTriples: TIntegerField
      FieldName = 'Triples'
    end
    object AccCdsTwins: TIntegerField
      FieldName = 'Twins'
    end
  end
  inherited AccDs: TDataSource
    OnStateChange = AccDsStateChange
  end
  inherited SsCds: TClientDataSet
    AfterScroll = SsCdsAfterScroll
    OnCalcFields = SsCdsCalcFields
    inherited SsCdsQuoServices_id: TIntegerField
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SsCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Size = 50
      Calculated = True
    end
  end
  inherited SsDs: TDataSource
    OnStateChange = SsDsStateChange
  end
  inherited TransfersCds: TClientDataSet
    OnCalcFields = TransfersCdsCalcFields
    object TransfersCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Size = 50
      Calculated = True
    end
  end
  inherited TransfersDs: TDataSource
    OnStateChange = TransfersDsStateChange
  end
  object ModesSds: TSQLDataSet [19]
    CommandText = 'select tickets_id, details from tickets order by details'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 163
  end
  object ModesDsp: TDataSetProvider [20]
    DataSet = ModesSds
    Left = 824
    Top = 163
  end
  object ModesCds: TClientDataSet [21]
    Aggregates = <>
    Params = <>
    ProviderName = 'ModesDsp'
    Left = 840
    Top = 163
    object IntegerField1: TIntegerField
      FieldName = 'tickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TicketsCdsdetails: TStringField
      FieldName = 'details'
      Size = 15
    end
  end
  object ModesDs: TDataSource [22]
    DataSet = ModesCds
    Left = 856
    Top = 163
  end
  object CitiesSds: TSQLDataSet [23]
    CommandText = 
      'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'WHERE Countries_id IN' +
      ' (200,8,53,121,39)'#13#10'ORDER BY c.City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 198
  end
  object CitiesDsp: TDataSetProvider [24]
    DataSet = CitiesSds
    Left = 822
    Top = 199
  end
  object CitiesCds: TClientDataSet [25]
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 840
    Top = 198
    object CitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CitiesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object CitiesDs: TDataSource [26]
    DataSet = CitiesCds
    Left = 852
    Top = 198
  end
  object ClassSds: TSQLDataSet [27]
    CommandText = 
      'SELECT Class_id, class, tickets_id FROM class '#13#10'WHERE Tickets_id' +
      ' = :Tickets_id'#13#10'ORDER BY class'#13#10
    DataSource = TicketsDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Tickets_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 240
  end
  object ClassDsp: TDataSetProvider [28]
    DataSet = ClassSds
    Left = 822
    Top = 241
  end
  object ClassCds: TClientDataSet [29]
    Aggregates = <>
    IndexFieldNames = 'tickets_id'
    MasterFields = 'Tickets_id'
    MasterSource = TicketsDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 840
    Top = 240
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
  object ClassDs: TDataSource [30]
    DataSet = ClassCds
    Left = 852
    Top = 240
  end
  object TrainStationSds: TSQLDataSet [31]
    CommandText = 'select * from trainstations'#13#10'order by station'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 272
  end
  object TrainStationDsp: TDataSetProvider [32]
    DataSet = TrainStationSds
    Left = 824
    Top = 272
  end
  object TrainStationCds: TClientDataSet [33]
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainStationDsp'
    Left = 840
    Top = 272
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
  object TrainStationDs: TDataSource [34]
    DataSet = TrainStationCds
    Left = 856
    Top = 272
  end
  object AgentSds: TSQLDataSet [35]
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 312
  end
  object AgentDsp: TDataSetProvider [36]
    DataSet = AgentSds
    Left = 824
    Top = 312
  end
  object AgentCds: TClientDataSet [37]
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 840
    Top = 312
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
  object AgentDS: TDataSource [38]
    DataSet = AgentCds
    Left = 856
    Top = 312
  end
  object DriveTypesSds: TSQLDataSet [39]
    CommandText = 'SELECT * FROM DriveTypes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 352
  end
  object DriveTypesDsp: TDataSetProvider [40]
    DataSet = DriveTypesSds
    Left = 822
    Top = 353
  end
  object DriveTypesCds: TClientDataSet [41]
    Aggregates = <>
    Params = <>
    ProviderName = 'DriveTypesDsp'
    Left = 840
    Top = 352
    object DriveTypesCdsDriveTypes_id: TIntegerField
      FieldName = 'DriveTypes_id'
    end
    object DriveTypesCdsDriveType: TStringField
      FieldName = 'DriveType'
      Size = 50
    end
  end
  object DriveTypesDs: TDataSource [42]
    DataSet = DriveTypesCds
    Left = 852
    Top = 352
  end
  object CarHireGroupsSds: TSQLDataSet [43]
    CommandText = 'SELECT * FROM CarHireGroups'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 392
  end
  object CarHireGroupsDsp: TDataSetProvider [44]
    DataSet = CarHireGroupsSds
    Left = 822
    Top = 393
  end
  object CarHireGroupsCds: TClientDataSet [45]
    Aggregates = <>
    Params = <>
    ProviderName = 'CarHireGroupsDsp'
    Left = 840
    Top = 392
    object CarHireGroupsCdsCarHireGroups_id: TIntegerField
      FieldName = 'CarHireGroups_id'
    end
    object CarHireGroupsCdsCarHireGroup: TStringField
      FieldName = 'CarHireGroup'
      Size = 200
    end
    object CarHireGroupsCdsDefaultAgents_id: TIntegerField
      FieldName = 'DefaultAgents_id'
    end
  end
  object CarHireGroupsDs: TDataSource [46]
    DataSet = CarHireGroupsCds
    Left = 852
    Top = 392
  end
  object VehicleSds: TSQLDataSet [47]
    CommandText = 
      'SELECT Vehicles_id, Vehicle FROM Vehicles '#13#10'WHERE Vehicles_id > ' +
      '0 ORDER BY Vehicle'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 808
    Top = 432
  end
  object VehicleDsp: TDataSetProvider [48]
    DataSet = VehicleSds
    Left = 822
    Top = 433
  end
  object VehicleCds: TClientDataSet [49]
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 840
    Top = 434
    object VehicleCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object VehicleCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
  end
  object VehicleDs: TDataSource [50]
    DataSet = VehicleCds
    Left = 852
    Top = 435
  end
  object RoomTypeSds: TSQLDataSet [51]
    CommandText = 'SELECT * FROM RoomTypes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 976
    Top = 200
  end
  object RoomTypeDsp: TDataSetProvider [52]
    DataSet = RoomTypeSds
    Left = 992
    Top = 200
  end
  object RoomTypeCds: TClientDataSet [53]
    Aggregates = <>
    Params = <>
    ProviderName = 'RoomTypeDsp'
    Left = 1008
    Top = 200
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
  object RoomTypeDs: TDataSource [54]
    DataSet = RoomTypeCds
    Left = 1024
    Top = 200
  end
  object MealPlanSds: TSQLDataSet [55]
    CommandText = 'SELECT * FROM MealPlans'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 976
    Top = 240
  end
  object MealPlanDsp: TDataSetProvider [56]
    DataSet = MealPlanSds
    Left = 992
    Top = 240
  end
  object MealPlanCds: TClientDataSet [57]
    Aggregates = <>
    Params = <>
    ProviderName = 'MealPlanDsp'
    Left = 1008
    Top = 240
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
  object MealPlanDs: TDataSource [58]
    DataSet = MealPlanCds
    Left = 1024
    Top = 240
  end
  object HotelSds: TSQLDataSet [59]
    CommandText = 
      'SELECT * FROM fn_Addressbook (2,'#39'H'#39')'#13#10'WHERE Cities_id = :Cities_' +
      'id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 976
    Top = 160
  end
  object HotelDsp: TDataSetProvider [60]
    DataSet = HotelSds
    Left = 992
    Top = 160
  end
  object HotelCds: TClientDataSet [61]
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 1008
    Top = 160
    object HotelCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
  end
  object HotelDs: TDataSource [62]
    DataSet = HotelCds
    Left = 1024
    Top = 160
  end
  object ServicesSds: TSQLDataSet [63]
    CommandText = 
      'SELECT Services_id, Service, Description, Active, Duration'#13#10' FRO' +
      'M Services'#13#10'ORDER BY Service'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 976
    Top = 280
  end
  object ServicesDsp: TDataSetProvider [64]
    DataSet = ServicesSds
    Left = 992
    Top = 280
  end
  object ServicesCds: TClientDataSet [65]
    Aggregates = <>
    Params = <>
    ProviderName = 'ServicesDSP'
    Left = 1008
    Top = 280
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
    object ServicesCdsDuration: TStringField
      FieldName = 'Duration'
      Size = 254
    end
  end
  object ServicesDs: TDataSource [66]
    DataSet = ServicesCds
    Left = 1024
    Top = 280
  end
  object PackagesSds: TSQLDataSet [67]
    CommandText = 
      'SELECT Packages_id, Package FROM Packages'#13#10'WHERE From_Cities_id ' +
      '= :Cities_id'#13#10'ORDER BY Package'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 976
    Top = 320
  end
  object PackagesDsp: TDataSetProvider [68]
    DataSet = PackagesSds
    Left = 992
    Top = 320
  end
  object PackagesCds: TClientDataSet [69]
    Aggregates = <>
    Params = <>
    ProviderName = 'PackagesDsp'
    Left = 1008
    Top = 320
    object PackagesCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object PackagesCdsPackage: TStringField
      FieldName = 'Package'
      Size = 50
    end
  end
  object PackagesDs: TDataSource [70]
    DataSet = PackagesCds
    Left = 1024
    Top = 320
  end
  inherited PkgCds: TClientDataSet
    AfterInsert = PkgCdsAfterInsert
    object PkgCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object PkgCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object PkgCdsPackagesLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PackagesLookup'
      LookupDataSet = PackagesCds
      LookupKeyFields = 'Packages_id'
      LookupResultField = 'Package'
      KeyFields = 'Packages_id'
      Lookup = True
    end
  end
  inherited PkgDs: TDataSource
    OnStateChange = PkgDsStateChange
  end
  object HotelDetailsSds: TSQLDataSet
    CommandText = 
      'SELECT Addressbook_id, Description FROM Hotels '#13#10'WHERE Addressbo' +
      'ok_id = :HotelAddressbook_id'
    DataSource = AccDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'HotelAddressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 976
    Top = 392
  end
  object HotelDetailsDsp: TDataSetProvider
    DataSet = HotelDetailsSds
    Left = 992
    Top = 392
  end
  object HotelDetailsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'HotelAddressbook_id'
    MasterSource = AccDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDetailsDsp'
    Left = 1008
    Top = 392
    object HotelDetailsCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelDetailsCdsDescription: TMemoField
      FieldName = 'Description'
      BlobType = ftMemo
    end
  end
  object HotelDetailsDs: TDataSource
    DataSet = HotelDetailsCds
    Left = 1024
    Top = 392
  end
  object HotelTariffSds: TSQLDataSet
    CommandText = 'EXEC p_GetRoomRates :HotelAddressbook_id, :DateIn'
    DataSource = AccDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'HotelAddressbook_id'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftTimeStamp
        Name = 'DateIn'
        ParamType = ptInput
        Size = 16
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 976
    Top = 424
  end
  object HotelTariffDsp: TDataSetProvider
    DataSet = HotelTariffSds
    Left = 992
    Top = 424
  end
  object HotelTariffCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id;DateIn'
    MasterFields = 'HotelAddressbook_id;DateIn'
    MasterSource = AccDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelTariffDsp'
    Left = 1008
    Top = 424
    object HotelTariffCdsHotelTariffs_id: TIntegerField
      FieldName = 'HotelTariffs_id'
    end
    object HotelTariffCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 50
    end
    object HotelTariffCdsplan: TStringField
      FieldName = 'plan'
      FixedChar = True
      Size = 3
    end
    object HotelTariffCdsCostSingle: TFMTBCDField
      FieldName = 'CostSingle'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object HotelTariffCdsCostDouble: TFMTBCDField
      FieldName = 'CostDouble'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object HotelTariffCdsCostExtraBed: TFMTBCDField
      FieldName = 'CostExtraBed'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object HotelTariffCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelTariffCdsDateIn: TSQLTimeStampField
      FieldName = 'DateIn'
    end
    object HotelTariffCdsDefaultRoom: TBooleanField
      FieldName = 'DefaultRoom'
    end
  end
  object HotelTariffDs: TDataSource
    DataSet = HotelTariffCds
    Left = 1024
    Top = 424
  end
  object ServiceDetailsSds: TSQLDataSet
    CommandText = 
      'SELECT Services_id, Description, WriteUp FROM Services'#13#10'WHERE Se' +
      'rvices_id = :Services_id'
    DataSource = SsDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Services_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 1104
    Top = 160
  end
  object ServiceDetailsDsp: TDataSetProvider
    DataSet = ServiceDetailsSds
    Left = 1120
    Top = 160
  end
  object ServiceDetailsCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Services_id'
    MasterFields = 'Services_id'
    MasterSource = SsDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ServiceDetailsDsp'
    Left = 1136
    Top = 160
    object ServiceDetailsCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object ServiceDetailsCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object ServiceDetailsCdsWriteUp: TMemoField
      FieldName = 'WriteUp'
      BlobType = ftMemo
    end
  end
  object ServiceDetailsDs: TDataSource
    DataSet = ServiceDetailsCds
    Left = 1152
    Top = 160
  end
  object SsCostSds: TSQLDataSet
    CommandText = 
      'EXEC [p_GetSightSeeingRates] :AgentAddressbook_id, :Services_id,' +
      ' :ServiceDate, 2, 0, 0, 0, 0'
    DataSource = SsDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'AgentAddressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Services_id'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ServiceDate'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 1112
    Top = 200
  end
  object SsCostDsp: TDataSetProvider
    DataSet = SsCostSds
    Left = 1128
    Top = 200
  end
  object SsCostCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SsCostDsp'
    Left = 1144
    Top = 200
    object SsCostCdsCostType: TStringField
      FieldName = 'CostType'
      Size = 10
    end
    object SsCostCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object SsCostCdsCost: TFMTBCDField
      FieldName = 'Cost'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object SsCostCdsc_id: TIntegerField
      FieldName = 'c_id'
    end
  end
  object SsCostDs: TDataSource
    DataSet = SsCostCds
    Left = 1160
    Top = 200
  end
end
