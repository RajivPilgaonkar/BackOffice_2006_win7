inherited MasterTickets2Form: TMasterTickets2Form
  Left = 14
  Top = 47
  Height = 600
  Caption = 'Master Tickets'
  FormStyle = fsNormal
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 341
    Height = 4
  end
  inherited Panel2: TPanel
    Top = 521
    inherited cxButtonUtilities: TcxButton
      Visible = True
      DropDownMenu = PopupMenu1
    end
    inherited cxDBLabelKeyId_Detail: TcxDBLabel
      DataBinding.DataField = 'masterticketstours_id'
    end
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      DataBinding.DataField = 'mastertickets_id'
    end
    inherited cxDBNavigator1: TcxDBNavigator
      LookAndFeel.SkinName = ''
    end
  end
  inherited Panel3: TPanel
    Height = 300
    inherited cxPageControl1: TcxPageControl
      Height = 298
      ClientRectBottom = 292
      inherited cxTabSheet1: TcxTabSheet
        object Label3: TLabel
          Left = 5
          Top = 21
          Width = 23
          Height = 13
          Caption = 'Day'
          Transparent = True
        end
        object Label9: TLabel
          Left = 5
          Top = 44
          Width = 32
          Height = 13
          Caption = 'Mode'
          Transparent = True
        end
        object Label5: TLabel
          Left = 5
          Top = 67
          Width = 57
          Height = 13
          Caption = 'Departure'
          Transparent = True
        end
        object Label7: TLabel
          Left = 5
          Top = 113
          Width = 78
          Height = 27
          AutoSize = False
          Caption = 'DeadLine for No. of Pax'
          Transparent = True
          WordWrap = True
        end
        object Label2: TLabel
          Left = 5
          Top = 147
          Width = 50
          Height = 13
          Caption = 'Remarks'
          Transparent = True
        end
        object Label8: TLabel
          Left = 276
          Top = 21
          Width = 53
          Height = 13
          Caption = 'From City'
          Transparent = True
        end
        object Label4: TLabel
          Left = 276
          Top = 44
          Width = 94
          Height = 13
          Caption = 'Travel Schedule'
          Transparent = True
        end
        object Label6: TLabel
          Left = 276
          Top = 67
          Width = 37
          Height = 13
          Caption = 'Arrival'
          Transparent = True
        end
        object Label13: TLabel
          Left = 5
          Top = 90
          Width = 34
          Height = 13
          Caption = 'Agent'
          Transparent = True
        end
        object Label14: TLabel
          Left = 276
          Top = 113
          Width = 96
          Height = 27
          AutoSize = False
          Caption = 'DeadLine for Names of Pax'
          Transparent = True
          WordWrap = True
        end
        object Label12: TLabel
          Left = 579
          Top = 21
          Width = 41
          Height = 13
          Caption = 'To City'
          Transparent = True
        end
        object Label10: TLabel
          Left = 579
          Top = 67
          Width = 31
          Height = 13
          Caption = 'Class'
          Transparent = True
        end
        object Label1: TLabel
          Left = 5
          Top = 244
          Width = 33
          Height = 13
          Caption = 'Tours'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 87
          Top = 19
          DataBinding.DataField = 'day'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = False
          Style.Color = clCream
          TabOrder = 0
          Width = 178
        end
        object cxModeLCMB: TcxDBLookupComboBox
          Left = 87
          Top = 42
          DataBinding.DataField = 'tickets_id'
          DataBinding.DataSource = MasterDs
          Properties.KeyFieldNames = 'tickets_id'
          Properties.ListColumns = <
            item
              FieldName = 'details'
            end>
          Properties.ListSource = TicketsDs
          Properties.ReadOnly = False
          Properties.OnEditValueChanged = cxModeLCMBPropertiesEditValueChanged
          Style.Color = clCream
          TabOrder = 3
          Width = 178
        end
        object cxDBTimeEdit1: TcxDBTimeEdit
          Left = 87
          Top = 65
          DataBinding.DataField = 'Departure'
          DataBinding.DataSource = MasterDs
          Properties.ImmediatePost = True
          Properties.ReadOnly = False
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Style.Color = clCream
          TabOrder = 6
          Width = 178
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 87
          Top = 111
          DataBinding.DataField = 'advicenumpaxdays'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = False
          Style.Color = clCream
          TabOrder = 10
          Width = 178
        end
        object cxDBMemo1: TcxDBMemo
          Left = 87
          Top = 145
          DataBinding.DataField = 'remarks'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = False
          Style.Color = clCream
          TabOrder = 12
          Height = 63
          Width = 698
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 380
          Top = 19
          DataBinding.DataField = 'from_cities_id'
          DataBinding.DataSource = MasterDs
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
          Properties.ListSource = CitiesDs
          Properties.ReadOnly = False
          Style.Color = clCream
          TabOrder = 1
          Width = 178
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 380
          Top = 42
          DataBinding.DataField = 'flightno'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = False
          Style.Color = clCream
          TabOrder = 4
          Width = 280
        end
        object cxDBTimeEdit2: TcxDBTimeEdit
          Left = 380
          Top = 65
          DataBinding.DataField = 'Arrival'
          DataBinding.DataSource = MasterDs
          Properties.ImmediatePost = True
          Properties.ReadOnly = False
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Style.Color = clCream
          TabOrder = 7
          Width = 178
        end
        object cxDBLookupComboBox6: TcxDBLookupComboBox
          Left = 87
          Top = 88
          DataBinding.DataField = 'addressbook_id'
          DataBinding.DataSource = MasterDs
          Properties.DropDownWidth = 500
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              FieldName = 'OrgCity'
            end>
          Properties.ListSource = AgentDs
          Style.Color = clCream
          TabOrder = 9
          Width = 471
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 380
          Top = 111
          DataBinding.DataField = 'advicenamepaxdays'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = False
          Style.Color = clCream
          TabOrder = 11
          Width = 178
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 631
          Top = 19
          DataBinding.DataField = 'to_cities_id'
          DataBinding.DataSource = MasterDs
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
          Properties.ListSource = CitiesDs
          Properties.ReadOnly = False
          Style.Color = clCream
          TabOrder = 2
          Width = 158
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 631
          Top = 65
          DataBinding.DataField = 'classid'
          DataBinding.DataSource = MasterDs
          Properties.KeyFieldNames = 'Class_id'
          Properties.ListColumns = <
            item
              FieldName = 'class'
            end>
          Properties.ListSource = ClassDs
          Properties.ReadOnly = False
          Style.Color = clCream
          TabOrder = 8
          Width = 158
        end
        object cxButton2: TcxButton
          Left = 662
          Top = 40
          Width = 127
          Height = 21
          Caption = 'Display Schedule'
          TabOrder = 5
          OnClick = cxButton2Click
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 88
          Top = 240
          DataBinding.DataField = 'tours'
          DataBinding.DataSource = MasterDs
          Properties.ReadOnly = True
          Style.Color = 16247513
          TabOrder = 13
          Width = 308
        end
        object cxButton3: TcxButton
          Left = 402
          Top = 239
          Width = 75
          Height = 20
          Caption = 'Update'
          TabOrder = 14
          OnClick = cxButton3Click
        end
        object cxButton1: TcxButton
          Left = 562
          Top = 87
          Width = 85
          Height = 20
          Caption = 'Others in City'
          TabOrder = 15
          OnClick = cxButton1Click
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 345
    Height = 176
    inherited cxPageControl2: TcxPageControl
      Height = 174
      ClientRectBottom = 168
      inherited cxTabSheet2: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Height = 142
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'masterticketstours_id'
            object cxGrid1DBBandedTableView1masterticketstours_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'masterticketstours_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1mastertickets_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'mastertickets_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1tourcodes_id: TcxGridDBBandedColumn
              Caption = 'Tour Code'
              DataBinding.FieldName = 'tourcodes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'TourCodes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'TourCode'
                end>
              Properties.ListSource = TourCodeDs
              Width = 152
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM MasterTickets'#13#10'WHERE Masters_id = :Masters_id'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsmastertickets_id: TIntegerField
      FieldName = 'mastertickets_id'
    end
    object MasterCdsday: TIntegerField
      FieldName = 'day'
    end
    object MasterCdsflightno: TStringField
      FieldName = 'flightno'
      Size = 40
    end
    object MasterCdstrainno: TStringField
      FieldName = 'trainno'
      Size = 10
    end
    object MasterCdstours: TStringField
      FieldName = 'tours'
      Size = 50
    end
    object MasterCdsdeparture: TSQLTimeStampField
      FieldName = 'departure'
    end
    object MasterCdsarrival: TSQLTimeStampField
      FieldName = 'arrival'
    end
    object MasterCdsadvicenumpaxdays: TIntegerField
      FieldName = 'advicenumpaxdays'
    end
    object MasterCdsadvicenamepaxdays: TIntegerField
      FieldName = 'advicenamepaxdays'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsclassid: TIntegerField
      FieldName = 'classid'
    end
    object MasterCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 250
    end
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object MasterCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object MasterCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object MasterCdsFromStations_id: TIntegerField
      FieldName = 'FromStations_id'
    end
    object MasterCdsToStations_id: TIntegerField
      FieldName = 'ToStations_id'
    end
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM MasterTicketsTours'#13#10'WHERE MasterTickets_id = :Mast' +
      'erTickets_id'
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'mastertickets_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'mastertickets_id'
    MasterFields = 'mastertickets_id'
    MasterSource = MasterDs
    PacketRecords = 0
    object DetailCdsmasterticketstours_id: TIntegerField
      FieldName = 'masterticketstours_id'
    end
    object DetailCdsmastertickets_id: TIntegerField
      FieldName = 'mastertickets_id'
    end
    object DetailCdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT c.Cities_id, c.City, s.State'#13#10'FROM Cities c '#13#10'LEFT JOIN S' +
      'tates s ON c.States_id = s.States_id'#13#10'WHERE NightHalt = 1'#13#10'ORDER' +
      ' BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 768
    Top = 40
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 784
    Top = 40
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 800
    Top = 40
    object IntegerField1: TIntegerField
      FieldName = 'cities_id'
    end
    object StringField1: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 824
    Top = 40
  end
  object TicketsSds: TSQLDataSet
    CommandText = 'select tickets_id, details from tickets order by details'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 768
    Top = 75
  end
  object TicketsDsp: TDataSetProvider
    DataSet = TicketsSds
    Left = 784
    Top = 75
  end
  object TicketsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TicketsDSP'
    Left = 800
    Top = 75
    object TicketsCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TicketsCdsdetails: TStringField
      FieldName = 'details'
      Size = 15
    end
  end
  object TicketsDs: TDataSource
    DataSet = TicketsCds
    Left = 816
    Top = 75
  end
  object ClassSds: TSQLDataSet
    CommandText = 
      'SELECT Class_id, class, code, tickets_id '#13#10'FROM class'#13#10'WHERE Tic' +
      'kets_id = :Tickets_id '#13#10'ORDER BY class'#13#10
    DataSource = TicketsDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'tickets_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 776
    Top = 152
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'tickets_id'
    MasterFields = 'tickets_id'
    MasterSource = TicketsDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 816
    Top = 152
    object ClassCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object ClassCdsclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object ClassCdscode: TStringField
      FieldName = 'code'
      Size = 5
    end
    object ClassCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 802
    Top = 154
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 840
    Top = 152
  end
  object TourCodeSds: TSQLDataSet
    CommandText = 
      'SELECT tcal.Masters_id, tc.TourCodes_id, tc.TourCode'#13#10'FROM TourC' +
      'alendar tcal '#13#10'LEFT JOIN TourCodes tc ON tcal.TourCodes_id = tc.' +
      'TourCodes_id'#13#10'WHERE tcal.Masters_id = :Masters_id'#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'masters_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 776
    Top = 192
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 792
    Top = 192
  end
  object TourCodeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Masters_id'
    MasterFields = 'masters_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 808
    Top = 192
    object TourCodeCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCodeCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
    object TourCodeCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
  end
  object TourCodeDs: TDataSource
    DataSet = TourCodeCds
    Left = 824
    Top = 192
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'SELECT *, Organisation + '#39', '#39' + City AS OrgCity FROM dbo.fn_addr' +
      'essbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 784
    Top = 112
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 800
    Top = 112
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 816
    Top = 112
    object IntegerField2: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField2: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField3: TStringField
      FieldName = 'City'
      Size = 100
    end
    object AgentCdsOrgCity: TStringField
      FieldName = 'OrgCity'
      Size = 356
    end
    object AgentCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 832
    Top = 112
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 525
    object AddAllTourCodes1: TMenuItem
      Caption = 'Add All Tour Codes'
      OnClick = AddAllTourCodes1Click
    end
  end
end
