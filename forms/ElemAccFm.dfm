inherited ElemAccForm: TElemAccForm
  Left = 300
  Top = 33
  Height = 572
  Caption = 'Elements - Accommodation'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
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
      Left = 552
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 718
      Top = 13
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object cxCityLCMB: TcxLookupComboBox
      Left = 36
      Top = 15
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = CitiesDs
      Properties.OnEditValueChanged = cxCityLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 173
    end
    object cxHotelLCMB: TcxLookupComboBox
      Left = 268
      Top = 14
      Properties.DropDownWidth = 550
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          Width = 400
          FieldName = 'Organisation'
        end
        item
          Width = 150
          FieldName = 'City'
        end>
      Properties.ListSource = HotelDs
      Properties.OnEditValueChanged = cxHotelLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 269
    end
    object cxWefLCMB: TcxLookupComboBox
      Left = 581
      Top = 14
      Properties.KeyFieldNames = 'FromDate'
      Properties.ListColumns = <
        item
          FieldName = 'FromDate'
        end>
      Properties.ListSource = WefDS
      Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
      TabOrder = 2
      Width = 130
    end
  end
  inherited Panel2: TPanel
    Top = 493
    inherited cxDBLabelKeyId: TcxDBLabel
      DataBinding.DataField = 'ElemAccommodation_id'
    end
  end
  inherited Panel3: TPanel
    Height = 452
    inherited cxPageControl1: TcxPageControl
      Height = 450
      ClientRectBottom = 444
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Accommodation'
        inherited cxGrid1: TcxGrid
          Height = 418
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'ElemAccommodation_id'
            object cxGrid1DBBandedTableView1ElemAccommodation_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ElemAccommodation_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1AddressBook_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AddressBook_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FromDate: TcxGridDBBandedColumn
              Caption = 'From Date'
              DataBinding.FieldName = 'FromDate'
              Width = 96
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ToDate: TcxGridDBBandedColumn
              Caption = 'To Date'
              DataBinding.FieldName = 'ToDate'
              Width = 108
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1AC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'AC'
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1RoomTypes_id: TcxGridDBBandedColumn
              Caption = 'Room Type'
              DataBinding.FieldName = 'RoomTypes_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'roomtypes_id'
              Properties.ListColumns = <
                item
                  FieldName = 'roomtype'
                end>
              Properties.ListSource = RoomTypeDs
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1MealPlans_id: TcxGridDBBandedColumn
              Caption = 'Meal Plan'
              DataBinding.FieldName = 'MealPlans_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 100
              Properties.KeyFieldNames = 'mealplans_id'
              Properties.ListColumns = <
                item
                  FieldName = 'plan'
                end>
              Properties.ListSource = MealPlanDs
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CostSingle: TcxGridDBBandedColumn
              Caption = 'Cost Single'
              DataBinding.FieldName = 'CostSingle'
              Width = 98
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CostDouble: TcxGridDBBandedColumn
              Caption = 'Cost Double'
              DataBinding.FieldName = 'CostDouble'
              Width = 93
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CostTriple: TcxGridDBBandedColumn
              Caption = 'Cost Triple'
              DataBinding.FieldName = 'CostTriple'
              Width = 87
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Currencies_id: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'Currencies_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Currencies_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Currency'
                end>
              Properties.ListSource = CurrenciesDs
              Width = 79
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1SpecialPeriod: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SpecialPeriod'
              Visible = False
              Options.Editing = False
              Width = 46
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Quoted: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Quoted'
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM ElemAccommodation'#13#10'WHERE Addressbook_id = :Address' +
      'book_id'#13#10'AND FromDate = :Wef'
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
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsElemAccommodation_id: TIntegerField
      FieldName = 'ElemAccommodation_id'
    end
    object MasterCdsAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
    object MasterCdsFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
    end
    object MasterCdsToDate: TSQLTimeStampField
      FieldName = 'ToDate'
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
    object MasterCdsSpecialPeriod: TBooleanField
      FieldName = 'SpecialPeriod'
    end
    object MasterCdsQuoted: TBooleanField
      FieldName = 'Quoted'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Top = 279
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT Cities_id, City, State, Country'#13#10'FROM Cities c '#13#10'LEFT JOI' +
      'N States s ON c.States_id = s.States_id'#13#10'LEFT JOIN Countries ON ' +
      'c.Countries_id = Countries.Countries_id'#13#10'ORDER BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 96
    Top = 24
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 112
    Top = 24
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 128
    Top = 24
    object CitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object CitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
    object CitiesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 152
    Top = 24
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_addressbook(2,'#39'H'#39')'#13#10'WHERE Cities_id = :Citi' +
      'es_id'#13#10
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
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
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
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 352
    Top = 8
  end
  object MealPlanSds: TSQLDataSet
    CommandText = 'SELECT * FROM MealPlans'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 552
    Top = 112
  end
  object MealPlanDsp: TDataSetProvider
    DataSet = MealPlanSds
    Left = 568
    Top = 112
  end
  object MealPlanCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MealPlanDsp'
    Left = 584
    Top = 112
    object MealPlanCdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object MealPlanCdsmealplan: TStringField
      FieldName = 'mealplan'
      Size = 15
    end
    object MealPlanCdsplan: TStringField
      FieldName = 'plan'
      FixedChar = True
      Size = 3
    end
  end
  object MealPlanDs: TDataSource
    DataSet = MealPlanCds
    Left = 600
    Top = 112
  end
  object RoomTypeSds: TSQLDataSet
    CommandText = 
      'SELECT RoomTypes_id, RoomType, Addressbook_id, AC '#13#10'FROM dbo.fn_' +
      'GetHotelRoomTypes(:Addressbook_id)'#13#10'ORDER BY RoomType'#13#10
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
    Left = 672
    Top = 200
  end
  object RoomTypeDsp: TDataSetProvider
    DataSet = RoomTypeSds
    Left = 688
    Top = 200
  end
  object RoomTypeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = HotelDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'RoomTypeDsp'
    Left = 704
    Top = 200
    object RoomTypeCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object RoomTypeCdsroomtype: TStringField
      FieldName = 'roomtype'
      Size = 50
    end
    object RoomTypeCdsac: TBooleanField
      FieldName = 'ac'
    end
    object RoomTypeCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object RoomTypeDs: TDataSource
    DataSet = RoomTypeCds
    Left = 720
    Top = 200
  end
  object CurrenciesSds: TSQLDataSet
    CommandText = 
      'SELECT Currencies_id, Currency FROM Currencies'#13#10'ORDER BY Currenc' +
      'y'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 656
    Top = 248
  end
  object CurrenciesDsp: TDataSetProvider
    DataSet = CurrenciesSds
    Left = 672
    Top = 251
  end
  object CurrenciesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrenciesDsp'
    Left = 696
    Top = 248
    object CurrenciesCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrenciesCdsCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
  end
  object CurrenciesDs: TDataSource
    DataSet = CurrenciesCds
    Left = 720
    Top = 248
  end
  object WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT FromDate'#13#10'FROM ElemAccommodation'#13#10'WHERE Addressb' +
      'ook_id = :Addressbook_id'#13#10'ORDER BY FromDate DESC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 616
    Top = 27
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 632
    Top = 27
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WefDsp'
    Left = 648
    Top = 27
    object WefCdsFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 664
    Top = 27
  end
end
