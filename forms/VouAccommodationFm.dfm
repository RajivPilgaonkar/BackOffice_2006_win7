inherited VouAccommodationForm: TVouAccommodationForm
  Left = 413
  Top = 63
  Width = 545
  Height = 269
  BorderIcons = [biSystemMenu]
  Caption = 'Accommodation Voucher'
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 529
    Height = 31
    BorderStyle = bsNone
    TabOrder = 2
  end
  inherited Panel2: TPanel
    Top = 194
    Width = 529
    Height = 37
    BorderStyle = bsNone
    inherited KeyIdDBText: TDBText
      Left = 9
      Top = 14
      DataField = 'vouchersaccommodation_id'
      DataSource = MasterDS
    end
    object OkBtn: TcxButton
      Left = 363
      Top = 6
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
      Left = 451
      Top = 6
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
      Left = 11
      Top = 6
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
      Left = 139
      Top = 6
      Width = 122
      Height = 24
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
      Left = 270
      Top = 6
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
    Top = 31
    Width = 529
    Height = 163
    Align = alClient
    Color = 15451300
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 10
      Width = 22
      Height = 13
      Caption = 'City'
      Transparent = True
    end
    object Label2: TLabel
      Left = 289
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Hotel'
      Transparent = True
    end
    object Label4: TLabel
      Left = 17
      Top = 34
      Width = 43
      Height = 13
      Caption = 'Date In'
      Transparent = True
    end
    object Label5: TLabel
      Left = 289
      Top = 33
      Width = 52
      Height = 13
      Caption = 'Date Out'
      Transparent = True
    end
    object Label6: TLabel
      Left = 17
      Top = 58
      Width = 65
      Height = 13
      Caption = 'Room Type'
      Transparent = True
    end
    object Label7: TLabel
      Left = 289
      Top = 57
      Width = 23
      Height = 13
      Caption = 'A/C'
      Transparent = True
    end
    object Label9: TLabel
      Left = 17
      Top = 82
      Width = 57
      Height = 13
      Caption = 'Meal Plan'
      Transparent = True
    end
    object Label10: TLabel
      Left = 289
      Top = 82
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label20: TLabel
      Left = 17
      Top = 107
      Width = 56
      Height = 29
      AutoSize = False
      Caption = 'No. of Singles'
      Transparent = True
      WordWrap = True
    end
    object Label8: TLabel
      Left = 289
      Top = 107
      Width = 51
      Height = 28
      AutoSize = False
      Caption = 'No. of Doubles'
      Transparent = True
      WordWrap = True
    end
    object Label3: TLabel
      Left = 17
      Top = 135
      Width = 56
      Height = 29
      AutoSize = False
      Caption = 'No. of Triples'
      Transparent = True
      WordWrap = True
    end
    object Label11: TLabel
      Left = 289
      Top = 134
      Width = 51
      Height = 28
      AutoSize = False
      Caption = 'No. of Twins'
      Transparent = True
      WordWrap = True
    end
    object HotelLcmb: TcxDBLookupComboBox
      Left = 345
      Top = 6
      DataBinding.DataField = 'Addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.DropDownWidth = 150
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = HotelDs
      Properties.OnEditValueChanged = HotelLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 1
      Width = 178
    end
    object RoomTypeLcmb: TcxDBLookupComboBox
      Left = 87
      Top = 57
      DataBinding.DataField = 'roomtypes_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'roomtypes_id'
      Properties.ListColumns = <
        item
          FieldName = 'RoomType'
        end>
      Properties.ListSource = RoomTypeDs
      Properties.OnEditValueChanged = RoomTypeLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 4
      Width = 178
    end
    object MealPlanLcmb: TcxDBLookupComboBox
      Left = 87
      Top = 81
      DataBinding.DataField = 'mealplans_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'mealplans_id'
      Properties.ListColumns = <
        item
          FieldName = 'mealplan'
        end
        item
          FieldName = 'plan'
        end>
      Properties.ListSource = MealPlanDs
      Style.Color = 16247513
      TabOrder = 6
      Width = 178
    end
    object AgentLcmb: TcxDBLookupComboBox
      Left = 345
      Top = 81
      DataBinding.DataField = 'Agent_Addressbook_id'
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
      Properties.ListSource = AgentDs
      Style.Color = 16247513
      TabOrder = 7
      Width = 178
    end
    object CityLcmb: TcxLookupComboBox
      Left = 87
      Top = 9
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
      TabOrder = 0
      Width = 178
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 87
      Top = 33
      DataBinding.DataField = 'datein'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 2
      Width = 178
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 345
      Top = 30
      DataBinding.DataField = 'dateout'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 3
      Width = 178
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 345
      Top = 55
      DataBinding.DataField = 'ac'
      DataBinding.DataSource = MasterDS
      TabOrder = 5
      Width = 25
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 87
      Top = 110
      DataBinding.DataField = 'noofsingles'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 8
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 345
      Top = 110
      DataBinding.DataField = 'noofdoubles'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 9
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 87
      Top = 138
      DataBinding.DataField = 'NoOfTriples'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 10
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 345
      Top = 137
      DataBinding.DataField = 'NoOfTwins'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 11
      Width = 121
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'vouchersaccommodation'
    Params = <
      item
        DataType = ftInteger
        Name = 'vouchers_id'
        ParamType = ptInput
        Value = 1
      end>
    Left = 48
    Top = 4
  end
  inherited MasterDsp: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 5
  end
  inherited MasterDS: TDataSource
    Left = 144
    Top = 5
  end
  inherited MasterCDS: TClientDataSet
    IndexFieldNames = 'vouchers_id'
    MasterFields = 'vouchers_id'
    AfterScroll = MasterCdsAfterScroll
    Left = 112
    Top = 5
    object MasterCDSvouchersaccommodation_id: TIntegerField
      FieldName = 'vouchersaccommodation_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCDSvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCDSdatein: TSQLTimeStampField
      FieldName = 'datein'
    end
    object MasterCDSdateout: TSQLTimeStampField
      FieldName = 'dateout'
    end
    object MasterCDSroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object MasterCDSmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object MasterCDSac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCDSnoofsingles: TIntegerField
      FieldName = 'noofsingles'
    end
    object MasterCDSnoofdoubles: TIntegerField
      FieldName = 'noofdoubles'
    end
    object MasterCDSAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
      OnChange = MasterCDSAddressbook_idChange
    end
    object MasterCDSAgent_Addressbook_id: TIntegerField
      FieldName = 'Agent_Addressbook_id'
    end
    object MasterCDSNoOfTriples: TIntegerField
      FieldName = 'NoOfTriples'
    end
    object MasterCDSNoOfTwins: TIntegerField
      FieldName = 'NoOfTwins'
    end
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM fn_Addressbook (2,'#39'H'#39')'#13#10'WHERE Cities_id = :Cities_' +
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
    Left = 432
    Top = 40
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 448
    Top = 40
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.CitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 456
    Top = 40
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
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 472
    Top = 40
  end
  object AgentSds: TSQLDataSet
    CommandText = 'SELECT * FROM fn_Addressbook (2,'#39'A'#39')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 456
    Top = 112
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 472
    Top = 112
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    BeforeInsert = MasterCDSBeforeInsert
    BeforeEdit = MasterCDSBeforeEdit
    BeforePost = MasterCDSBeforePost
    AfterPost = MasterCDSAfterPost
    BeforeDelete = MasterCDSBeforeDelete
    Left = 480
    Top = 112
    object IntegerField5: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField7: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField8: TStringField
      FieldName = 'City'
      Size = 100
    end
    object IntegerField6: TIntegerField
      FieldName = 'Cities_id'
    end
    object StringField9: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 496
    Top = 112
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
    Left = 208
    Top = 88
  end
  object RoomTypeDsp: TDataSetProvider
    DataSet = RoomTypeSds
    Left = 224
    Top = 88
  end
  object RoomTypeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = HotelDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'RoomTypeDsp'
    Left = 232
    Top = 88
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
    Left = 248
    Top = 88
  end
  object MealPlanSds: TSQLDataSet
    CommandText = 'SELECT * FROM fn_GetHotelMealPlans(:Addressbook_id,2)'
    DataSource = HotelDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Addressbook_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 120
  end
  object MealPlanDsp: TDataSetProvider
    DataSet = MealPlanSds
    Left = 224
    Top = 120
  end
  object MealPlanCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = HotelDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'MealPlanDsp'
    Left = 232
    Top = 120
    object MealPlanCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object MealPlanCdsMealPlans_id: TIntegerField
      FieldName = 'MealPlans_id'
    end
    object MealPlanCdsPlan: TStringField
      FieldName = 'Plan'
      Size = 10
    end
    object MealPlanCdsMealPlan: TStringField
      FieldName = 'MealPlan'
      Size = 100
    end
  end
  object MealPlanDs: TDataSource
    DataSet = MealPlanCds
    Left = 248
    Top = 120
  end
end
