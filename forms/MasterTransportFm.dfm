inherited MasterTransportForm: TMasterTransportForm
  Left = 160
  Width = 883
  Height = 487
  Caption = 'MasterTransportForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 875
    Height = 20
    TabOrder = 3
  end
  inherited Panel2: TPanel
    Top = 413
    Width = 875
    Height = 40
    TabOrder = 2
    object KeyIdDbText: TDBText
      Left = 655
      Top = 13
      Width = 65
      Height = 17
      DataField = 'mastertransport_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 284
      Top = 9
      Width = 300
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
      Left = 744
      Top = 9
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
  object GroupBox2: TcxGroupBox [2]
    Left = 0
    Top = 20
    Align = alTop
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 0
    Height = 236
    Width = 875
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 54
      Height = 13
      Caption = 'From Day'
      Transparent = True
    end
    object Label4: TLabel
      Left = 646
      Top = 24
      Width = 64
      Height = 13
      Caption = 'From Place'
      Transparent = True
    end
    object Label5: TLabel
      Left = 206
      Top = 24
      Width = 59
      Height = 13
      Caption = 'From Time'
      Transparent = True
    end
    object Label6: TLabel
      Left = 205
      Top = 48
      Width = 47
      Height = 13
      Caption = 'To Time'
      Transparent = True
    end
    object Label7: TLabel
      Left = 8
      Top = 96
      Width = 62
      Height = 41
      AutoSize = False
      Caption = 'Kms to  Travel by Pax'
      Transparent = True
      WordWrap = True
    end
    object Label8: TLabel
      Left = 417
      Top = 24
      Width = 53
      Height = 13
      Caption = 'From City'
      Transparent = True
    end
    object Label12: TLabel
      Left = 416
      Top = 48
      Width = 41
      Height = 13
      Caption = 'To City'
      Transparent = True
    end
    object Label9: TLabel
      Left = 8
      Top = 48
      Width = 42
      Height = 13
      Caption = 'To Day'
      Transparent = True
    end
    object Label10: TLabel
      Left = 647
      Top = 96
      Width = 50
      Height = 28
      AutoSize = False
      Caption = 'Drop Off Days'
      Transparent = True
      WordWrap = True
    end
    object Label11: TLabel
      Left = 8
      Top = 72
      Width = 59
      Height = 13
      Caption = 'Agent City'
      Transparent = True
    end
    object Label13: TLabel
      Left = 273
      Top = 72
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 142
      Width = 50
      Height = 13
      Caption = 'Remarks'
      Transparent = True
    end
    object Label14: TLabel
      Left = 273
      Top = 96
      Width = 55
      Height = 28
      AutoSize = False
      Caption = 'Drop Off Kms'
      Transparent = True
      WordWrap = True
    end
    object Label15: TLabel
      Left = 647
      Top = 48
      Width = 52
      Height = 13
      Caption = 'To Place'
      Transparent = True
    end
    object Label16: TLabel
      Left = 647
      Top = 72
      Width = 23
      Height = 13
      Caption = 'A/C'
      Transparent = True
    end
    object Label17: TLabel
      Left = 11
      Top = 205
      Width = 63
      Height = 13
      Caption = 'Drive Type'
      Transparent = True
    end
    object Label18: TLabel
      Left = 257
      Top = 205
      Width = 60
      Height = 13
      Caption = 'City Group'
      Transparent = True
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 717
      Top = 22
      DataBinding.DataField = 'fromplace'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 3
      Width = 149
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 717
      Top = 46
      DataBinding.DataField = 'toplace'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 7
      Width = 149
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 75
      Top = 94
      DataBinding.DataField = 'kms'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 11
      Width = 158
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 337
      Top = 94
      DataBinding.DataField = 'dropoffkms'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 12
      Width = 56
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 474
      Top = 22
      DataBinding.DataField = 'from_cities_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 2
      Width = 158
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 474
      Top = 46
      DataBinding.DataField = 'to_cities_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 6
      Width = 158
    end
    object cxDBMemo1: TcxDBMemo
      Left = 75
      Top = 140
      DataBinding.DataField = 'remarks'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 15
      Height = 58
      Width = 792
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 271
      Top = 22
      DataBinding.DataField = 'fromtime'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Properties.TimeFormat = tfHourMin
      Properties.UseCtrlIncrement = True
      Style.Color = 16247513
      TabOrder = 1
      Width = 121
    end
    object cxDBTimeEdit2: TcxDBTimeEdit
      Left = 272
      Top = 46
      DataBinding.DataField = 'totime'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Properties.TimeFormat = tfHourMin
      Properties.UseCtrlIncrement = True
      Style.Color = 16247513
      TabOrder = 5
      Width = 120
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 717
      Top = 94
      DataBinding.DataField = 'dropoffdays'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 14
      Width = 56
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 717
      Top = 70
      DataBinding.DataField = 'ac'
      DataBinding.DataSource = MasterDS
      ParentColor = False
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 10
      Width = 21
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 74
      Top = 22
      DataBinding.DataField = 'fromday'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 0
      Width = 123
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 74
      Top = 46
      DataBinding.DataField = 'today'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 4
      Width = 123
    end
    object cxAgentCityLCMB: TcxLookupComboBox
      Left = 75
      Top = 70
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = BackOfficeDataModule.AgentCityDs
      Properties.OnEditValueChanged = cxAgentCityLCMBPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 8
      Width = 159
    end
    object cxDBLookupComboBox6: TcxDBLookupComboBox
      Left = 336
      Top = 70
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
      TabOrder = 9
      Width = 296
    end
    object cxDistanceButton: TcxButton
      Left = 400
      Top = 95
      Width = 88
      Height = 19
      Caption = 'Get Distance'
      TabOrder = 13
      OnClick = cxDistanceButtonClick
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 76
      Top = 203
      DataBinding.DataField = 'DriveTypes_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'DriveTypes_id'
      Properties.ListColumns = <
        item
          FieldName = 'DriveType'
        end>
      Properties.ListSource = BackOfficeDataModule.DriveTypeDs
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 16
      Width = 158
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 322
      Top = 203
      DataBinding.DataField = 'CarHireGroups_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CarHireGroups_id'
      Properties.ListColumns = <
        item
          FieldName = 'CarHireGroup'
        end>
      Properties.ListSource = BackOfficeDataModule.CarHireGroupsDs
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 17
      Width = 158
    end
  end
  object GroupBox1: TcxGroupBox [3]
    Left = 0
    Top = 256
    Align = alClient
    Caption = 'Tour Details'
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 1
    Height = 157
    Width = 875
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
      Width = 367
      Height = 136
      Align = alLeft
      TabOrder = 0
      object CustomMasterCxGridDBTableView1: TcxGridDBTableView
        OnDblClick = CustomMasterCxGridDBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = Detail1DS
        DataController.KeyFieldNames = 'mastertransporttours_id'
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
      Left = 389
      Top = 42
      DataBinding.DataField = 'tours'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = True
      Style.Color = 16247513
      TabOrder = 1
      Width = 331
    end
    object UpdateBtn: TcxButton
      Left = 730
      Top = 42
      Width = 75
      Height = 20
      Caption = 'Update'
      TabOrder = 2
      OnClick = UpdateBtnClick
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'mastertransport'
    CommandType = ctTable
    Params = <
      item
        DataType = ftInteger
        Name = 'masters_id'
        ParamType = ptInput
        Value = 452
      end>
    Left = 112
    Top = 0
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 0
  end
  inherited MasterDS: TDataSource
    Left = 152
    Top = 0
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'masters_id;fromday;fromtime;today'
    MasterFields = 'masters_id'
    MasterSource = MasterForm.MasterDs
    PacketRecords = 0
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 144
    Top = 0
    object MasterCdsmastertransport_id: TIntegerField
      FieldName = 'mastertransport_id'
    end
    object MasterCdsfromplace: TStringField
      FieldName = 'fromplace'
      Size = 25
    end
    object MasterCdsfromday: TIntegerField
      FieldName = 'fromday'
    end
    object MasterCdsfromtime: TSQLTimeStampField
      FieldName = 'fromtime'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdstoplace: TStringField
      FieldName = 'toplace'
      Size = 25
    end
    object MasterCdstoday: TIntegerField
      FieldName = 'today'
    end
    object MasterCdstotime: TSQLTimeStampField
      FieldName = 'totime'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 250
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdstours: TStringField
      FieldName = 'tours'
      Size = 50
    end
    object MasterCdsac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCdsdropoffdays: TIntegerField
      FieldName = 'dropoffdays'
    end
    object MasterCdskms: TIntegerField
      FieldName = 'kms'
    end
    object MasterCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object MasterCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCdsdropoffkms: TIntegerField
      FieldName = 'dropoffkms'
    end
    object MasterCdsDriveTypes_id: TIntegerField
      FieldName = 'DriveTypes_id'
    end
    object MasterCdsCarHireGroups_id: TIntegerField
      FieldName = 'CarHireGroups_id'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    Active = True
    CommandText = 'mastertransporttours'
    CommandType = ctTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 280
    Top = 224
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 296
    Top = 224
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 328
    Top = 224
  end
  inherited Detail1Cds: TClientDataSet
    Active = True
    IndexFieldNames = 'mastertransport_id'
    MasterFields = 'mastertransport_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 312
    Top = 224
    object Detail1Cdsmastertransporttours_id: TIntegerField
      FieldName = 'mastertransporttours_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdsmastertransport_id: TIntegerField
      FieldName = 'mastertransport_id'
    end
    object Detail1Cdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
      LookupDataSet = TourCodeCds
      LookupKeyFields = 'Tourcode'
      LookupResultField = 'TourCodes_id'
      KeyFields = 'tourcodes_id'
    end
  end
  object TourCodeSds: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT b.TourCodes_id, b.Tourcode , A.Masters_id'#13#10'FROM TourCalen' +
      'dar A, TourCodes B'#13#10'WHERE A.MASTERS_ID = :Masters_id'#13#10'AND A.TOUR' +
      'CODES_ID = B.TOURCODES_ID'#13#10'ORDER BY B.TOURCODE'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
        Value = 452
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 280
    Top = 256
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 296
    Top = 256
  end
  object TourCodeCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Masters_id'
    MasterFields = 'masters_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 312
    Top = 256
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
    Left = 328
    Top = 256
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
    Top = 80
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 560
    Top = 80
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
    Top = 80
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
    Top = 80
  end
end
