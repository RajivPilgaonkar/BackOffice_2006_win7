inherited VouTransportForm: TVouTransportForm
  Left = 385
  Top = 227
  Width = 805
  Height = 332
  BorderIcons = [biSystemMenu]
  Caption = 'VouTransportForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel [0]
    Left = 11
    Top = 195
    Width = 63
    Height = 13
    Caption = 'Drive Type'
  end
  inherited Panel1: TPanel
    Width = 789
    Height = 40
    BorderStyle = bsNone
    TabOrder = 2
  end
  inherited Panel2: TPanel
    Top = 245
    Width = 789
    BorderStyle = bsNone
    inherited KeyIdDBText: TDBText
      Left = 8
      Top = 16
      DataField = 'voucherstransport_id'
      DataSource = MasterDS
      Transparent = True
    end
    object OkBtn: TcxButton
      Left = 626
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = OkBtnClick
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
    object CancelBtn: TcxButton
      Left = 714
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Cancel'
      TabOrder = 1
      OnClick = CancelBtnClick
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
    object cxButton3: TcxButton
      Left = 75
      Top = 8
      Width = 118
      Height = 25
      Caption = 'View Pax List'
      TabOrder = 2
      OnClick = cxButton3Click
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
    object cxButton1: TcxButton
      Left = 208
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Cost Breakup'
      TabOrder = 3
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
    object cxButton4: TcxButton
      Left = 375
      Top = 8
      Width = 86
      Height = 25
      Caption = 'Old Costings'
      TabOrder = 4
      OnClick = cxButton4Click
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 40
    Width = 789
    Height = 205
    Align = alClient
    Color = 15451300
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 62
      Width = 22
      Height = 13
      Caption = 'City'
      Transparent = True
    end
    object Label4: TLabel
      Left = 11
      Top = 9
      Width = 59
      Height = 13
      Caption = 'From Date'
      Transparent = True
    end
    object Label5: TLabel
      Left = 11
      Top = 35
      Width = 47
      Height = 13
      Caption = 'To Date'
      Transparent = True
    end
    object Label6: TLabel
      Left = 11
      Top = 81
      Width = 54
      Height = 27
      AutoSize = False
      Caption = 'No. of Vehicles'
      Transparent = True
      WordWrap = True
    end
    object Label7: TLabel
      Left = 585
      Top = 86
      Width = 23
      Height = 13
      Caption = 'A/C'
      Transparent = True
    end
    object Label9: TLabel
      Left = 207
      Top = 82
      Width = 57
      Height = 30
      AutoSize = False
      Caption = 'Vehicle type'
      Transparent = True
      WordWrap = True
    end
    object Label10: TLabel
      Left = 374
      Top = 60
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label11: TLabel
      Left = 207
      Top = 9
      Width = 59
      Height = 13
      Caption = 'From Time'
      Transparent = True
    end
    object Label12: TLabel
      Left = 207
      Top = 35
      Width = 47
      Height = 13
      Caption = 'To Time'
      Transparent = True
    end
    object Label25: TLabel
      Left = 374
      Top = 10
      Width = 53
      Height = 13
      Caption = 'From City'
      Transparent = True
    end
    object Label26: TLabel
      Left = 374
      Top = 34
      Width = 41
      Height = 13
      Caption = 'To City'
      Transparent = True
    end
    object Label27: TLabel
      Left = 585
      Top = 11
      Width = 64
      Height = 13
      Caption = 'From Place'
      Transparent = True
    end
    object Label28: TLabel
      Left = 585
      Top = 35
      Width = 52
      Height = 13
      Caption = 'To Place'
      Transparent = True
    end
    object Label29: TLabel
      Left = 11
      Top = 115
      Width = 63
      Height = 38
      AutoSize = False
      Caption = 'Kms Travelled by Pax'
      Transparent = True
      WordWrap = True
    end
    object Label30: TLabel
      Left = 207
      Top = 115
      Width = 48
      Height = 32
      AutoSize = False
      Caption = 'Drop Off Kms'
      Transparent = True
      WordWrap = True
    end
    object Label31: TLabel
      Left = 585
      Top = 113
      Width = 54
      Height = 32
      AutoSize = False
      Caption = 'Drop Off Days'
      Transparent = True
      WordWrap = True
    end
    object CostBtn: TSpeedButton
      Left = 756
      Top = 110
      Width = 27
      Height = 28
      Hint = 'Display Expected Cost.'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Transparent = False
    end
    object Label2: TLabel
      Left = 11
      Top = 166
      Width = 63
      Height = 13
      Caption = 'Drive Type'
      Transparent = True
    end
    object Label18: TLabel
      Left = 257
      Top = 164
      Width = 60
      Height = 13
      Caption = 'City Group'
      Transparent = True
    end
    object AgentLcmb: TcxDBLookupComboBox
      Left = 432
      Top = 58
      DataBinding.DataField = 'Addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = AgentDs
      Properties.OnEditValueChanged = AgentLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 9
      Width = 224
    end
    object CityLcmb: TcxLookupComboBox
      Left = 74
      Top = 57
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end
        item
          FieldName = 'state'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.OnEditValueChanged = CityLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 8
      Width = 183
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 74
      Top = 6
      DataBinding.DataField = 'fromdate'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 0
      Width = 117
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 74
      Top = 32
      DataBinding.DataField = 'todate'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 4
      Width = 117
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 656
      Top = 82
      DataBinding.DataField = 'ac'
      DataBinding.DataSource = MasterDS
      TabOrder = 12
      Width = 21
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 270
      Top = 6
      DataBinding.DataField = 'fromtime'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Style.Color = 16247513
      TabOrder = 1
      Width = 91
    end
    object cxDBTimeEdit2: TcxDBTimeEdit
      Left = 270
      Top = 33
      DataBinding.DataField = 'totime'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Style.Color = 16247513
      TabOrder = 5
      Width = 91
    end
    object FromPlaceEdit: TcxDBTextEdit
      Left = 653
      Top = 7
      DataBinding.DataField = 'fromplace'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 3
      Width = 135
    end
    object ToPlaceEdit: TcxDBTextEdit
      Left = 653
      Top = 31
      DataBinding.DataField = 'toplace'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 7
      Width = 135
    end
    object cxDBTextEdit15: TcxDBTextEdit
      Left = 74
      Top = 84
      DataBinding.DataField = 'noofvehicles'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 10
      Width = 106
    end
    object cxDBTextEdit17: TcxDBTextEdit
      Left = 74
      Top = 121
      DataBinding.DataField = 'kms'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 13
      Width = 106
    end
    object cxDBTextEdit18: TcxDBTextEdit
      Left = 270
      Top = 118
      DataBinding.DataField = 'dropoffkms'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 14
      Width = 144
    end
    object cxDBTextEdit19: TcxDBTextEdit
      Left = 653
      Top = 114
      DataBinding.DataField = 'dropoffdays'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 16
      Width = 96
    end
    object VehicleTypeLcmb: TcxDBLookupComboBox
      Left = 270
      Top = 82
      DataBinding.DataField = 'vehicles_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'vehicles_id'
      Properties.ListColumns = <
        item
          FieldName = 'vehicle'
        end>
      Properties.ListSource = VehicleDs
      Style.Color = 16247513
      TabOrder = 11
      Width = 224
    end
    object cxDistanceBtn: TcxButton
      Left = 432
      Top = 116
      Width = 116
      Height = 25
      Caption = 'Get Distance'
      TabOrder = 15
      OnClick = cxDistanceBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 432
      Top = 7
      DataBinding.DataField = 'from_cities_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          Caption = 'City'
          FieldName = 'city'
        end
        item
          Caption = 'State'
          FieldName = 'state'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Style.Color = 16247513
      TabOrder = 2
      Width = 143
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 432
      Top = 32
      DataBinding.DataField = 'to_cities_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          Caption = 'City'
          FieldName = 'city'
        end
        item
          Caption = 'State'
          FieldName = 'state'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Style.Color = 16247513
      TabOrder = 6
      Width = 143
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 75
      Top = 163
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
      TabOrder = 17
      Width = 158
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 322
      Top = 162
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
      TabOrder = 18
      Width = 158
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'voucherstransport'
    Left = 208
    Top = 8
  end
  inherited MasterDsp: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 224
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 256
    Top = 8
  end
  inherited MasterCDS: TClientDataSet
    IndexFieldNames = 'vouchers_id'
    MasterFields = 'vouchers_id'
    AfterScroll = MasterCdsAfterScroll
    Left = 240
    Top = 8
    object MasterCDSvoucherstransport_id: TIntegerField
      FieldName = 'voucherstransport_id'
    end
    object MasterCDSvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCDSfromplace: TStringField
      FieldName = 'fromplace'
      Size = 30
    end
    object MasterCDStoplace: TStringField
      FieldName = 'toplace'
      Size = 30
    end
    object MasterCDSac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCDSdropoffdays: TIntegerField
      FieldName = 'dropoffdays'
    end
    object MasterCDSvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object MasterCDSfromdate: TSQLTimeStampField
      FieldName = 'fromdate'
    end
    object MasterCDStodate: TSQLTimeStampField
      FieldName = 'todate'
    end
    object MasterCDSnoofvehicles: TIntegerField
      FieldName = 'noofvehicles'
    end
    object MasterCDSkms: TIntegerField
      FieldName = 'kms'
    end
    object MasterCDSfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object MasterCDSto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object MasterCDSfromtime: TSQLTimeStampField
      FieldName = 'fromtime'
      DisplayFormat = 'HH:mm'
    end
    object MasterCDStotime: TSQLTimeStampField
      FieldName = 'totime'
      DisplayFormat = 'HH:mm'
    end
    object MasterCDSdropoffkms: TIntegerField
      FieldName = 'dropoffkms'
    end
    object MasterCDSAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object MasterCDSDriveTypes_id: TIntegerField
      FieldName = 'DriveTypes_id'
    end
    object MasterCDSCarHireGroups_id: TIntegerField
      FieldName = 'CarHireGroups_id'
    end
  end
  object VehicleSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT v.Vehicle, ch.Vehicles_id, ch.AddressBook_id'#13#10'FR' +
      'OM CarHire ch LEFT JOIN Vehicles v ON ch.Vehicles_id = v.Vehicle' +
      's_id'#13#10'WHERE ch.Addressbook_id = :Addressbook_id'#13#10'UNION'#13#10'SELECT D' +
      'ISTINCT v.Vehicle, cc.Vehicles_id, c.DefaultAgents_id AS Address' +
      'book_id'#13#10'FROM CarHireGroups c'#13#10'     INNER JOIN CarHireGroupCosts' +
      ' cc ON c.CarHireGroups_id = cc.CarHireGroups_id'#13#10'     LEFT JOIN ' +
      'Vehicles v ON cc.Vehicles_id = v.Vehicles_id'#13#10'WHERE c.DefaultAge' +
      'nts_id = :Addressbook_id2'#13#10'ORDER BY Vehicle'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Addressbook_id2'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 296
    Top = 120
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 312
    Top = 120
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 328
    Top = 120
    object VehicleCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object VehicleCdsvehicle: TStringField
      FieldName = 'vehicle'
      Size = 35
    end
    object VehicleCdsAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
  end
  object VehicleDs: TDataSource
    DataSet = VehicleCds
    Left = 336
    Top = 120
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM fn_Addressbook (2,'#39'A'#39')'#13#10'WHERE Cities_id = :Cities_' +
      'id'
    DataSource = BackOfficeDataModule.CitiesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 464
    Top = 94
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 480
    Top = 94
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.CitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 496
    Top = 94
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
    Left = 512
    Top = 94
  end
end
