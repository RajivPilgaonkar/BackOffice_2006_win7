object BackOfficeDataModule: TBackOfficeDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 427
  Height = 728
  Width = 725
  object SQLConnection: TSQLConnection
    ConnectionName = 'Jadoo'
    DriverName = 'SQLServer'
    GetDriverFunc = 'getSQLDriverSQLServer'
    LibraryName = 'dbexpsda.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=SQLServer'
      'BlobSize=-1'
      'HostName=LAPTOP\SQLEXPRESS_2014'
      'DataBase=Jadoo_2006'
      'User_Name=sa'
      'Password=sa123@pwd')
    VendorLib = 'sqloledb.dll'
    Left = 32
    Top = 16
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'p_CanLogin'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
        Value = 0
      end
      item
        DataType = ftString
        Name = 'i_UserName'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'i_Pwd'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'o_AdmUsers_id'
        ParamType = ptOutput
        Size = 4
        Value = 0
      end>
    SQLConnection = SQLConnection
    Left = 104
    Top = 16
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'Jadoo_2006_Connection'
    DriverName = 'SQLServer'
    GetDriverFunc = 'getSQLDriverSQLServer'
    LibraryName = 'dbexpsda.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=SQLServer'
      'BlobSize=-1'
      'HostName=LAPTOP\SQL_SERVER_2K'
      'Database=Jadoo_2006_ody'
      'USER_NAME=sa'
      'Password=')
    VendorLib = 'sqloledb.dll'
    Left = 184
    Top = 16
  end
  object cxStyleRepository: TcxStyleRepository
    Left = 31
    Top = 64
    PixelsPerInch = 96
    object cxStyleOddRow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15138804
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleEvenRow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15728354
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleHeader: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clYellow
    end
    object cxStyleBackground: TcxStyle
      AssignedValues = [svColor]
      Color = 12246236
    end
    object cxStyleFormBackground: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15451300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyleControlBackground: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStylePublished: TcxStyle
      AssignedValues = [svColor]
      Color = 10801663
    end
    object cxStyleContract: TcxStyle
      AssignedValues = [svColor]
      Color = 16759225
    end
    object cxStyleCream: TcxStyle
      AssignedValues = [svColor]
      Color = 15334910
    end
    object cxStyleLightBlueBackground: TcxStyle
      AssignedValues = [svColor]
      Color = 16773612
    end
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state, country'#13#10'from cities c '#13#10'left joi' +
      'n states s on c.states_id = s.states_id'#13#10'left join countries on ' +
      'c.countries_id = countries.countries_id'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 16
    Top = 120
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 32
    Top = 120
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 48
    Top = 120
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
  object CitiesDS: TDataSource
    DataSet = CitiesCds
    Left = 72
    Top = 120
  end
  object StatesSds: TSQLDataSet
    CommandText = 
      'select states_id, state, country'#13#10'from states s left join countr' +
      'ies  c on s.countries_id = c.countries_id'#13#10'order by state'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 16
    Top = 168
  end
  object StatesDsp: TDataSetProvider
    DataSet = StatesSds
    Left = 32
    Top = 168
  end
  object StatesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'StatesDsp'
    Left = 48
    Top = 168
    object StatesCdsstates_id: TIntegerField
      FieldName = 'states_id'
    end
    object StatesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
    object StatesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
  end
  object StatesDs: TDataSource
    DataSet = StatesCds
    Left = 64
    Top = 168
  end
  object CountriesSds: TSQLDataSet
    CommandText = 'select countries_id, country'#13#10'from countries c'#13#10'order by country'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 16
    Top = 216
  end
  object CountriesDsp: TDataSetProvider
    DataSet = CountriesSds
    Left = 32
    Top = 216
  end
  object CountriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CountriesDsp'
    Left = 48
    Top = 216
    object CountriesCdscountries_id: TIntegerField
      FieldName = 'countries_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CountriesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
  end
  object CountriesDS: TDataSource
    DataSet = CountriesCds
    Left = 64
    Top = 216
  end
  object CurrenciesSds: TSQLDataSet
    CommandText = 
      'select currencies_id, currency, currencycode'#13#10'from currencies'#13#10'o' +
      'rder by currency'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 16
    Top = 264
  end
  object CurrenciesDsp: TDataSetProvider
    DataSet = CurrenciesSds
    Left = 32
    Top = 264
  end
  object CurrenciesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrenciesDsp'
    Left = 48
    Top = 264
    object CurrenciesCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CurrenciesCdscurrency: TStringField
      FieldName = 'currency'
      Size = 50
    end
    object CurrenciesCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
  end
  object CurrenciesDS: TDataSource
    DataSet = CurrenciesCds
    Left = 64
    Top = 264
  end
  object BankAccountsSds: TSQLDataSet
    CommandText = 
      'select currencies_id, currency'#13#10'from currencies'#13#10'order by curren' +
      'cy'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 16
    Top = 312
  end
  object BankAccountsDsp: TDataSetProvider
    DataSet = BankAccountsSds
    Left = 32
    Top = 312
  end
  object BankAccountsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BankAccountsDsp'
    Left = 48
    Top = 312
    object IntegerField1: TIntegerField
      FieldName = 'currencies_id'
    end
    object StringField1: TStringField
      FieldName = 'currency'
      Size = 50
    end
  end
  object BankAccountsDS: TDataSource
    DataSet = BankAccountsCds
    Left = 64
    Top = 312
  end
  object OrgSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(1,'#39#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 16
    Top = 368
    object OrgSdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object OrgSdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object OrgSdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object OrgDsp: TDataSetProvider
    DataSet = OrgSds
    Left = 32
    Top = 368
  end
  object OrgCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'OrgDsp'
    Left = 48
    Top = 368
    object OrgCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object OrgCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object OrgCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object OrgDS: TDataSource
    DataSet = OrgCds
    Left = 64
    Top = 368
  end
  object BankSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'B'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 16
    Top = 424
  end
  object BankDsp: TDataSetProvider
    DataSet = BankSds
    Left = 32
    Top = 424
  end
  object BankCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'BankDsp'
    Left = 48
    Top = 424
    object BankCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object BankCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object BankCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object BankCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object BankDS: TDataSource
    DataSet = BankCds
    Left = 64
    Top = 424
  end
  object CategoriesSds: TSQLDataSet
    CommandText = 
      'select Categories_id, Description, Category from Categories'#13#10'ORD' +
      'ER BY Category'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 16
    Top = 488
  end
  object CategoriesDsp: TDataSetProvider
    DataSet = CategoriesSds
    Left = 32
    Top = 488
  end
  object CategoriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CategoriesDsp'
    Left = 48
    Top = 488
    object CategoriesCdsCategories_id: TIntegerField
      FieldName = 'Categories_id'
    end
    object CategoriesCdsCategory: TStringField
      FieldName = 'Category'
      Size = 5
    end
    object CategoriesCdsDescription: TStringField
      FieldName = 'Description'
      Size = 30
    end
  end
  object CategoriesDS: TDataSource
    DataSet = CategoriesCds
    Left = 64
    Top = 488
  end
  object AgentSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 24
    Top = 544
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 40
    Top = 544
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 56
    Top = 544
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
    Left = 72
    Top = 544
  end
  object PrinAgentSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'OA'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 24
    Top = 600
  end
  object PrinAgentDsp: TDataSetProvider
    DataSet = PrinAgentSds
    Left = 40
    Top = 600
  end
  object PrinAgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrinAgentDsp'
    Left = 56
    Top = 600
    object IntegerField3: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField4: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField5: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object PrinAgentDS: TDataSource
    DataSet = PrinAgentCds
    Left = 72
    Top = 600
  end
  object TourSds: TSQLDataSet
    CommandText = 
      'select TourCodes_id, TourCode from tourcodes'#13#10'ORDER BY TourCode'#13 +
      #10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 24
    Top = 648
  end
  object TourDsp: TDataSetProvider
    DataSet = TourSds
    Left = 40
    Top = 648
  end
  object TourCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourDsp'
    Left = 56
    Top = 648
    object TourCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCdsTourCode: TStringField
      FieldName = 'TourCode'
      Size = 10
    end
  end
  object TourDS: TDataSource
    DataSet = TourCds
    Left = 72
    Top = 648
  end
  object HotelSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'H'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 128
    Top = 112
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 152
    Top = 112
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 168
    Top = 112
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
    Left = 184
    Top = 112
  end
  object VehCatSds: TSQLDataSet
    CommandText = 
      'select VehicleCategories_id, Category from VehicleCategories'#13#10'OR' +
      'DER BY Category'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 136
    Top = 168
  end
  object VehCatDsp: TDataSetProvider
    DataSet = VehCatSds
    Left = 152
    Top = 168
  end
  object VehCatCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehCatDsp'
    Left = 168
    Top = 168
    object VehCatCdsVehicleCategories_id: TIntegerField
      FieldName = 'VehicleCategories_id'
    end
    object VehCatCdsCategory: TStringField
      FieldName = 'Category'
      Size = 50
    end
  end
  object VehCatDS: TDataSource
    DataSet = VehCatCds
    Left = 184
    Top = 168
  end
  object VehicleSds: TSQLDataSet
    CommandText = 'select Vehicles_id, Vehicle from Vehicles'#13#10'ORDER BY Vehicle'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 136
    Top = 216
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 152
    Top = 216
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 168
    Top = 216
    object VehicleCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VehicleCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
  end
  object VehicleDS: TDataSource
    DataSet = VehicleCds
    Left = 184
    Top = 216
  end
  object FolioCatSds: TSQLDataSet
    CommandText = 
      'select FolioCategories_id, Description from FolioCategories'#13#10'ORD' +
      'ER BY Description'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 136
    Top = 264
  end
  object FolioCatDsp: TDataSetProvider
    DataSet = FolioCatSds
    Left = 152
    Top = 264
  end
  object FolioCatCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FolioCatDsp'
    Left = 168
    Top = 264
    object FolioCatCdsFolioCategories_id: TIntegerField
      FieldName = 'FolioCategories_id'
    end
    object FolioCatCdsDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object FolioCatDS: TDataSource
    DataSet = FolioCatCds
    Left = 184
    Top = 264
  end
  object OrgContactSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(3,'#39#39')'#13#10'order by organisation'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 136
    Top = 312
    object IntegerField5: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField8: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField9: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object OrgContactDsp: TDataSetProvider
    DataSet = OrgContactSds
    Left = 152
    Top = 312
  end
  object OrgContactCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'OrgContactDsp'
    Left = 168
    Top = 312
    object OrgContactCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object OrgContactCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object OrgContactCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
  end
  object OrgContactDS: TDataSource
    DataSet = OrgContactCds
    Left = 184
    Top = 312
  end
  object TaxSds: TSQLDataSet
    CommandText = 'select taxes_id, tax from taxes order by tax'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 136
    Top = 360
  end
  object TaxDsp: TDataSetProvider
    DataSet = TaxSds
    Constraints = False
    Left = 120
    Top = 360
  end
  object TaxCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TaxDsp'
    Left = 168
    Top = 360
    object TaxCdstaxes_id: TIntegerField
      FieldName = 'taxes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TaxCdstax: TStringField
      FieldName = 'tax'
      Size = 50
    end
  end
  object TaxeDS: TDataSource
    DataSet = TaxCds
    Left = 184
    Top = 360
  end
  object TrainStationSds: TSQLDataSet
    CommandText = 'select * from trainstations'#13#10'order by station'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 136
    Top = 424
  end
  object TrainStationDsp: TDataSetProvider
    DataSet = TrainStationSds
    Left = 152
    Top = 424
  end
  object TrainStationCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainStationDsp'
    Left = 168
    Top = 424
    object TrainStationCdstrainstations_id: TIntegerField
      FieldName = 'trainstations_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TrainStationCdsstation: TStringField
      FieldName = 'station'
      Size = 50
    end
    object TrainStationCdsrailwaycode: TStringField
      FieldName = 'railwaycode'
    end
    object TrainStationCdsstationname: TStringField
      FieldName = 'stationname'
      Size = 50
    end
    object TrainStationCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object TrainStationCdsin_use: TBooleanField
      FieldName = 'in_use'
    end
  end
  object TrainStationDs: TDataSource
    DataSet = TrainStationCds
    Left = 184
    Top = 424
  end
  object TicketsSDS: TSQLDataSet
    CommandText = 'select tickets_id, details from tickets order by details'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 136
    Top = 475
  end
  object TicketsDSP: TDataSetProvider
    DataSet = TicketsSDS
    Left = 152
    Top = 475
  end
  object TicketsCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TicketsDSP'
    Left = 168
    Top = 475
    object TicketsCDStickets_id: TIntegerField
      FieldName = 'tickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TicketsCDSdetails: TStringField
      FieldName = 'details'
      Size = 15
    end
  end
  object TicketsDS: TDataSource
    DataSet = TicketsCDS
    Left = 184
    Top = 475
  end
  object TrainCategoriesSds: TSQLDataSet
    CommandText = 'select * from traincategories order by category'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 123
    Top = 589
  end
  object TransferTypesSDS: TSQLDataSet
    CommandText = 'select * from transfertypes order by transfercode'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 136
    Top = 523
  end
  object TransferTypesDSP: TDataSetProvider
    DataSet = TransferTypesSDS
    Left = 152
    Top = 523
  end
  object TransferTypesCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TransferTypesDSP'
    Left = 168
    Top = 523
    object TransferTypesCDStransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object TransferTypesCDStransfer: TStringField
      FieldName = 'transfer'
      Size = 25
    end
    object TransferTypesCDStransfercode: TStringField
      FieldName = 'transfercode'
      Size = 3
    end
  end
  object TransferTypesDS: TDataSource
    DataSet = TransferTypesCDS
    Left = 184
    Top = 523
  end
  object TrainCategoriesDsp: TDataSetProvider
    DataSet = TrainCategoriesSds
    Left = 144
    Top = 587
  end
  object TrainCategoriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TrainCategoriesDsp'
    Left = 168
    Top = 587
    object TrainCategoriesCdstraincategories_id: TIntegerField
      FieldName = 'traincategories_id'
    end
    object TrainCategoriesCdscategory: TStringField
      FieldName = 'category'
      Size = 50
    end
    object TrainCategoriesCdsdefaultorder: TIntegerField
      FieldName = 'defaultorder'
    end
    object TrainCategoriesCdssectorfare: TBooleanField
      FieldName = 'sectorfare'
    end
  end
  object TrainCategoriesDS: TDataSource
    DataSet = TrainCategoriesCds
    Left = 192
    Top = 587
  end
  object ClassSds: TSQLDataSet
    CommandText = 
      'SELECT Class_id, class, code, tickets_id FROM class ORDER BY cla' +
      'ss'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 136
    Top = 640
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 152
    Top = 643
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 176
    Top = 640
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
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 208
    Top = 640
  end
  object CompanySds: TSQLDataSet
    CommandText = 'select * from companies order by [name]'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 264
    Top = 112
  end
  object CompanyDsp: TDataSetProvider
    DataSet = CompanySds
    Left = 280
    Top = 112
  end
  object CompanyCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CompanyDsp'
    Left = 296
    Top = 112
    object CompanyCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CompanyCdsname: TStringField
      FieldName = 'name'
      Size = 50
    end
    object CompanyCdsdefaultcompany: TIntegerField
      FieldName = 'defaultcompany'
    end
    object CompanyCdspan: TStringField
      FieldName = 'pan'
    end
    object CompanyCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object CompanyCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
  end
  object CompanyDS: TDataSource
    DataSet = CompanyCds
    Left = 312
    Top = 112
  end
  object SupplementsSds: TSQLDataSet
    CommandText = 
      'select supplements_id, supplement '#13#10'from supplements'#13#10'order by s' +
      'upplement'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 264
    Top = 168
  end
  object SupplementsDsp: TDataSetProvider
    DataSet = SupplementsSds
    Left = 280
    Top = 168
  end
  object SupplementsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SupplementsDsp'
    Left = 296
    Top = 168
    object SupplementsCdssupplements_id: TIntegerField
      FieldName = 'supplements_id'
    end
    object SupplementsCdssupplement: TStringField
      FieldName = 'supplement'
      Size = 50
    end
  end
  object SupplementsDS: TDataSource
    DataSet = SupplementsCds
    Left = 312
    Top = 168
  end
  object VoucherSDS: TSQLDataSet
    CommandText = 'select "vouchers_id", "voucherno", "yearref" from "vouchers"'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 264
    Top = 324
  end
  object VoucherDSP: TDataSetProvider
    DataSet = VoucherSDS
    Left = 280
    Top = 324
  end
  object VoucherCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherDSP'
    Left = 296
    Top = 324
    object VoucherCDSvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VoucherCDSvoucherno: TIntegerField
      FieldName = 'voucherno'
    end
    object VoucherCDSyearref: TIntegerField
      FieldName = 'yearref'
    end
  end
  object VoucherDS: TDataSource
    DataSet = VoucherCDS
    Left = 312
    Top = 324
  end
  object RoomTypeSds: TSQLDataSet
    CommandText = 'roomtypes'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 264
    Top = 368
  end
  object RoomTypeDsp: TDataSetProvider
    DataSet = RoomTypeSds
    Left = 280
    Top = 368
  end
  object RoomTypeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RoomTypeDsp'
    Left = 296
    Top = 368
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
  end
  object RoomTypeDs: TDataSource
    DataSet = RoomTypeCds
    Left = 312
    Top = 368
  end
  object MealPlanSds: TSQLDataSet
    CommandText = 'mealplans'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 264
    Top = 424
  end
  object MealPlanDsp: TDataSetProvider
    DataSet = MealPlanSds
    Left = 280
    Top = 424
  end
  object MealPlanCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MealPlanDsp'
    Left = 296
    Top = 424
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
    Left = 312
    Top = 424
  end
  object AgentCitySds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT c.Cities_id, c.City  '#13#10'FROM Cities c, Addressboo' +
      'k a, AddressCategories ac  '#13#10'WHERE a.AddressBook_id = ac.Address' +
      'Book_id  '#13#10'AND ac.Categories_id = 1  '#13#10'AND c.Cities_id = a.Citie' +
      's_id  '#13#10'ORDER BY c.City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 264
    Top = 472
  end
  object AgentCityDsp: TDataSetProvider
    DataSet = AgentCitySds
    Left = 280
    Top = 472
  end
  object AgentCityCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentCityDsp'
    Left = 296
    Top = 472
    object AgentCityCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object AgentCityCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object AgentCityDs: TDataSource
    DataSet = AgentCityCds
    Left = 312
    Top = 472
  end
  object TourCodeSds: TSQLDataSet
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
      end>
    SQLConnection = SQLConnection
    Left = 264
    Top = 520
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 280
    Top = 520
  end
  object TourCodeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 296
    Top = 520
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
    Left = 312
    Top = 520
  end
  object PackagesSDS: TSQLDataSet
    CommandText = 
      'SELECT p.Packages_id, p.Package, a.Addressbook_id, a.Organisatio' +
      'n '#13#10'FROM Packages p'#13#10'LEFT JOIN Addressbook a ON p.addressbook_id' +
      ' = a.addressbook_id'#13#10'ORDER BY p.Package'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 264
    Top = 272
  end
  object PackagesDSP: TDataSetProvider
    DataSet = PackagesSDS
    Left = 280
    Top = 272
  end
  object PackagesCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PackagesDSP'
    Left = 296
    Top = 272
    object PackagesCDSPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object PackagesCDSPackage: TStringField
      FieldName = 'Package'
      Size = 50
    end
    object PackagesCDSAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object PackagesCDSOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
  end
  object PackagesDS: TDataSource
    DataSet = PackagesCDS
    Left = 312
    Top = 272
  end
  object ServicesSDS: TSQLDataSet
    CommandText = 
      'SELECT Services_id, Service, Description, Active FROM Services'#13#10 +
      'ORDER BY Service'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 264
    Top = 224
  end
  object ServicesDSP: TDataSetProvider
    DataSet = ServicesSDS
    Left = 280
    Top = 224
  end
  object ServicesCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ServicesDSP'
    Left = 296
    Top = 224
    object ServicesCDSServices_id: TIntegerField
      FieldName = 'Services_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ServicesCDSService: TStringField
      FieldName = 'Service'
      Size = 25
    end
    object ServicesCDSDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object ServicesCDSActive: TBooleanField
      FieldName = 'Active'
    end
  end
  object ServicesDS: TDataSource
    DataSet = ServicesCDS
    Left = 312
    Top = 224
  end
  object ServiceCitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state, country'#13#10'from cities c '#13#10'left joi' +
      'n states s on c.states_id = s.states_id'#13#10'left join countries on ' +
      'c.countries_id = countries.countries_id'#13#10'where cities_id in '#13#10'  ' +
      '(select cities_id from Services)'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 264
    Top = 576
  end
  object ServiceCitiesDsp: TDataSetProvider
    DataSet = ServiceCitiesSds
    Left = 280
    Top = 576
  end
  object ServiceCitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ServiceCitiesDsp'
    Left = 296
    Top = 576
    object IntegerField2: TIntegerField
      FieldName = 'cities_id'
    end
    object StringField2: TStringField
      FieldName = 'city'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'country'
      Size = 50
    end
    object StringField12: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object ServiceCitiesDS: TDataSource
    DataSet = ServiceCitiesCds
    Left = 312
    Top = 576
  end
  object WebUsersSDS: TSQLDataSet
    CommandText = 
      'select web_users_id, cast( (username +  '#39' - '#39'+ case when male = ' +
      '1 then '#39'Mr '#39' else '#39'Ms '#39' end '#13#10' +firstname + '#39' '#39'+lastname) as var' +
      'char) as web_user, username from web_users '#13#10'union all'#13#10'select 0' +
      ', cast('#39'<None>'#39' as varchar),cast('#39' '#39' as varchar)'#13#10'order by 3'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 264
    Top = 640
  end
  object WebUsersDSP: TDataSetProvider
    DataSet = WebUsersSDS
    Left = 272
    Top = 640
  end
  object WebUsersCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WebUsersDSP'
    Left = 288
    Top = 640
    object WebUsersCDSweb_users_id: TIntegerField
      FieldName = 'web_users_id'
    end
    object WebUsersCDSweb_user: TStringField
      FieldName = 'web_user'
      Size = 30
    end
    object WebUsersCDSusername: TStringField
      FieldName = 'username'
      Size = 30
    end
  end
  object WebUsersDS: TDataSource
    DataSet = WebUsersCDS
    Left = 304
    Top = 640
  end
  object SexSds: TSQLDataSet
    CommandText = 'select sex_id, sex, salutation from sex'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 376
    Top = 112
  end
  object SexDsp: TDataSetProvider
    DataSet = SexSds
    Left = 384
    Top = 112
  end
  object SexCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SexDsp'
    Left = 400
    Top = 112
    object SexCdssex_id: TIntegerField
      FieldName = 'sex_id'
    end
    object SexCdssex: TStringField
      FieldName = 'sex'
      Size = 1
    end
    object SexCdssalutation: TStringField
      FieldName = 'salutation'
      Size = 5
    end
  end
  object SexDS: TDataSource
    DataSet = SexCds
    Left = 416
    Top = 112
  end
  object LocalPaymentTypeSds: TSQLDataSet
    CommandText = 'select * from localPaymentTypes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 376
    Top = 160
  end
  object LocalPaymentTypeDsp: TDataSetProvider
    DataSet = LocalPaymentTypeSds
    Left = 384
    Top = 160
  end
  object LocalPaymentTypeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'LocalPaymentTypeDsp'
    Left = 400
    Top = 160
    object LocalPaymentTypeCdsLocalPaymentTypes_id: TIntegerField
      FieldName = 'LocalPaymentTypes_id'
    end
    object LocalPaymentTypeCdsLocalPayment: TStringField
      FieldName = 'LocalPayment'
    end
  end
  object LocalPaymentTypeDS: TDataSource
    DataSet = LocalPaymentTypeCds
    Left = 416
    Top = 160
  end
  object MasterCodeSds: TSQLDataSet
    CommandText = 
      'select masters_id, MasterCode,[name] from Masters'#13#10'ORDER BY Mast' +
      'erCode'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 384
    Top = 216
  end
  object MasterCodeDsp: TDataSetProvider
    DataSet = MasterCodeSds
    Left = 400
    Top = 216
  end
  object MasterCodeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterCodeDsp'
    Left = 416
    Top = 216
    object IntegerField7: TIntegerField
      FieldName = 'masters_id'
    end
    object StringField13: TStringField
      FieldName = 'MasterCode'
      Size = 50
    end
    object StringField14: TStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object MasterCodeDS: TDataSource
    DataSet = MasterCodeCds
    Left = 432
    Top = 216
  end
  object TourCode2Sds: TSQLDataSet
    CommandText = 
      'SELECT TourCodes_id, Tourcode '#13#10'FROM TourCodes'#13#10'ORDER BY TOURCOD' +
      'E'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 384
    Top = 272
  end
  object TourCode2Dsp: TDataSetProvider
    DataSet = TourCode2Sds
    Left = 400
    Top = 272
  end
  object TourCode2Cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCode2Dsp'
    Left = 416
    Top = 272
    object TourCode2CdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCode2CdsTourcode: TStringField
      FieldName = 'Tourcode'
      Size = 10
    end
  end
  object TourCode2Ds: TDataSource
    DataSet = TourCode2Cds
    Left = 432
    Top = 272
  end
  object InvoiceTypeDS: TDataSource
    DataSet = InvoiceTypeCds
    Left = 422
    Top = 328
  end
  object InvoiceTypeCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'InvoiceTypeDSP'
    Left = 416
    Top = 328
    object InvoiceTypeCdsInvoiceTypes_id: TIntegerField
      FieldName = 'InvoiceTypes_id'
    end
    object InvoiceTypeCdsType: TStringField
      FieldName = 'Type'
    end
  end
  object InvoiceTypeDSP: TDataSetProvider
    DataSet = InvoiceTypeSds
    Left = 400
    Top = 328
  end
  object InvoiceTypeSds: TSQLDataSet
    CommandText = 'SELECT InvoiceTypes_id, Type FROM InvoiceTypes'#13#10'ORDER BY Type'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 386
    Top = 327
  end
  object RoomSizeSds: TSQLDataSet
    CommandText = 'roomsizes'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 384
    Top = 392
  end
  object RoomSizeDsp: TDataSetProvider
    DataSet = RoomSizeSds
    Left = 400
    Top = 392
  end
  object RoomSizeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RoomSizeDsp'
    Left = 416
    Top = 392
    object RoomSizeCdsroomsizes_id: TIntegerField
      FieldName = 'roomsizes_id'
    end
    object RoomSizeCdsroomsize: TStringField
      FieldName = 'roomsize'
      Size = 10
    end
    object RoomSizeCdspax: TIntegerField
      FieldName = 'pax'
    end
  end
  object RoomSizeDS: TDataSource
    DataSet = RoomSizeCds
    Left = 432
    Top = 392
  end
  object AccountHeadsSds: TSQLDataSet
    CommandText = 'select * from AccountHeads Order By AccountHeadsNo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 384
    Top = 464
  end
  object AccountHeadsDsp: TDataSetProvider
    DataSet = AccountHeadsSds
    Left = 400
    Top = 464
  end
  object AccountHeadsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccountHeadsDsp'
    Left = 416
    Top = 464
    object AccountHeadsCdsaccountheads_id: TIntegerField
      FieldName = 'accountheads_id'
    end
    object AccountHeadsCdsaccountheadsno: TIntegerField
      FieldName = 'accountheadsno'
    end
    object AccountHeadsCdsdescription: TStringField
      FieldName = 'description'
      Size = 50
    end
    object AccountHeadsCdsfolios_id: TIntegerField
      FieldName = 'folios_id'
    end
    object AccountHeadsCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object AccountHeadsCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object AccountHeadsCdsactive: TBooleanField
      FieldName = 'active'
    end
  end
  object AccountHeadsDS: TDataSource
    DataSet = AccountHeadsCds
    Left = 432
    Top = 464
  end
  object DivisionSds: TSQLDataSet
    CommandText = 'select * from Divisions order by Division'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 392
    Top = 520
  end
  object DivisionDsp: TDataSetProvider
    DataSet = DivisionSds
    Left = 408
    Top = 520
  end
  object DivisionCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DivisionDsp'
    Left = 424
    Top = 520
    object DivisionCdsdivisions_id: TIntegerField
      FieldName = 'divisions_id'
    end
    object DivisionCdsdivision: TStringField
      FieldName = 'division'
    end
    object DivisionCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object DivisionCdsdefaultdivision: TBooleanField
      FieldName = 'defaultdivision'
    end
  end
  object DivisionDS: TDataSource
    DataSet = DivisionCds
    Left = 440
    Top = 520
  end
  object OfficeSds: TSQLDataSet
    CommandText = 'select * from offices order by offices'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 392
    Top = 576
  end
  object OfficeDsp: TDataSetProvider
    DataSet = OfficeSds
    Left = 408
    Top = 576
  end
  object OfficeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'OfficeDsp'
    Left = 424
    Top = 576
    object OfficeCdsoffices_id: TIntegerField
      FieldName = 'offices_id'
    end
    object OfficeCdsoffices: TStringField
      FieldName = 'offices'
      Size = 50
    end
    object OfficeCdsdefaultoffice: TBooleanField
      FieldName = 'defaultoffice'
    end
    object OfficeCdscompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
  end
  object OfficeDS: TDataSource
    DataSet = OfficeCds
    Left = 440
    Top = 576
  end
  object FitAgentsSds: TSQLDataSet
    CommandText = 'select * from FitAgents'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 392
    Top = 624
  end
  object FitAgentsDsp: TDataSetProvider
    DataSet = FitAgentsSds
    Left = 408
    Top = 624
  end
  object FitAgentsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FitAgentsDsp'
    Left = 424
    Top = 624
    object FitAgentsCdsFitAgents_id: TIntegerField
      FieldName = 'FitAgents_id'
    end
    object FitAgentsCdsFitAgent: TStringField
      FieldName = 'FitAgent'
      Size = 50
    end
  end
  object FitAgentsDs: TDataSource
    DataSet = FitAgentsCds
    Left = 440
    Top = 624
  end
  object DriveTypesSds: TSQLDataSet
    CommandText = 'select * from DriveTypes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 536
    Top = 112
  end
  object DriveTypesDsp: TDataSetProvider
    DataSet = DriveTypesSds
    Left = 552
    Top = 112
  end
  object DriveTypesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DriveTypesDsp'
    Left = 568
    Top = 112
    object DriveTypesCdsDriveTypes_id: TIntegerField
      FieldName = 'DriveTypes_id'
    end
    object DriveTypesCdsDriveType: TStringField
      FieldName = 'DriveType'
      Size = 50
    end
  end
  object DriveTypeDs: TDataSource
    DataSet = DriveTypesCds
    Left = 584
    Top = 112
  end
  object CarHireGroupsSds: TSQLDataSet
    CommandText = 'select * from CarHireGroups'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 536
    Top = 160
  end
  object CarHireGroupsDsp: TDataSetProvider
    DataSet = CarHireGroupsSds
    Left = 552
    Top = 160
  end
  object CarHireGroupsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CarHireGroupsDsp'
    Left = 568
    Top = 160
    object CarHireGroupsCdsCarHireGroups_id: TIntegerField
      FieldName = 'CarHireGroups_id'
    end
    object CarHireGroupsCdsCarHireGroup: TStringField
      FieldName = 'CarHireGroup'
      Size = 200
    end
    object CarHireGroupsCdsDefaultAgents_id: TIntegerField
      FieldName = 'DefaultAgents_id'
    end
  end
  object CarHireGroupsDs: TDataSource
    DataSet = CarHireGroupsCds
    Left = 584
    Top = 160
  end
  object ImageList1: TImageList
    Left = 272
    Top = 16
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF00D6D6D600E7E7E700F7F7
      F700FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005242F7005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF00DEA52900B584180084733900636B
      6B007B7B7B009C9C9C00BDBDBD00DEDEDE00EFEFEF00FFFFFF00FFFFFF00DEDE
      DE00F7F7F7000000000000000000000000002973B50000000800000008000029
      290052738C005AADD6006BBDF7007BB5CE008CA5CE0094B5DE00EFFFFF00D6DE
      FF00E7FFFF00CED6FF00DEF7FF005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005242F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A42FF00EFBD6B00F7D6AD00F7DEB500F7DE
      B500F7DEB500EFC67B00DEA529009C7B29007B6B42006B6B6B006B8C52004A7B
      29008C8C8C00DEDEDE00F7F7F700000000000000080000000800000010000000
      1000000021000000080000000000394A63008CA5CE006373940000000000739C
      CE005A84A5006B9CBD00A5BDDE005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000008000018102100211831000000
      10000000000000000000000000005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A42FF00EFCE9400E7BD6300F7E7C600F7E7
      C600F7E7C600F7DEC600F7DEBD00F7DEBD00EFD6B500ADA584008CBD63007BCE
      9C00638C2100947331008C8C8C00000000000000080000001000000008000000
      0000000008000000100000001000001039000000100010316300637394000010
      39008C94B5000000210031425A005A42FF000000000000000000000000000000
      000000000000000000000008000010101000524A6B00ADADCE00DEDEF700CED6
      EF00ADA5CE0000000000000000005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000810100000081000000000000000
      00000000000000000000000000005A42FF00EFCE9400F7CE9C00E7AD4200F7E7
      CE00F7E7CE00F7E7CE00F7E7CE00F7E7CE00B5AD9C0063AD21007BCE8C0073CE
      8C007BCE940084A531006B6B6B00FFFFFF000000080000000800000000000000
      080000001000000010000000100000001000000010000010390000103900525A
      840094D6DE005A638400000021005A42FF000000000000000000000000000000
      000000000000080808004A4A6300D6D6FF00EFF7FF00F7FFFF00FFFFFF00E7E7
      EF00F7FFFF00BDC6CE00000000005A42FF000000000000000000000000000000
      00000000000000000000000000000821BD000810C6001842FF00101029000000
      00000000000000000000000000005A42FF00EFCE9400F7D69C00F7DEB500DEAD
      3100FFEFDE00FFEFDE00FFEFDE00C6B5AD004AA50000A5DEA5006BC6730073C6
      7B0073CE84007BCE8C0042632900D6D6D6000000080000003900000021000000
      080000001000000010000000210000002100001094001852DE00639CFF006BB5
      FF0073A5FF008CADD600295A9C005A42FF000000000000000000000000000000
      000018183100948CBD00D6D6FF00EFF7FF00F7FFFF00EFEFFF007B6BBD005A42
      940042397300EFE7FF00000000005A42FF000000000000000000080808000821
      BD000810520000081000000810000010DE000821EF001831FF001018B500945A
      18001018180000000000000000005A42FF00EFCE9400F7D6A500F7DEB500F7E7
      C600DEA52900FFF7EF00FFF7EF00FFF7EF00BDCE9C0052A531008CCE84006BC6
      6B006BC67B00529C210052942100F7F7F70018314A005A636B00AD9C8C00A5AD
      AD009CA5A500A5B5BD001018290031395200EFEFFF00FFFFFF00FFFFFF00DEF7
      FF00EFFFFF00EFFFFF00DEE7FF005A42FF000000000000000000000000003131
      5A00A59CC600CECEF700EFE7FF00E7E7EF00FFFFFF008C73CE008473C6005242
      8C0021105200CECEE700000000005A42FF0000000000000000000010D6000821
      D6000821FF00A5ADC600D6EFF7000829D600294AFF000018F700DE841800EF84
      1800D673180021211800000000005A42FF00EFCE9400F7D6A500F7DEB500F7E7
      C600FFEFD600E7BD5A00FFFFF700FFFFF700FFFFF700BDBDB500A5C6840063BD
      63006BC66B00F7E7CE006B6B6B00FFFFFF005A638400A5B5BD008CADAD006394
      940094A5B50094949C00EFF7F700FFF7FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF0000000000081010004A427300ADAD
      DE00BDADEF00E7D6FF00F7EFFF00FFFFFF00ADADDE007B73CE00847BCE005242
      8C00000021008C8C9C00000000005A42FF0000000000000000000021E7001831
      EF000818E7006BD6EF0063CEEF00D6E7EF00BDCED600FFAD1800FFA52900FFA5
      2100FF9C2100DE842100000000005A42FF00EFCE9400F7D6A500F7DEB500F7E7
      C600F7E7CE00C6B56B00CEA53900E7AD4200CEB5730073940000ADD6940063BD
      4A00529C2900FFEFD6008C848400F7F7F700395A9C000000BD000008F7000008
      F700CEDEEF001029FF000008FF00316BD600314AE700104AFF001873FF00638C
      F700638CF700639CFF00849CFF005A42FF00181829005A4A9C00AD9CDE00C6CE
      E7009C94CE0000001000FFFFFF00C6B5E7005239A50052399400392973003129
      6B004A427B0021183100000000005A42FF0000000000000000005A4A4A003952
      EF00D6E7E700CEEFF700EFFFFF00EFFFFF00F7FFF700FFBD3900FFAD2900FFAD
      2900F7A53100FFAD3100212118005A42FF00EFCE9400F7D6A500F7DEB500E7B5
      5A00C6E7EF00BDE7FF00ADD6EF0094ADC6007BA59C00428C000063BD31005AB5
      3100EFEFDE00FFF7E700847B6300F7F7F700001094000008F7000008F700ADBD
      EF00C6E7FF000008FF000008F7000008F7001029FF000039FF000042FF006B9C
      BD0073A5CE00215A8400EFFFFF005A42FF004231840000005200847BB5006B6B
      8C00000000009C9CAD00FFFFFF001000730021108C0010008400000052000000
      00008C7BB50000000000000000005A42FF000000000000000000BD731800EFFF
      FF00EFF7F700949C94005A6B6300212118005A6363004A525200946B2900FFC6
      3900FFAD2900F7A53100080808005A42FF00EFCE9400F7D69C00D6BD6B00D6EF
      FF0063AD29005AA531005AA521004A9C00008CB563006BBD210052A50800CEAD
      3900FFFFF700FFFFF700846B4A00F7F7F7000010100010180000001010000000
      08000000100010180000101800004242210063739400FFFFFF000042FF005284
      CE008CB5D60010528C00EFFFFF005A42FF000000000000000000525273008C84
      AD0052527300FFFFFF004A4273000000730021108C0010007300000000000000
      00005252730000000000000000005A42FF000000000000000000B5844200DED6
      AD000000000000080000D6DEDE0031424200D6DEDE0008100000182118003939
      2100FFBD390042393100000000005A42FF00DEAD3900E7F7FF00EFF7FF00E7F7
      FF00E7F7FF00D6EFEF00BDDEBD0094BD8400B5D6BD00D6EFFF00D6EFFF00D6EF
      FF00D6AD3900FFFFFF00846B4A00F7F7F7001010180000291800002929002942
      2100001010000000100000000800000800007B737B00FFF7FF000029E700427B
      D60084BDDE00084A7300E7E7FF005A42FF00000000004A427300A59CDE00B5B5
      D600FFFFFF00CECEF7006352AD005242A5005242A50029217B00000000003129
      52000000000000000000000000005A42FF00000000000000000010181800CE94
      2100B5C6CE0000080800ADBDBD00EFF7EF003142390018211800212921001831
      29004A4A4A0000000000000000005A42FF00EFD69C009CC6BD0084CEFF0084CE
      FF0084CEFF0084CEFF0084CEFF0084CEFF0084CEFF0084CEFF008CD6FF0084C6
      FF0084CEFF00BDAD5A009C8C6300FFFFFF001018290000101000002918002942
      210000000800000008000000000000000800737B9400EFFFFF000018EF005AAD
      FF007BB5FF005A8CFF00106BFF005A42FF00C6BDEF00BDB5DE00EFEFFF00F7F7
      FF00DED6F7009484D6008473C6008C7BCE006B5AA5006B5A9C005A4A84000000
      00000000000000000000000000005A42FF000000000000000000000000000008
      08007B7B6300C6CECE00F7F7FF000821FF007384E70084949400395252003131
      31000000000000000000000000005A42FF000000000000000000D6AD4A008CD6
      FF0094D6FF0094D6FF009CD6FF009CDEFF00A5DEFF00ADDEFF00ADDEFF00B5DE
      FF00BDCEBD00CEAD6300FFFFFF0000000000001010000008D600001063000008
      84000008840000107B0010316300001063007B84F700A5C6FF00106BFF005A94
      FF00B5E7FF00DEF7FF00FFFFFF005A42FF00F7EFFF00FFFFFF00EFEFFF00EFEF
      F700EFEFFF00DEE7EF00CED6EF00D6D6F7006B6B9C0000000000000000000000
      00000000000000000000000000005A42FF000000000000000000000000000000
      00000000000000000000312929008C9CEF00B5C6F70094A5D600080808000000
      00000000000000000000000000005A42FF00000000000000000000000000FFF7
      EF00CEB55A00BDE7FF00C6E7FF00C6EFFF00CEEFFF00CEEFFF00D6E7DE00CEA5
      4200F7F7F7000000000000000000000000000000000018218C000008E7000008
      9C004A63CE000008F7000008FF000018FF007394FF00FFFFFF00FFFFFF00E7E7
      E700394A630000101000000000005A42FF00948CC6006B63A500BDB5F700EFE7
      FF00D6CEFF00C6BDE70000003900000000000000000000000000000000000000
      00000000000000000000000000005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A42FF000000000000000000000000000000
      000000000000EFCE8C00E7DEBD00F7FFFF00F7F7EF00CEA53900F7F7F7000000
      000000000000000000000000000000000000000000000000000000000800295A
      9C008C94B500DEDEFF00E7FFF700C6CEDE0052525A0010101800000000000000
      00000000000000000000000000005A42FF00EFEFFF00E7DEFF00847BC6003129
      6B00000010000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00EFEFEF00D6D6D600CECECE00D6D6D600DEDEDE00F7F7F7000000
      0000000000000000000000000000000000005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42FF005A42
      FF005A42FF005A42FF005A42FF005A42FF00FFD68C00FFEF8C00FFDE8C00FFD6
      9C00FFD67B00FFDE7B00FFDE8400FFE79C00FFFFCE00FFFFA500FFE79C00FFEF
      C600FFF7D600FFFFDE00FFF7D6005A42FF0000000000EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00000000000000000000000000FFFFFF00E7E7
      E700947B7B008C101800AD2121009C0000009C000000732929006B6B6B00BDBD
      BD00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFD68C00FFE78C00FFDE8C00FFD6
      8C00FFD67B00FFDE8400FFD68400FFE7AD00FFFFE700FFFF6B00FFE79C00FFE7
      C600FFFFDE00FFF7CE00FFF7D6005A42FF000000000000000000EFEFEF00EFEF
      EF0000000000ADADAD0000000000EFEFEF00EFEFEF0000000000ADADAD00ADAD
      AD00ADADAD00ADADAD00000000000000000000000000FFFFFF00C6BDBD009C00
      00009C0000009C000000FFD68400DE9C94009C0000009C0000009C0000007318
      18008C8C8C00F7F7F7000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFD68400FFD68400FFD68400FFD6
      9400FFDE8C00FFD68400FFD66300FFF7DE00FFF7A500FFE77B00FFD69400FFDE
      BD00FFF7D600FFFFD600FFF7D6005A42FF000000000000000000000000000000
      000000000000ADADAD0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEC6C6009C0000009C00
      00009C0000009C000000CE6B6300FFDEA500FFD68C00AD2118009C0000009C00
      00008C0808008C8C8C00F7F7F70000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000029181000A5948C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFD66B00FFBD8400FFCE8C00FFE7
      8C00FFD66B00FFC68C00FFE77300FFEFCE00FFD67300FFE77300FFCE9400FFD6
      AD00FFF7B500FFF7DE00FFF7D6005A42FF000000000000000000000000000000
      000000000000ADADAD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7009C0000009C0000009C00
      00009C000000B5313100FFF7D600FFEFD600FFEFBD00FFDE94009C0000009C00
      00009C00000073181800BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006363520031291000088CB50000637B0000738C00218CB5007BE7FF000008
      100000081000B5ADAD00FFFFFF005A42FF00FFD67300EF845A00FFCEA500FFE7
      8400FFEFBD0000000000F7D69C00FFCEAD00FFD69C00FFDE7B00FFD68400FFCE
      9400FFEF9C00FFEFBD00FFF7CE005A42FF000000000000000000EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF0000000000ADADAD00ADAD
      AD00ADADAD00ADADAD000000000000000000A5313100A5080800AD181000AD21
      1000AD211800FFFFF700FFFFF700FFFFEF00FFF7DE00FFE7B500FFCE8C009C00
      00009C0000009C0000006B6B6B00F7F7F700FFFFFF00FFFFFF00FFFFFF000039
      2900291810005A4239000873940000527300106B8C0000526B00000000000000
      000000000000000000007B7B7B005A42FF00FFD673000000000000000000FFF7
      AD00F7C67B0000000000000000000000000000000000FFE77B00FFDE8400FFCE
      8C00FFDE9C00FFDE9C00FFE7AD005A42FF000000000000000000EFEFEF000000
      000000000000000000000063CE00EFEFEF00EFEFEF0000000000000000000000
      000000000000000000000000000000000000B5211800BD392100C64A3100C652
      3100C6523100FFEFE700FFFFFF00FFFFFF00FFF7EF00FFEFC600C65A31009C00
      00009C000000BD525200845A5A00DEDEDE00FFFFFF000000000000314A000029
      3100393939000000000042ADB5008CD6C600ADEFE700A5E7FF00A5E7FF008CDE
      FF0000000000AD9C5A00395242005A42FF00FFC66B0084631800000000000000
      0000FFDEC6000000000000000000FFCE7300FFDEA500FFDE8C00FFCE8400FFCE
      8400FFCE9400FFDE8C00FFE78C005A42FF000000000000000000EFEFEF00EFEF
      EF000000000000000000EFEFEF00EFEFEF00EFEFEF00000000000063CE000063
      CE000063CE000063CE000000000000000000C6523100D66B4200DE7B4A00DE8C
      5200EFBD9C00E7AD9400FFFFF700FFFFF700E7B59C00A51008009C0000009C00
      00009C000000FFFFFF00EFE7DE00D6D6D60039393900004A6B0000395A000042
      52000000000031BDCE0042185A00BDB58C00FFFFF700BDCEBD0094DEEF000000
      000000313100FFFFFF00004A63005A42FF00FFCE7B00FFEFBD00000000000000
      0000000000000000000000103100FFCEA500FFC69400FFCE8C00FFCE9400FFC6
      7B00FFCE8C00FFE78400FFDE8C005A42FF00000000000000000000000000EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00000000000063CE000063CE000063
      CE000063CE00000000000000000000000000D67B4A00E79C5A00EFAD6B00FFE7
      C600FFF7E700EFAD6300F7D6B500CE633900CE5A3900B5312100A50808009C00
      00009C000000FFFFF700FFFFEF00CECECE0000313100004A5A00105A73003163
      7B009CF7F70042B5C6006BDEDE00ADEFE700BDEFFF009CE7FF00B5EFFF00CEE7
      FF00FFFFFF00219CCE00A5BD94005A42FF00FFC68400FFD66B006B4A18000000
      0000000000000000000000000000000000000000000000000000F7AD3900FFC6
      7300FFDE7B00FFD68400FFD694005A42FF000000000000000000000000000000
      0000EFEFEF00EFEFEF00EFEFEF0000000000000000000063CE000063CE000063
      CE0000000000000000000000000000000000EFA56300FFC67300FFFFEF00E7BD
      A500FFDEA500FFF7E700FFC67300EFA56300D67B4A00C64A3100AD2110009C00
      00009C000000FFF7EF00FFF7DE00D6D6D60010636300105A730073847B00B5F7
      FF00F7FFEF00FFFFFF00E7FFF700DEFFEF00D6F7D600FFFFF700FFFFFF00BDEF
      FF005AC6F700A5D6FF00CECEB5005A42FF00FFCE6B00FFD68400FFE7CE000000
      0000000000000000000000000000000000000000000000000000FFF7A500FFE7
      7B00FFE77B00FFD68400FFCE8C005A42FF000000000000000000000000000000
      000000000000EFEFEF000000000000000000ADADAD000063CE000063CE000000
      000000000000000000000000000000000000F7BD7300FFDE9C00FFFFFF00FFFF
      FF00EFCEB500FFEFD600FFDE9C00F7C67300E7945A00CE633900B5312100A500
      0000B5424200FFF7D600C69C8C00EFEFEF00B5C6C6004A524200CEE7CE000000
      0000000000000000000063635200ADAD8C004A9C9C006BCEE70031BDD60063B5
      AD00C6CECE00F7F7F700FFFFFF005A42FF00FFD67300FFDE7B00FFCE8C000000
      000000000000000000000000000039420000CEDEAD00D6EFB500FFFF7B00FFE7
      7B00FFD67300FFD68400FFD684005A42FF000000000000000000000000000000
      0000EFEFEF0000000000EFEFEF0000000000ADADAD0000000000000000000000
      000000000000000000000000000000000000FFD68400FFF7EF00FFFFFF00FFFF
      FF00FFFFF700FFF7E700E7BD8C00FFD68400EFA56300D6734A00BD422900A510
      0800CE7B7B00A5080800947B7B00FFFFFF00FFFFFF008C8C6300FFFFFF007B7B
      7B006363630084848400CECECE00FFFFFF00FFFFFF0031291000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFD67B00FFDE7B00FFD67B005A18
      000010080000F7FFC600FFE7AD00FFD68400FFD67B00FFDE7B00FFCE8400FFCE
      8400FFD68C00FFDE7B00EFFF73005A42FF00000000000000000000000000EFEF
      EF00EFEFEF0000000000EFEFEF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFF7EF00FFF7E700FFFFF700FFFF
      EF00FFF7E700FFF7D600FFEFBD00E7A56300EFAD6B00DE845200EFBDA500FFEF
      C600EFBD8400B5392900E7E7E70000000000FFFFFF00FFFFFF00D6D6D600B5BD
      B5009CA5940084846B009CA59400848C7300C6CEC600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFC67B00FFE77300FFE79C000000
      0000FFE7D600FFE78400FFCE8C00FFCE8C00FFCE8400FFD68400FFCE7B00FFCE
      8C00FFCE8400FFD68400CEE7A5005A42FF000000000000000000000000000000
      0000EFEFEF0000000000EFEFEF00000000000063CE0000000000000000000000
      00000000000000000000000000000000000000000000FFEFCE00FFF7E700FFF7
      DE00FFF7D600F7D6B500FFE7B500FFD6A500E7945200D67B4A00BD422900A510
      08009C000000C6BDBD00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFC67B00FFDE7300FFEF9C000000
      0000E7BD9400FFDE8400FFCE8C00FFCE8C00FFCE8C00FFD68400FFD68400FFD6
      9400FFD67B00FFD68400CEE7A5005A42FF000000000000000000000000000000
      000000000000EFEFEF00000000000063CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFEFD600FFEF
      C600FFE7B500FFE7A500FFCE8C00FFD68400E79C5A00D66B4200BD392100A508
      0800CEC6C600FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00FFD67B00FFDE8400FFDE6B00F7E7
      AD00FFCE7B00FFDE8C00FFD69400FFD68C00FFCE8C00FFCE8C00FFCE8C00FFCE
      8400FFE77B00FFDE7B00D6EFAD005A42FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFF7
      EF00FFDE9400FFD68400FFD68400E7A55A00DE845200C65A3100B5524200F7F7
      F70000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005A42FF00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000007FF0000000000000007000000000000
      0001000000000000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C001000000000000
      E007000000000000F81F00000000000000000000F01F000000000000C0070000
      0000800180030000000080018001000000008001000100000000800100000000
      000000000000000000008001000000000000C003000000000000E00700000000
      0000E00F000000000000E01F000000000000C01F000100000000E03F80010000
      0000F07FC00300000000F8FFE00F000000000000000000000000000000000000
      000000000000}
  end
end
