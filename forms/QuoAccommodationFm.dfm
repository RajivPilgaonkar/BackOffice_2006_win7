object QuoAccommodationForm: TQuoAccommodationForm
  Left = 187
  Top = 224
  Width = 580
  Height = 168
  Caption = 'Accommodation'
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
    Top = 89
    Width = 564
    Height = 41
    Align = alBottom
    TabOrder = 0
    object cxCancelButton: TcxButton
      Left = 144
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
      Left = 288
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
  object cxTicketsGB: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Accommodation'
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 1
    Height = 89
    Width = 564
    object Label32: TLabel
      Left = 52
      Top = 25
      Width = 31
      Height = 13
      Caption = 'Hotel'
      Transparent = True
    end
    object Label29: TLabel
      Left = 20
      Top = 48
      Width = 65
      Height = 13
      Caption = 'Room Type'
      Transparent = True
    end
    object Label30: TLabel
      Left = 282
      Top = 50
      Width = 23
      Height = 13
      Caption = 'A/C'
      Transparent = True
    end
    object Label31: TLabel
      Left = 27
      Top = 71
      Width = 57
      Height = 13
      Caption = 'Meal Plan'
      Transparent = True
    end
    object Label1: TLabel
      Left = 281
      Top = 72
      Width = 51
      Height = 13
      Caption = 'Selected'
      Transparent = True
    end
    object Label2: TLabel
      Left = 282
      Top = 26
      Width = 56
      Height = 13
      Caption = 'Overnight'
      Transparent = True
    end
    object HotelLcmb: TcxDBLookupComboBox
      Left = 92
      Top = 22
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
      Left = 92
      Top = 46
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
      Left = 338
      Top = 48
      DataBinding.DataField = 'AC'
      DataBinding.DataSource = AccDs
      ParentColor = False
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 2
      Width = 21
    end
    object MealPlanLcmb: TcxDBLookupComboBox
      Left = 92
      Top = 69
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
      Left = 338
      Top = 70
      DataBinding.DataField = 'Selected'
      DataBinding.DataSource = AccDs
      ParentColor = False
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 4
      Width = 21
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 338
      Top = 24
      DataBinding.DataField = 'ReserveHotelOvernight'
      DataBinding.DataSource = AccDs
      ParentColor = False
      Properties.ReadOnly = True
      Style.Color = 16247513
      TabOrder = 5
      Width = 21
    end
  end
  object AccSds: TSQLDataSet
    CommandText = 'QuoAccommodation'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 352
  end
  object AccDsp: TDataSetProvider
    DataSet = AccSds
    Left = 368
  end
  object AccCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccDsp'
    AfterInsert = AccCdsAfterInsert
    BeforePost = AccCdsBeforePost
    AfterPost = AccCdsAfterPost
    AfterDelete = AccCdsAfterDelete
    Left = 384
    Top = 1
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
    end
    object AccCdsDateOut: TSQLTimeStampField
      FieldName = 'DateOut'
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
    object AccCdsRemarksOther: TStringField
      FieldName = 'RemarksOther'
      Size = 250
    end
  end
  object AccDs: TDataSource
    DataSet = AccCds
    Left = 408
    Top = 3
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM fn_Addressbook (2,'#39'H'#39')'#13#10'WHERE Cities_id = :Cities_' +
      'id'
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 480
    Top = 64
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 496
    Top = 64
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 504
    Top = 64
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
    Left = 520
    Top = 64
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
    Left = 480
    Top = 32
  end
  object RoomTypeDsp: TDataSetProvider
    DataSet = RoomTypeSds
    Left = 496
    Top = 32
  end
  object RoomTypeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = HotelDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'RoomTypeDsp'
    Left = 504
    Top = 32
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
    Left = 520
    Top = 32
  end
  object CitiesSds: TSQLDataSet
    CommandText = 'SELECT Cities_id FROM Cities'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 392
    Top = 96
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 408
    Top = 96
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    AfterInsert = AccCdsAfterInsert
    BeforePost = AccCdsBeforePost
    AfterPost = AccCdsAfterPost
    AfterDelete = AccCdsAfterDelete
    Left = 424
    Top = 97
    object CitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 448
    Top = 99
  end
end
