inherited QuoFixedRateAccModifyForm: TQuoFixedRateAccModifyForm
  Left = 369
  Top = 197
  Caption = 'Accommodation'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Caption = 'Accommodation'
    inherited CustomMasterCxGrid: TcxGrid
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'QuoFixedratesAccommodation_id'
        OptionsData.Deleting = False
        Styles.Background = nil
        Styles.ContentEven = nil
        Styles.ContentOdd = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1QuoFixedratesAccommodation_id: TcxGridDBColumn
          DataBinding.FieldName = 'QuoFixedratesAccommodation_id'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1AddressBook_id: TcxGridDBColumn
          DataBinding.FieldName = 'AddressBook_id'
          Visible = False
          Options.Editing = False
          VisibleForCustomization = False
        end
        object CustomMasterCxGridDBTableView1FromDate: TcxGridDBColumn
          Caption = 'From Date'
          DataBinding.FieldName = 'FromDate'
          Width = 100
        end
        object CustomMasterCxGridDBTableView1ToDate: TcxGridDBColumn
          Caption = 'To Date'
          DataBinding.FieldName = 'ToDate'
          Width = 100
        end
        object CustomMasterCxGridDBTableView1AC: TcxGridDBColumn
          DataBinding.FieldName = 'AC'
          Width = 40
        end
        object CustomMasterCxGridDBTableView1RoomTypes_id: TcxGridDBColumn
          Caption = 'Room Type'
          DataBinding.FieldName = 'RoomTypes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'roomtypes_id'
          Properties.ListColumns = <
            item
              FieldName = 'roomtype'
            end>
          Properties.ListSource = BackOfficeDataModule.RoomTypeDs
        end
        object CustomMasterCxGridDBTableView1MealPlans_id: TcxGridDBColumn
          Caption = 'Meal Plan'
          DataBinding.FieldName = 'MealPlans_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 150
          Properties.KeyFieldNames = 'mealplans_id'
          Properties.ListColumns = <
            item
              FieldName = 'plan'
            end>
          Properties.ListSource = BackOfficeDataModule.MealPlanDs
        end
        object CustomMasterCxGridDBTableView1CostSingle: TcxGridDBColumn
          Caption = 'Single'
          DataBinding.FieldName = 'CostSingle'
          Width = 78
        end
        object CustomMasterCxGridDBTableView1CostDouble: TcxGridDBColumn
          Caption = 'Double'
          DataBinding.FieldName = 'CostDouble'
          Width = 77
        end
        object CustomMasterCxGridDBTableView1CostTriple: TcxGridDBColumn
          Caption = 'Triple'
          DataBinding.FieldName = 'CostTriple'
          Width = 87
        end
        object CustomMasterCxGridDBTableView1Currencies_id: TcxGridDBColumn
          Caption = 'Currency'
          DataBinding.FieldName = 'Currencies_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'currencycode'
            end>
          Properties.ListSource = BackOfficeDataModule.CurrenciesDS
        end
      end
    end
  end
  inherited Panel1: TPanel
    inherited KeyIdDbText: TDBText
      DataField = 'QuoFixedratesAccommodation_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
  end
  inherited Panel2: TPanel
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 22
      Height = 13
      Caption = 'City'
      Transparent = True
    end
    object Label2: TLabel
      Left = 232
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Hotel'
      Transparent = True
    end
    object Label3: TLabel
      Left = 560
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object cxCityLCMB: TcxLookupComboBox
      Left = 36
      Top = 15
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.OnEditValueChanged = cxCityLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 173
    end
    object cxHotelLCMB: TcxLookupComboBox
      Left = 268
      Top = 14
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = HoteDS
      Properties.OnEditValueChanged = cxHotelLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 269
    end
    object cxDateEdit: TcxDateEdit
      Left = 592
      Top = 14
      Properties.OnEditValueChanged = cxDateEditPropertiesEditValueChanged
      TabOrder = 2
      Width = 121
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 
      'SELECT * FROM QuoFixedRatesAccommodation'#13#10'WHERE Addressbook_id =' +
      ' :Addressbook_id'#13#10'AND FromDate >= :Wef'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'Wef'
        ParamType = ptInput
      end>
    Top = 112
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 72
    Top = 112
  end
  inherited MasterDS: TDataSource
    Left = 96
    Top = 112
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 112
    Top = 112
    object MasterCdsQuoFixedratesAccommodation_id: TIntegerField
      FieldName = 'QuoFixedratesAccommodation_id'
    end
    object MasterCdsAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
    object MasterCdsFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsToDate: TSQLTimeStampField
      FieldName = 'ToDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object MasterCdsRoomTypes_id: TIntegerField
      FieldName = 'RoomTypes_id'
    end
    object MasterCdsMealPlans_id: TIntegerField
      FieldName = 'MealPlans_id'
    end
    object MasterCdsCostSingle: TFMTBCDField
      FieldName = 'CostSingle'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsCostDouble: TFMTBCDField
      FieldName = 'CostDouble'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsCostTriple: TFMTBCDField
      FieldName = 'CostTriple'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_addressbook(2,'#39'H'#39')'#13#10'WHERE Cities_id = :Citi' +
      'es_id'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 304
    Top = 8
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 320
    Top = 8
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 336
    Top = 8
    object IntegerField4: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField6: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField7: TStringField
      FieldName = 'City'
      Size = 100
    end
    object HotelCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object HoteDS: TDataSource
    DataSet = HotelCds
    Left = 352
    Top = 8
  end
end
