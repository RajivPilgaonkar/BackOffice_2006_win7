inherited VouTicketsForm: TVouTicketsForm
  Left = 280
  Top = 179
  Width = 589
  Height = 358
  BorderIcons = [biSystemMenu]
  Caption = 'Ticket Voucher'
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 573
    Height = 25
    BorderStyle = bsNone
    TabOrder = 2
  end
  inherited Panel2: TPanel
    Top = 275
    Width = 573
    Height = 45
    BorderStyle = bsNone
    inherited KeyIdDBText: TDBText
      Left = 5
      Top = 14
      DataField = 'voucherstickets_id'
      DataSource = MasterDS
    end
    object OkBtn: TcxButton
      Left = 393
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Ok'
      ModalResult = 1
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
      Left = 485
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
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
      Left = 15
      Top = 8
      Width = 117
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
      Left = 147
      Top = 8
      Width = 125
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
      Left = 288
      Top = 8
      Width = 86
      Height = 25
      Caption = 'Old Costings'
      TabOrder = 4
      OnClick = cxButton4Click
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 25
    Width = 573
    Height = 250
    Align = alClient
    Color = 15451300
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 9
      Width = 53
      Height = 13
      Caption = 'From City'
      Transparent = True
    end
    object Label2: TLabel
      Left = 285
      Top = 9
      Width = 41
      Height = 13
      Caption = 'To City'
      Transparent = True
    end
    object Label3: TLabel
      Left = 18
      Top = 33
      Width = 68
      Height = 13
      Caption = 'Travel Date'
      Transparent = True
    end
    object Label4: TLabel
      Left = 285
      Top = 32
      Width = 87
      Height = 13
      Caption = 'Mode of Travel'
      Transparent = True
    end
    object TrainNoLbl: TLabel
      Left = 17
      Top = 57
      Width = 94
      Height = 13
      Caption = 'Travel Schedule'
      Transparent = True
    end
    object Label6: TLabel
      Left = 18
      Top = 104
      Width = 37
      Height = 13
      Caption = 'Arrival'
      Transparent = True
    end
    object Label7: TLabel
      Left = 285
      Top = 102
      Width = 57
      Height = 13
      Caption = 'Departure'
      Transparent = True
    end
    object Label8: TLabel
      Left = 17
      Top = 81
      Width = 86
      Height = 13
      Caption = 'Class of Travel'
      Transparent = True
    end
    object Label9: TLabel
      Left = 18
      Top = 132
      Width = 22
      Height = 13
      Caption = 'City'
      Transparent = True
    end
    object Label10: TLabel
      Left = 285
      Top = 129
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label21: TLabel
      Left = 18
      Top = 155
      Width = 81
      Height = 17
      AutoSize = False
      Caption = 'Total Booked'
      Transparent = True
      WordWrap = True
    end
    object Label22: TLabel
      Left = 284
      Top = 155
      Width = 91
      Height = 19
      AutoSize = False
      Caption = 'Total Cancelled'
      Transparent = True
      WordWrap = True
    end
    object Label23: TLabel
      Left = 18
      Top = 179
      Width = 99
      Height = 14
      AutoSize = False
      Caption = 'Resident Booked'
      Transparent = True
      WordWrap = True
    end
    object Label24: TLabel
      Left = 285
      Top = 177
      Width = 112
      Height = 28
      AutoSize = False
      Caption = 'Resident Cancelled'
      Transparent = True
      WordWrap = True
    end
    object Label5: TLabel
      Left = 16
      Top = 204
      Width = 88
      Height = 13
      AutoSize = False
      Caption = 'Constant USD'
      Transparent = True
      WordWrap = True
    end
    object Label11: TLabel
      Left = 17
      Top = 228
      Width = 88
      Height = 13
      AutoSize = False
      Caption = 'From Station'
      Transparent = True
      WordWrap = True
    end
    object Label12: TLabel
      Left = 281
      Top = 228
      Width = 88
      Height = 13
      AutoSize = False
      Caption = 'To Station'
      Transparent = True
      WordWrap = True
    end
    object FromCityLcmb: TcxDBLookupComboBox
      Left = 116
      Top = 6
      DataBinding.DataField = 'from_cities_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end
        item
          FieldName = 'Country'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Style.Color = 16247513
      TabOrder = 0
      Width = 145
    end
    object ToCityLcmb: TcxDBLookupComboBox
      Left = 397
      Top = 6
      DataBinding.DataField = 'to_cities_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end
        item
          FieldName = 'Country'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Style.Color = 16247513
      TabOrder = 1
      Width = 144
    end
    object ModeLcmb: TcxDBLookupComboBox
      Left = 397
      Top = 30
      DataBinding.DataField = 'tickets_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'tickets_id'
      Properties.ListColumns = <
        item
          FieldName = 'details'
        end>
      Properties.ListSource = BackOfficeDataModule.TicketsDS
      Properties.OnEditValueChanged = ModeLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 3
      Width = 144
    end
    object ClassLcmb: TcxDBLookupComboBox
      Left = 116
      Top = 77
      DataBinding.DataField = 'classid'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'Class_id'
      Properties.ListColumns = <
        item
          FieldName = 'class'
        end>
      Properties.ListSource = ClassDs
      Style.Color = 16247513
      TabOrder = 6
      Width = 145
    end
    object AgentLcmb: TcxDBLookupComboBox
      Left = 397
      Top = 126
      DataBinding.DataField = 'Addressbook_id'
      DataBinding.DataSource = MasterDS
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
      Width = 144
    end
    object TravelSchEdit: TcxDBTextEdit
      Left = 116
      Top = 54
      DataBinding.DataField = 'flightno'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 4
      Width = 262
    end
    object cxButton2: TcxButton
      Left = 398
      Top = 54
      Width = 140
      Height = 21
      Caption = 'Display Schedule'
      TabOrder = 5
      OnClick = cxButton2Click
    end
    object CityLcmb: TcxLookupComboBox
      Left = 116
      Top = 127
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = BackOfficeDataModule.AgentCityDs
      Properties.OnEditValueChanged = CityLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 9
      Width = 145
    end
    object TravelDateEdit: TcxDBDateEdit
      Left = 116
      Top = 30
      DataBinding.DataField = 'TravelDate'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 2
      Width = 145
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 116
      Top = 101
      DataBinding.DataField = 'arrival'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Properties.UseCtrlIncrement = True
      Style.Color = 16247513
      TabOrder = 7
      Width = 145
    end
    object cxDBTimeEdit2: TcxDBTimeEdit
      Left = 397
      Top = 100
      DataBinding.DataField = 'departure'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Properties.UseCtrlIncrement = True
      Style.Color = 16247513
      TabOrder = 8
      Width = 144
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 116
      Top = 152
      DataBinding.DataField = 'nobooked'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 11
      Width = 106
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 397
      Top = 151
      DataBinding.DataField = 'nocancelled'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 12
      Width = 104
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 116
      Top = 177
      DataBinding.DataField = 'noofpax_resident'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 13
      Width = 106
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 397
      Top = 175
      DataBinding.DataField = 'nocancelled_resident'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 14
      Width = 104
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 116
      Top = 201
      DataBinding.DataField = 'Constant_USD'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 15
      Width = 106
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 116
      Top = 225
      DataBinding.DataField = 'FromStationLookup'
      DataBinding.DataSource = MasterDS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.Color = 16247513
      TabOrder = 16
      Width = 149
    end
    object cxDBButtonEdit2: TcxDBButtonEdit
      Left = 397
      Top = 225
      DataBinding.DataField = 'ToStationLookup'
      DataBinding.DataSource = MasterDS
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxDBButtonEdit2PropertiesButtonClick
      Style.Color = 16247513
      TabOrder = 17
      Width = 149
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'voucherstickets'
    Left = 168
    Top = 8
  end
  inherited MasterDsp: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 200
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 264
    Top = 8
  end
  inherited MasterCDS: TClientDataSet
    IndexFieldNames = 'vouchers_id'
    MasterFields = 'vouchers_id'
    AfterScroll = MasterCdsAfterScroll
    Left = 232
    Top = 8
    object MasterCdsvoucherstickets_id: TIntegerField
      FieldName = 'voucherstickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCdsflightno: TStringField
      FieldName = 'flightno'
      Size = 40
    end
    object MasterCdsnobooked: TIntegerField
      FieldName = 'nobooked'
    end
    object MasterCdsnocancelled: TIntegerField
      FieldName = 'nocancelled'
    end
    object MasterCdsclassid: TIntegerField
      FieldName = 'classid'
    end
    object MasterCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object MasterCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object MasterCdsdeparture: TSQLTimeStampField
      FieldName = 'departure'
      DisplayFormat = 'HH:mm'
    end
    object MasterCdsarrival: TSQLTimeStampField
      FieldName = 'arrival'
      DisplayFormat = 'HH:mm'
    end
    object MasterCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object MasterCdstrainno: TStringField
      FieldName = 'trainno'
      Size = 10
    end
    object MasterCdsnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object MasterCdsfrom_trainstations_id: TIntegerField
      FieldName = 'from_trainstations_id'
    end
    object MasterCdsto_trainstations_id: TIntegerField
      FieldName = 'to_trainstations_id'
    end
    object MasterCdsnocancelled_resident: TIntegerField
      FieldName = 'nocancelled_resident'
    end
    object MasterCdsTravelDate: TSQLTimeStampField
      FieldName = 'TravelDate'
    end
    object MasterCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object MasterCDSFromStations_id: TIntegerField
      FieldName = 'FromStations_id'
    end
    object MasterCDSToStations_id: TIntegerField
      FieldName = 'ToStations_id'
    end
    object MasterCDSConstant_USD: TFMTBCDField
      FieldName = 'Constant_USD'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object MasterCDSToStationLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'ToStationLookup'
      LookupDataSet = BackOfficeDataModule.TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'stationname'
      KeyFields = 'ToStations_id'
      Size = 40
      Lookup = True
    end
    object MasterCDSFromStationLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'FromStationLookup'
      LookupDataSet = BackOfficeDataModule.TrainStationCds
      LookupKeyFields = 'trainstations_id'
      LookupResultField = 'stationname'
      KeyFields = 'FromStations_id'
      Size = 40
      Lookup = True
    end
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
    Left = 431
    Top = 167
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 447
    Top = 167
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = BackOfficeDataModule.AgentCityDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 463
    Top = 167
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
    Left = 479
    Top = 167
  end
  object ClassSds: TSQLDataSet
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
    Left = 264
    Top = 116
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 278
    Top = 117
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'tickets_id'
    MasterFields = 'tickets_id'
    MasterSource = BackOfficeDataModule.TicketsDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 296
    Top = 116
    object ClassCdsClass_id: TIntegerField
      FieldName = 'Class_id'
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
    Left = 308
    Top = 116
  end
end
