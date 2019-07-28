inherited MasterTicketsForm: TMasterTicketsForm
  Left = 84
  Top = 18
  Width = 816
  Height = 436
  Caption = 'MasterTicketsForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 800
    Height = 20
    TabOrder = 3
  end
  inherited Panel2: TPanel
    Top = 358
    Width = 800
    Height = 40
    TabOrder = 2
    object KeyIdDbText: TDBText
      Left = 535
      Top = 10
      Width = 65
      Height = 17
      DataField = 'mastertickets_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 390
      Top = 9
      Width = 276
      Height = 25
      Buttons.PriorPage.Enabled = False
      Buttons.PriorPage.Visible = False
      Buttons.NextPage.Enabled = False
      Buttons.NextPage.Visible = False
      Buttons.SaveBookmark.Visible = True
      Buttons.GotoBookmark.Visible = True
      Buttons.Filter.Visible = False
      DataSource = MasterDS
      TabOrder = 0
    end
    object cxButton1: TcxButton
      Left = 723
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
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
  end
  object GroupBox1: TcxGroupBox [2]
    Left = 0
    Top = 230
    Align = alClient
    Caption = 'Tour Details'
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 1
    Height = 128
    Width = 800
    object Label1: TLabel
      Left = 388
      Top = 21
      Width = 183
      Height = 13
      Caption = 'Applicable to the following tours'
    end
    object CustomMasterCxGrid: TcxGrid
      Left = 3
      Top = 18
      Width = 319
      Height = 107
      Align = alLeft
      TabOrder = 0
      object CustomMasterCxGridDBTableView1: TcxGridDBTableView
        OnDblClick = CustomMasterCxGridDBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = Detail1DS
        DataController.KeyFieldNames = 'masterticketstours_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        object CustomMasterCxGridDBTableView1tourcodes_id: TcxGridDBColumn
          Caption = 'Tour Code'
          DataBinding.FieldName = 'tourcodes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'TourCodes_id'
          Properties.ListColumns = <
            item
              FieldName = 'Tourcode'
            end>
          Properties.ListSource = TourCodeDs
          Width = 200
        end
      end
      object CustomMasterCxGridLevel1: TcxGridLevel
        GridView = CustomMasterCxGridDBTableView1
      end
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 387
      Top = 36
      DataBinding.DataField = 'tours'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = True
      Style.Color = 16247513
      TabOrder = 1
      Width = 308
    end
    object cxButton3: TcxButton
      Left = 701
      Top = 36
      Width = 75
      Height = 20
      Caption = 'Update'
      TabOrder = 2
      OnClick = cxButton3Click
    end
  end
  object GroupBox2: TcxGroupBox [3]
    Left = 0
    Top = 20
    Align = alTop
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 0
    Height = 210
    Width = 800
    object Label3: TLabel
      Left = 20
      Top = 21
      Width = 23
      Height = 13
      Caption = 'Day'
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
    object Label5: TLabel
      Left = 20
      Top = 66
      Width = 57
      Height = 13
      Caption = 'Departure'
      Transparent = True
    end
    object Label6: TLabel
      Left = 276
      Top = 66
      Width = 37
      Height = 13
      Caption = 'Arrival'
      Transparent = True
    end
    object Label7: TLabel
      Left = 20
      Top = 114
      Width = 78
      Height = 27
      AutoSize = False
      Caption = 'DeadLine for No. of Pax'
      Transparent = True
      WordWrap = True
    end
    object Label8: TLabel
      Left = 276
      Top = 21
      Width = 53
      Height = 13
      Caption = 'From City'
      Transparent = True
    end
    object Label12: TLabel
      Left = 568
      Top = 21
      Width = 41
      Height = 13
      Caption = 'To City'
      Transparent = True
    end
    object Label9: TLabel
      Left = 20
      Top = 44
      Width = 32
      Height = 13
      Caption = 'Mode'
      Transparent = True
    end
    object Label10: TLabel
      Left = 568
      Top = 66
      Width = 31
      Height = 13
      Caption = 'Class'
      Transparent = True
    end
    object Label11: TLabel
      Left = 20
      Top = 90
      Width = 59
      Height = 13
      Caption = 'Agent City'
      Transparent = True
    end
    object Label13: TLabel
      Left = 276
      Top = 90
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label2: TLabel
      Left = 20
      Top = 147
      Width = 50
      Height = 13
      Caption = 'Remarks'
      Transparent = True
    end
    object Label14: TLabel
      Left = 276
      Top = 114
      Width = 96
      Height = 27
      AutoSize = False
      Caption = 'DeadLine for Names of Pax'
      Transparent = True
      WordWrap = True
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 97
      Top = 19
      DataBinding.DataField = 'day'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 0
      Width = 159
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 380
      Top = 42
      DataBinding.DataField = 'flightno'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 4
      Width = 280
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 97
      Top = 112
      DataBinding.DataField = 'advicenumpaxdays'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 11
      Width = 159
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 380
      Top = 112
      DataBinding.DataField = 'advicenamepaxdays'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 12
      Width = 158
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 380
      Top = 19
      DataBinding.DataField = 'from_cities_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
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
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 1
      Width = 158
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 620
      Top = 19
      DataBinding.DataField = 'to_cities_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
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
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 2
      Width = 158
    end
    object cxModeLCMB: TcxDBLookupComboBox
      Left = 97
      Top = 42
      DataBinding.DataField = 'tickets_id'
      DataBinding.DataSource = MasterDS
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
      TabOrder = 3
      Width = 159
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 620
      Top = 64
      DataBinding.DataField = 'classid'
      DataBinding.DataSource = MasterDS
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
      TabOrder = 8
      Width = 158
    end
    object cxDBLookupComboBox6: TcxDBLookupComboBox
      Left = 380
      Top = 88
      DataBinding.DataField = 'addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 250
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          MinWidth = 150
          FieldName = 'Organisation'
        end
        item
          MinWidth = 100
          FieldName = 'City'
        end>
      Properties.ListSource = AgentDS
      Style.Color = 16247513
      TabOrder = 10
      Width = 158
    end
    object cxDBMemo1: TcxDBMemo
      Left = 97
      Top = 145
      DataBinding.DataField = 'remarks'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 13
      Height = 63
      Width = 685
    end
    object cxAgentCityLCMB: TcxLookupComboBox
      Left = 97
      Top = 88
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = BackOfficeDataModule.AgentCityDs
      Properties.OnEditValueChanged = cxAgentCityLCMBPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 9
      Width = 159
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 97
      Top = 64
      DataBinding.DataField = 'Departure'
      DataBinding.DataSource = MasterDS
      Properties.ImmediatePost = True
      Properties.ReadOnly = False
      Properties.TimeFormat = tfHourMin
      Properties.UseCtrlIncrement = True
      Style.Color = 16247513
      TabOrder = 6
      Width = 159
    end
    object cxDBTimeEdit2: TcxDBTimeEdit
      Left = 380
      Top = 64
      DataBinding.DataField = 'Arrival'
      DataBinding.DataSource = MasterDS
      Properties.ImmediatePost = True
      Properties.ReadOnly = False
      Properties.TimeFormat = tfHourMin
      Properties.UseCtrlIncrement = True
      Style.Color = 16247513
      TabOrder = 7
      Width = 158
    end
    object cxButton2: TcxButton
      Left = 662
      Top = 42
      Width = 114
      Height = 21
      Caption = 'Display Schedule'
      TabOrder = 5
      OnClick = cxButton2Click
    end
  end
  inherited MasterSds: TSQLDataSet
    Active = True
    CommandText = 'mastertickets'
    CommandType = ctTable
    Params = <
      item
        DataType = ftInteger
        Name = 'masters_id'
        ParamType = ptInput
        Value = 452
      end>
    Top = 8
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 96
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    Active = True
    IndexFieldNames = 'masters_id;day;departure;arrival'
    MasterFields = 'masters_id'
    MasterSource = MasterForm.MasterDs
    PacketRecords = 0
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 80
    Top = 8
    object MasterCdsmastertickets_id: TIntegerField
      FieldName = 'mastertickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      OnChange = MasterCdstickets_idChange
    end
    object MasterCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object MasterCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object MasterCdsdeparture: TSQLTimeStampField
      FieldName = 'departure'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdsarrival: TSQLTimeStampField
      FieldName = 'arrival'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdsFromStations_id: TIntegerField
      FieldName = 'FromStations_id'
    end
    object MasterCdsToStations_id: TIntegerField
      FieldName = 'ToStations_id'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    Active = True
    CommandText = 'masterticketstours'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'mastertickets_id'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 304
    Top = 248
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 320
    Top = 248
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 352
    Top = 248
  end
  inherited Detail1Cds: TClientDataSet
    Active = True
    IndexFieldNames = 'mastertickets_id'
    MasterFields = 'mastertickets_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 336
    Top = 248
    object Detail1Cdsmasterticketstours_id: TIntegerField
      FieldName = 'masterticketstours_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdsmastertickets_id: TIntegerField
      FieldName = 'mastertickets_id'
    end
    object Detail1Cdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
      LookupDataSet = TourCodeCds
      LookupKeyFields = 'TourCodes_id'
      LookupResultField = 'Tourcode'
      KeyFields = 'tourcodes_id'
    end
  end
  object TourCodeSds: TSQLDataSet
    CommandText = 
      'SELECT b.TourCodes_id, b.Tourcode , A.Masters_id'#13#10'FROM TourCalen' +
      'dar A, TourCodes B'#13#10'WHERE A.MASTERS_ID = :Masters_id'#13#10'AND A.TOUR' +
      'CODES_ID = B.TOURCODES_ID'#13#10'ORDER BY B.TOURCODE'#13#10
    DataSource = MasterDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'masters_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 296
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 328
    Top = 296
  end
  object TourCodeCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 344
    Top = 296
    object TourCodeCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCodeCdsTourcode: TStringField
      FieldName = 'Tourcode'
      Size = 10
    end
    object TourCodeCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
  end
  object TourCodeDs: TDataSource
    DataSet = TourCodeCds
    Left = 360
    Top = 296
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_addressbook(2,'#39'A'#39') where cities_id = :citie' +
      's_id'#13#10
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
    Left = 544
    Top = 104
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 560
    Top = 104
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = BackOfficeDataModule.AgentCityDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 576
    Top = 104
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
  object AgentDS: TDataSource
    DataSet = AgentCds
    Left = 592
    Top = 104
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
    Left = 696
    Top = 96
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 710
    Top = 97
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
    Left = 728
    Top = 96
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
    Left = 740
    Top = 96
  end
end
