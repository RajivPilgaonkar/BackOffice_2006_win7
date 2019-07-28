object TravelModeForm: TTravelModeForm
  Left = 528
  Top = 32
  Width = 812
  Height = 575
  Caption = 'Travel Options'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 479
    Width = 804
    Height = 41
    Align = alBottom
    TabOrder = 0
    object cxCancelButton: TcxButton
      Left = 304
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
      OnClick = cxCancelButtonClick
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
    object cxOKButton: TcxButton
      Left = 432
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 1
      OnClick = cxOKButtonClick
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
  object cxDriveGB: TcxGroupBox
    Left = 8
    Top = 4
    Caption = 'Drive'
    TabOrder = 1
    Height = 77
    Width = 657
    object DistanceLabel: TLabel
      Left = 14
      Top = 44
      Width = 82
      Height = 13
      Caption = 'DistanceLabel'
      Transparent = True
    end
    object Label1: TLabel
      Left = 479
      Top = 43
      Width = 93
      Height = 13
      Caption = 'Drive Start Time'
      Transparent = True
      Visible = False
    end
    object Label2: TLabel
      Left = 477
      Top = 60
      Width = 137
      Height = 13
      Caption = '[Enter 2:00pm as 14:00]'
      Transparent = True
      Visible = False
    end
    object cxDriveCkb: TcxCheckBox
      Left = 14
      Top = 21
      Caption = 'I would like to Drive'
      TabOrder = 0
      Transparent = True
      OnClick = cxDriveCkbClick
      Width = 617
    end
    object cxDBTimeEdit3: TcxDBTimeEdit
      Left = 579
      Top = 40
      DataBinding.DataField = 'DriveStartTime'
      DataBinding.DataSource = QuoCitywiseForm.Detail1DS
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
    Left = 8
    Top = 88
    Caption = 'Tickets'
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 2
    Height = 117
    Width = 793
    object Label22: TLabel
      Left = 20
      Top = 38
      Width = 32
      Height = 13
      Caption = 'Mode'
      Transparent = True
    end
    object Label16: TLabel
      Left = 276
      Top = 38
      Width = 94
      Height = 13
      Caption = 'Travel Schedule'
      Transparent = True
    end
    object Label17: TLabel
      Left = 20
      Top = 62
      Width = 57
      Height = 13
      Caption = 'Departure'
      Transparent = True
    end
    object Label18: TLabel
      Left = 276
      Top = 62
      Width = 37
      Height = 13
      Caption = 'Arrival'
      Transparent = True
    end
    object Label23: TLabel
      Left = 568
      Top = 62
      Width = 31
      Height = 13
      Caption = 'Class'
      Transparent = True
    end
    object Label3: TLabel
      Left = 20
      Top = 86
      Width = 70
      Height = 13
      Caption = 'Car Release'
      Transparent = True
    end
    object Label4: TLabel
      Left = 276
      Top = 86
      Width = 78
      Height = 13
      Caption = 'Release Time'
      Transparent = True
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
      TabOrder = 1
      Width = 280
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
      TabOrder = 2
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
      TabOrder = 3
      Width = 158
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
      TabOrder = 4
      Width = 158
    end
    object cxDisplayScheduleButton: TcxButton
      Left = 662
      Top = 36
      Width = 114
      Height = 21
      Caption = 'Display Schedule'
      TabOrder = 5
      OnClick = cxDisplayScheduleButtonClick
    end
    object cxDBTimeEdit5: TcxDBTimeEdit
      Left = 380
      Top = 84
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
      Top = 84
      DataBinding.DataField = 'CarReleaseDate'
      DataBinding.DataSource = TicketDs
      Properties.ShowTime = False
      Style.Color = 16247513
      TabOrder = 7
      Width = 158
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 568
      Top = 88
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
  end
  object cxGroupBox1: TcxGroupBox
    Left = 11
    Top = 213
    Caption = 'Tickets'
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 3
    Height = 171
    Width = 793
    object cxGridMaster: TcxGrid
      Left = 3
      Top = 18
      Width = 787
      Height = 150
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
          Properties.ListSource = CitiesDs
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
          Properties.ListSource = CitiesDs
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
    Left = 14
    Top = 398
    Width = 94
    Height = 22
    Caption = 'Route Finder'
    TabOrder = 4
    OnClick = cxRouteFinderButtonClick
  end
  object cxButton1: TcxButton
    Left = 126
    Top = 400
    Width = 94
    Height = 20
    Caption = 'Alternate'
    TabOrder = 5
    OnClick = cxButton1Click
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
    Left = 712
    Top = 64
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 726
    Top = 65
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
    Left = 744
    Top = 64
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
    Left = 756
    Top = 64
  end
  object TicketSds: TSQLDataSet
    CommandText = 'QuoTickets'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 680
    Top = 16
  end
  object TicketDsp: TDataSetProvider
    DataSet = TicketSds
    Left = 696
    Top = 16
  end
  object TicketCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TicketDsp'
    AfterInsert = TicketCdsAfterInsert
    BeforePost = TicketCdsBeforePost
    AfterPost = TicketCdsAfterPost
    AfterDelete = TicketCdsAfterDelete
    Left = 712
    Top = 17
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
    object TicketCdsClassLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ClassLookup'
      LookupDataSet = ClassCds
      LookupKeyFields = 'Class_id'
      LookupResultField = 'class'
      KeyFields = 'Class_id'
      Size = 30
      Lookup = True
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
    object TicketCdsP2P: TIntegerField
      FieldName = 'P2P'
    end
    object TicketCdsReserveHotelOvernight: TBooleanField
      FieldName = 'ReserveHotelOvernight'
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
    Left = 736
    Top = 19
  end
  object CitiesSds: TSQLDataSet
    CommandText = 'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'ORDER BY c.City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 336
    Top = 262
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 350
    Top = 263
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 368
    Top = 262
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
    Top = 262
  end
end
