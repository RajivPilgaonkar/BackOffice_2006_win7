inherited TicketsForm: TTicketsForm
  Left = 327
  Top = 48
  Width = 1067
  Height = 556
  Caption = 'Tickets'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1051
    object Label2: TLabel
      Left = 4
      Top = 16
      Width = 53
      Height = 13
      Caption = 'From City'
      Transparent = True
    end
    object Label1: TLabel
      Left = 308
      Top = 16
      Width = 41
      Height = 13
      Caption = 'To City'
      Transparent = True
    end
    object Label3: TLabel
      Left = 648
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object cxFromCityLcmb: TcxLookupComboBox
      Left = 64
      Top = 14
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = FromCityDs
      Properties.OnEditValueChanged = cxFromCityLcmbPropertiesEditValueChanged
      TabOrder = 0
      Width = 232
    end
    object cxToCityLcmb: TcxLookupComboBox
      Left = 368
      Top = 14
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = ToCityDs
      Properties.OnEditValueChanged = cxToCityLcmbPropertiesEditValueChanged
      TabOrder = 1
      Width = 232
    end
    object cxWefDateEdit: TcxDateEdit
      Left = 678
      Top = 14
      Properties.OnEditValueChanged = cxWefDateEditPropertiesEditValueChanged
      TabOrder = 2
      Width = 121
    end
  end
  inherited Panel2: TPanel
    Top = 477
    Width = 1051
    object cxButtonCancel: TcxButton
      Left = 264
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 3
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
    object cxButtonOk: TcxButton
      Left = 352
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 4
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
  end
  inherited Panel3: TPanel
    Width = 1051
    Height = 436
    inherited cxPageControl1: TcxPageControl
      Width = 1049
      Height = 434
      ActivePage = cxTabSheet4
      ClientRectBottom = 428
      ClientRectRight = 1043
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 1040
          Height = 402
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'flightsectorfaresindia_id'
            object cxGrid1DBBandedTableView1flightsectorfaresindia_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'flightsectorfaresindia_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1flights_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'flights_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1from_cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'from_cities_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1to_cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'to_cities_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              SortIndex = 0
              SortOrder = soAscending
              Width = 76
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1wet: TcxGridDBBandedColumn
              Caption = 'Wet'
              DataBinding.FieldName = 'wet'
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1flightno: TcxGridDBBandedColumn
              Caption = 'Flight No'
              DataBinding.FieldName = 'flightno'
              Width = 84
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1departure: TcxGridDBBandedColumn
              Caption = 'Dept'
              DataBinding.FieldName = 'departure'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 66
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1arrival: TcxGridDBBandedColumn
              Caption = 'Arr'
              DataBinding.FieldName = 'arrival'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 57
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FlightAirline: TcxGridDBBandedColumn
              Caption = 'Operating Carrier'
              DataBinding.FieldName = 'FlightAirline'
              Width = 96
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FlightVia: TcxGridDBBandedColumn
              Caption = 'Via'
              DataBinding.FieldName = 'FlightVia'
              Width = 81
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FlightCompanies_id: TcxGridDBBandedColumn
              Caption = 'Carrier'
              DataBinding.FieldName = 'FlightCompanies_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'FlightCompanies_id'
              Properties.ListColumns = <
                item
                  FieldName = 'FlightCompany'
                end>
              Properties.ListSource = FlightCompaniesDS
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1days: TcxGridDBBandedColumn
              Caption = 'Frequency'
              DataBinding.FieldName = 'DaysName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGrid1DBBandedTableView1daysPropertiesButtonClick
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1overnight: TcxGridDBBandedColumn
              Caption = 'Overnight'
              DataBinding.FieldName = 'overnight'
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1domestic: TcxGridDBBandedColumn
              Caption = 'Domestic'
              DataBinding.FieldName = 'domestic'
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1duration: TcxGridDBBandedColumn
              Caption = 'Duration'
              DataBinding.FieldName = 'duration'
              Options.Editing = False
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1aircrafttypes_id: TcxGridDBBandedColumn
              Caption = 'Aircraft Type'
              DataBinding.FieldName = 'aircrafttypes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AircraftTypes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Aircraft'
                end>
              Properties.ListSource = AirCraftDS
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1stops: TcxGridDBBandedColumn
              Caption = 'Stops'
              DataBinding.FieldName = 'stops'
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1jcl: TcxGridDBBandedColumn
              DataBinding.FieldName = 'jcl'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ycl: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ycl'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1jcl_usd: TcxGridDBBandedColumn
              DataBinding.FieldName = 'jcl_usd'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ycl_usd: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ycl_usd'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Constant1_amt: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Constant1_amt'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Constant2_amt: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Constant2_amt'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ImportFlag: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ImportFlag'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
          end
        end
      end
      inherited cxTabSheet2: TcxTabSheet
        inherited cxGrid2: TcxGrid
          Width = 1040
          Height = 402
          inherited cxGridDBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'TmpTrains_id'
            object cxGridDBBandedTableView1TmpTrains_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TmpTrains_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Wef: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Wef'
              SortIndex = 0
              SortOrder = soAscending
              Width = 85
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Wet: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Wet'
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1DayOfOperation: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DayOfOperation'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Arrival: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Arrival'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 55
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Departure: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Departure'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              SortIndex = 1
              SortOrder = soAscending
              Width = 69
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1kms: TcxGridDBBandedColumn
              DataBinding.FieldName = 'kms'
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1TrainNo: TcxGridDBBandedColumn
              Caption = 'Train No'
              DataBinding.FieldName = 'TrainNo'
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Trains_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Trains_id'
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1T1C: TcxGridDBBandedColumn
              DataBinding.FieldName = 'T1C'
              Width = 62
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1T1C_AC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'T1C_AC'
              Width = 67
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1T2C: TcxGridDBBandedColumn
              DataBinding.FieldName = 'T2C'
              Width = 64
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1T2C_AC_2T: TcxGridDBBandedColumn
              DataBinding.FieldName = 'T2C_AC_2T'
              Width = 82
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1T2C_AC_3T: TcxGridDBBandedColumn
              DataBinding.FieldName = 'T2C_AC_3T'
              Width = 87
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1AC_CC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AC_CC'
              Width = 69
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1AC_CCE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AC_CCE'
              Width = 69
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Sleeper: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Sleeper'
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Category: TcxGridDBBandedColumn
              Caption = 'Category'
              DataBinding.FieldName = 'category'
              Width = 124
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1TrainCategories_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TrainCategories_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1TrainName: TcxGridDBBandedColumn
              Caption = 'Train'
              DataBinding.FieldName = 'TrainName'
              Width = 82
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1FromStation: TcxGridDBBandedColumn
              Caption = 'From Station'
              DataBinding.FieldName = 'FromStation'
              Width = 101
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ToStation: TcxGridDBBandedColumn
              Caption = 'To Station'
              DataBinding.FieldName = 'ToStation'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1FromStations_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FromStations_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ToStations_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ToStations_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Nights: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Nights'
              Position.BandIndex = 0
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Overnight: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Overnight'
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Days: TcxGridDBBandedColumn
              Caption = 'Frequency'
              DataBinding.FieldName = 'Days'
              Width = 115
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1SF: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SF'
              Position.BandIndex = 0
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Tf_Kms: TcxGridDBBandedColumn
              DataBinding.FieldName = 'tf_kms'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
          end
        end
      end
      inherited cxTabSheet3: TcxTabSheet
        inherited cxGrid3: TcxGrid
          Width = 1040
          Height = 402
          inherited cxGridDBBandedTableView2: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'bussectorfaresindia_id'
            object cxGridDBBandedTableView2bussectorfaresindia_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bussectorfaresindia_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2buses_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'buses_id'
              Visible = False
              Options.Filtering = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2wef: TcxGridDBBandedColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              SortIndex = 0
              SortOrder = soAscending
              Width = 107
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2wet: TcxGridDBBandedColumn
              Caption = 'Wet'
              DataBinding.FieldName = 'wet'
              Width = 111
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2days: TcxGridDBBandedColumn
              Caption = 'Frequency'
              DataBinding.FieldName = 'DaysName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView2daysPropertiesButtonClick
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2busno: TcxGridDBBandedColumn
              Caption = 'Bus No'
              DataBinding.FieldName = 'busno'
              Width = 107
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2stops: TcxGridDBBandedColumn
              DataBinding.FieldName = 'stops'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2domestic: TcxGridDBBandedColumn
              Caption = 'Domestic'
              DataBinding.FieldName = 'domestic'
              Width = 71
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2overnight: TcxGridDBBandedColumn
              Caption = 'Overnight'
              DataBinding.FieldName = 'overnight'
              Width = 68
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2from_cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'from_cities_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2to_cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'to_cities_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2departure: TcxGridDBBandedColumn
              Caption = 'Dept'
              DataBinding.FieldName = 'departure'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 86
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2arrival: TcxGridDBBandedColumn
              Caption = 'Arr'
              DataBinding.FieldName = 'arrival'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 75
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2duration: TcxGridDBBandedColumn
              Caption = 'Duration'
              DataBinding.FieldName = 'duration'
              Options.Editing = False
              Width = 64
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2costnonac: TcxGridDBBandedColumn
              DataBinding.FieldName = 'costnonac'
              Visible = False
              Width = 71
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2costac: TcxGridDBBandedColumn
              DataBinding.FieldName = 'costac'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2currencies_id: TcxGridDBBandedColumn
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
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2cost: TcxGridDBBandedColumn
              Caption = 'Cost'
              DataBinding.FieldName = 'cost'
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView2class_id: TcxGridDBBandedColumn
              Caption = 'Class'
              DataBinding.FieldName = 'class_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'Class_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Class'
                end>
              Properties.ListSource = ClassDS
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
          end
        end
      end
      inherited cxTabSheet4: TcxTabSheet
        inherited cxGrid4: TcxGrid
          Width = 1040
          Height = 402
          inherited cxGridDBBandedTableView3: TcxGridDBBandedTableView
            object cxGridDBBandedTableView3ferries_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ferries_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3wef: TcxGridDBBandedColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              SortIndex = 0
              SortOrder = soAscending
              Width = 98
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3wet: TcxGridDBBandedColumn
              Caption = 'Wet'
              DataBinding.FieldName = 'wet'
              Width = 101
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3days: TcxGridDBBandedColumn
              Caption = 'Frequency'
              DataBinding.FieldName = 'DaysName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView3daysPropertiesButtonClick
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3ferryno: TcxGridDBBandedColumn
              Caption = 'Ferry No'
              DataBinding.FieldName = 'ferryno'
              Width = 89
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3domestic: TcxGridDBBandedColumn
              Caption = 'Domestic'
              DataBinding.FieldName = 'domestic'
              Width = 89
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3from_cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'from_cities_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3to_cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'to_cities_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3departure: TcxGridDBBandedColumn
              Caption = 'Dept'
              DataBinding.FieldName = 'departure'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 98
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3nights: TcxGridDBBandedColumn
              Caption = 'Nights'
              DataBinding.FieldName = 'nights'
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3class_id: TcxGridDBBandedColumn
              Caption = 'Class'
              DataBinding.FieldName = 'class_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'Class_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Class'
                end>
              Properties.ListSource = ClassDS
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3cost: TcxGridDBBandedColumn
              Caption = 'Cost'
              DataBinding.FieldName = 'cost'
              Position.BandIndex = 0
              Position.ColIndex = 10
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
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3arrival: TcxGridDBBandedColumn
              Caption = 'Arr'
              DataBinding.FieldName = 'arrival'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Width = 90
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView3duration: TcxGridDBBandedColumn
              Caption = 'Duration'
              DataBinding.FieldName = 'duration'
              Options.Editing = False
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited FlightsSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM FlightSectorFaresIndia'#13#10'WHERE wef >= :wef'#13#10'AND Fro' +
      'm_Cities_id = :From_Cities_id'#13#10'AND To_Cities_id = :To_Cities_id'#13 +
      #10'ORDER BY CONVERT(VARCHAR(5),departure, 108)'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'From_Cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'To_Cities_id'
        ParamType = ptInput
      end>
  end
  inherited FlightsCds: TClientDataSet
    AfterInsert = FlightsCdsAfterInsert
    OnCalcFields = FlightsCdsCalcFields
    object FlightsCdsflightsectorfaresindia_id: TIntegerField
      FieldName = 'flightsectorfaresindia_id'
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
    end
    object FlightsCdswet: TSQLTimeStampField
      FieldName = 'wet'
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
      DisplayFormat = 'HH:mm'
      EditMask = '!90:00;1;_'
    end
    object FlightsCdsarrival: TSQLTimeStampField
      FieldName = 'arrival'
      DisplayFormat = 'HH:mm'
      EditMask = '!90:00;1;_'
    end
    object FlightsCdsduration: TStringField
      FieldName = 'duration'
      Size = 254
    end
    object FlightsCdsjcl: TFMTBCDField
      FieldName = 'jcl'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 4
    end
    object FlightsCdsycl: TFMTBCDField
      FieldName = 'ycl'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 4
    end
    object FlightsCdsjcl_usd: TFMTBCDField
      FieldName = 'jcl_usd'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 4
    end
    object FlightsCdsycl_usd: TFMTBCDField
      FieldName = 'ycl_usd'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 4
    end
    object FlightsCdsConstant1_amt: TFMTBCDField
      FieldName = 'Constant1_amt'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object FlightsCdsConstant2_amt: TFMTBCDField
      FieldName = 'Constant2_amt'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 4
    end
    object FlightsCdsImportFlag: TIntegerField
      FieldName = 'ImportFlag'
    end
    object FlightsCdsFlightAirline: TStringField
      FieldName = 'FlightAirline'
      Size = 100
    end
    object FlightsCdsFlightVia: TStringField
      FieldName = 'FlightVia'
      Size = 100
    end
    object FlightsCdsFlightCompanies_id: TIntegerField
      FieldName = 'FlightCompanies_id'
    end
    object FlightsCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Calculated = True
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 153
    Top = 399
    object rainCostsinExcel1: TMenuItem
      Caption = 'Train Costs in Excel'
      OnClick = rainCostsinExcel1Click
    end
  end
  inherited TrainsSds: TSQLDataSet
    CommandText = 'EXEC p_TmpTrains :FromCities_id, :ToCities_id, :Date,  1'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'FromCities_id'
        ParamType = ptInput
        Value = 103
      end
      item
        DataType = ftInteger
        Name = 'ToCities_id'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftDate
        Name = 'Date'
        ParamType = ptInput
        Value = 40909d
      end>
  end
  inherited TrainsCds: TClientDataSet
    object TrainsCdsTmpTrains_id: TIntegerField
      FieldName = 'TmpTrains_id'
    end
    object TrainsCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object TrainsCdsWet: TSQLTimeStampField
      FieldName = 'Wet'
    end
    object TrainsCdsDayOfOperation: TSmallintField
      FieldName = 'DayOfOperation'
    end
    object TrainsCdsArrival: TSQLTimeStampField
      FieldName = 'Arrival'
    end
    object TrainsCdsDeparture: TSQLTimeStampField
      FieldName = 'Departure'
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
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 2
    end
    object TrainsCdsT1C_AC: TFMTBCDField
      FieldName = 'T1C_AC'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 2
    end
    object TrainsCdsT2C: TFMTBCDField
      FieldName = 'T2C'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 2
    end
    object TrainsCdsT2C_AC_2T: TFMTBCDField
      FieldName = 'T2C_AC_2T'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 2
    end
    object TrainsCdsT2C_AC_3T: TFMTBCDField
      FieldName = 'T2C_AC_3T'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 2
    end
    object TrainsCdsAC_CC: TFMTBCDField
      FieldName = 'AC_CC'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 2
    end
    object TrainsCdsAC_CCE: TFMTBCDField
      FieldName = 'AC_CCE'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 2
    end
    object TrainsCdsSleeper: TFMTBCDField
      FieldName = 'Sleeper'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 2
    end
    object TrainsCdsTrainCategories_id: TIntegerField
      FieldName = 'TrainCategories_id'
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
    object TrainsCdsSF: TBooleanField
      FieldName = 'SF'
    end
    object TrainsCdstf_kms: TIntegerField
      FieldName = 'tf_kms'
    end
    object TrainsCdscategory: TStringField
      FieldName = 'category'
      Size = 50
    end
  end
  inherited BusesSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM BusSectorFaresIndia'#13#10'WHERE wef >= :wef'#13#10'AND From_C' +
      'ities_id = :From_Cities_id'#13#10'AND To_Cities_id = :To_Cities_id'#13#10'OR' +
      'DER BY CONVERT(VARCHAR(5),departure, 108)'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'From_Cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'To_Cities_id'
        ParamType = ptInput
      end>
  end
  inherited BusesCds: TClientDataSet
    AfterInsert = BusesCdsAfterInsert
    OnCalcFields = BusesCdsCalcFields
    object BusesCdsbussectorfaresindia_id: TIntegerField
      FieldName = 'bussectorfaresindia_id'
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
    end
    object BusesCdswet: TSQLTimeStampField
      FieldName = 'wet'
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
      DisplayFormat = 'HH:mm'
      EditMask = '!90:00;1;_'
    end
    object BusesCdsarrival: TSQLTimeStampField
      FieldName = 'arrival'
      DisplayFormat = 'HH:mm'
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
      Size = 4
    end
    object BusesCdscostac: TFMTBCDField
      FieldName = 'costac'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 4
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
  inherited FerriesSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM Ferries'#13#10'WHERE wef >= :wef'#13#10'AND From_Cities_id = :' +
      'From_Cities_id'#13#10'AND To_Cities_id = :To_Cities_id'#13#10'ORDER BY CONVE' +
      'RT(VARCHAR(5),departure, 108)'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'wef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'From_Cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'To_Cities_id'
        ParamType = ptInput
      end>
  end
  inherited FerriesCds: TClientDataSet
    AfterInsert = FerriesCdsAfterInsert
    OnCalcFields = FerriesCdsCalcFields
    object FerriesCdsferries_id: TIntegerField
      FieldName = 'ferries_id'
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
    end
    object FerriesCdswet: TSQLTimeStampField
      FieldName = 'wet'
    end
    object FerriesCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object FerriesCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object FerriesCdsdeparture: TSQLTimeStampField
      FieldName = 'departure'
      DisplayFormat = 'HH:mm'
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
      DisplayFormat = 'HH:mm'
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
  object FromCitySds: TSQLDataSet
    CommandText = 'SELECT Cities_id, City'#13#10'FROM Cities'#13#10'ORDER BY City'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 176
    Top = 24
  end
  object FromCityDsp: TDataSetProvider
    DataSet = FromCitySds
    UpdateMode = upWhereKeyOnly
    Left = 198
    Top = 24
  end
  object FromCityCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FromCityDsp'
    Left = 215
    Top = 24
    object FromCityCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object FromCityCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object FromCityDs: TDataSource
    DataSet = FromCityCds
    Left = 229
    Top = 24
  end
  object ToCitySds: TSQLDataSet
    CommandText = 'SELECT Cities_id, City'#13#10'FROM Cities'#13#10'ORDER BY City'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 456
    Top = 24
  end
  object ToCityDsp: TDataSetProvider
    DataSet = ToCitySds
    UpdateMode = upWhereKeyOnly
    Left = 478
    Top = 24
  end
  object ToCityCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ToCityDsp'
    Left = 495
    Top = 24
    object IntegerField1: TIntegerField
      FieldName = 'Cities_id'
    end
    object StringField1: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object ToCityDs: TDataSource
    DataSet = ToCityCds
    Left = 509
    Top = 24
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
    Left = 514
    Top = 127
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 540
    Top = 125
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 556
    Top = 125
    object ClassCdsClass: TStringField
      FieldName = 'Class'
      Size = 30
    end
    object ClassCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
  end
  object ClassDS: TDataSource
    DataSet = ClassCds
    Left = 580
    Top = 125
  end
  object FlightCompaniesSds: TSQLDataSet
    CommandText = 'SELECT * FROM FlightCompanies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 514
    Top = 180
  end
  object FlightCompaniesDsp: TDataSetProvider
    DataSet = FlightCompaniesSds
    Left = 532
    Top = 181
  end
  object FlightCompaniesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FlightCompaniesDsp'
    Left = 548
    Top = 181
    object FlightCompaniesCdsFlightCompanies_id: TIntegerField
      FieldName = 'FlightCompanies_id'
    end
    object FlightCompaniesCdsFlightCompany: TStringField
      FieldName = 'FlightCompany'
      Size = 100
    end
  end
  object FlightCompaniesDS: TDataSource
    DataSet = FlightCompaniesCds
    Left = 564
    Top = 181
  end
  object AirCraftSds: TSQLDataSet
    CommandText = 
      'SELECT AircraftTypes_id, Aircraft FROM AircraftTypes'#13#10'ORDER BY A' +
      'ircraft'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 514
    Top = 220
  end
  object AirCraftDsp: TDataSetProvider
    DataSet = AirCraftSds
    Left = 532
    Top = 221
  end
  object AirCraftCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AirCraftDsp'
    Left = 548
    Top = 221
    object AirCraftCdsAircraftTypes_id: TIntegerField
      FieldName = 'AircraftTypes_id'
    end
    object AirCraftCdsAircraft: TStringField
      FieldName = 'Aircraft'
      Size = 10
    end
  end
  object AirCraftDS: TDataSource
    DataSet = AirCraftCds
    Left = 564
    Top = 221
  end
  object CurrencySds: TSQLDataSet
    CommandText = 'select Currencies_id, CurrencyCode, Currency from currencies'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 712
    Top = 130
  end
  object CurrencyDsp: TDataSetProvider
    DataSet = CurrencySds
    Left = 736
    Top = 130
  end
  object CurrencyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrencyDsp'
    Left = 752
    Top = 130
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
    Left = 768
    Top = 130
  end
end
