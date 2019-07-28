object CopyFlightsForm: TCopyFlightsForm
  Left = 108
  Top = 186
  Width = 825
  Height = 336
  Caption = 'Copy Flights'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 817
    Height = 261
    Align = alClient
    DataSource = FlightsDS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'flights_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'days'
        Title.Caption = 'Days'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'wef'
        Title.Caption = 'WEF'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'wet'
        Title.Caption = 'WET'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'flightno'
        Title.Caption = 'FlightNo'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AirCraftTypeLookUp'
        Title.Caption = 'AirCraft'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stops'
        Title.Caption = 'Stops'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'domestic'
        Title.Caption = 'Domestic'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'from_cities_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'to_cities_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'aircrafttypes_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'departure'
        Title.Caption = 'Departure'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'arrival'
        Title.Caption = 'Arrival'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'overnight'
        Title.Caption = 'OverNight'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FromCityLookUp'
        Title.Caption = 'From City'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ToCityLookUp'
        Title.Caption = 'To City'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jcl'
        Title.Caption = 'J Class'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ycl'
        Title.Caption = 'Y Class'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jcl_usd'
        Title.Caption = 'J Class $'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ycl_usd'
        Title.Caption = 'Y Class $'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DaysOfOperation'
        Title.Caption = 'Days'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'duration'
        Title.Caption = 'Duration'
        Width = 100
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 261
    Width = 817
    Height = 41
    Align = alBottom
    TabOrder = 1
    object CancelBB: TBitBtn
      Left = 146
      Top = 10
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkCancel
    end
    object OkBB: TBitBtn
      Left = 676
      Top = 10
      Width = 75
      Height = 25
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 1
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object FlightsQry: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Flights_id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT flights_id,days,flightno, stops, domestic, wef, cast(null' +
        ' as datetime) as wet, '
      
        '               overnight, from_cities_id, to_cities_id, aircraft' +
        'types_id, departure,'
      '               arrival, duration, jcl, ycl, jcl_usd, ycl_usd'
      'FROM FlightSectorFaresIndia'
      'WHERE Flights_id= :Flights_id'
      '')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 268
    Top = 79
  end
  object FlightsDSP: TDataSetProvider
    DataSet = FlightsQry
    Left = 300
    Top = 79
  end
  object FlightsCDS: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'flights_id'
    MasterFields = 'flights_id'
    MasterSource = FlightSectorForm.FlightDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'FlightsDSP'
    Left = 304
    Top = 47
    object FlightsCDSflights_id: TIntegerField
      FieldName = 'flights_id'
    end
    object FlightsCDSdays: TSmallintField
      FieldName = 'days'
    end
    object FlightsCDSflightno: TStringField
      FieldName = 'flightno'
      Size = 50
    end
    object FlightsCDSstops: TSmallintField
      FieldName = 'stops'
    end
    object FlightsCDSdomestic: TBooleanField
      FieldName = 'domestic'
    end
    object FlightsCDSwef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object FlightsCDSwet: TSQLTimeStampField
      FieldName = 'wet'
    end
    object FlightsCDSovernight: TBooleanField
      FieldName = 'overnight'
    end
    object FlightsCDSfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object FlightsCDSto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object FlightsCDSaircrafttypes_id: TIntegerField
      FieldName = 'aircrafttypes_id'
    end
    object FlightsCDSdeparture: TSQLTimeStampField
      FieldName = 'departure'
    end
    object FlightsCDSarrival: TSQLTimeStampField
      FieldName = 'arrival'
    end
    object FlightsCDSduration: TStringField
      FieldName = 'duration'
      Size = 254
    end
    object FlightsCDSjcl: TFMTBCDField
      FieldName = 'jcl'
      Precision = 15
    end
    object FlightsCDSycl: TFMTBCDField
      FieldName = 'ycl'
      Precision = 15
    end
    object FlightsCDSjcl_usd: TFMTBCDField
      FieldName = 'jcl_usd'
      Precision = 15
    end
    object FlightsCDSycl_usd: TFMTBCDField
      FieldName = 'ycl_usd'
      Precision = 15
    end
    object FlightsCDSFromCityLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'FromCityLookUp'
      LookupDataSet = FromCityCDS
      LookupKeyFields = 'Cities_id'
      LookupResultField = 'City'
      KeyFields = 'from_cities_id'
      Size = 80
      Lookup = True
    end
    object FlightsCDSToCityLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'ToCityLookUp'
      LookupDataSet = ToCityCDS
      LookupKeyFields = 'Cities_id'
      LookupResultField = 'City'
      KeyFields = 'to_cities_id'
      Size = 80
      Lookup = True
    end
    object FlightsCDSAirCraftTypeLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'AirCraftTypeLookUp'
      LookupDataSet = AirCraftTypeCDS
      LookupKeyFields = 'AircraftTypes_id'
      LookupResultField = 'Aircraft'
      KeyFields = 'aircrafttypes_id'
      Size = 80
      Lookup = True
    end
    object FlightsCDSDaysOfOperation: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysOfOperation'
      Size = 80
      Calculated = True
    end
  end
  object FlightsDS: TDataSource
    DataSet = FlightsCDS
    Left = 268
    Top = 47
  end
  object FromCityQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Cities_id, City FROM Cities'
      'WHERE Len(City) <> 0'
      'ORDER BY City')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 368
    Top = 80
  end
  object FromCityDSP: TDataSetProvider
    DataSet = FromCityQry
    Left = 392
    Top = 80
  end
  object FromCityCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'FromCityDSP'
    Left = 392
    Top = 56
    object FromCityCDSCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object FromCityCDSCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object ToCityQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Cities_id, City FROM Cities'
      'WHERE Len(City) <> 0'
      'ORDER BY City')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 440
    Top = 80
  end
  object ToCityDSP: TDataSetProvider
    DataSet = ToCityQry
    Left = 464
    Top = 80
  end
  object ToCityCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'ToCityDSP'
    Left = 464
    Top = 56
    object IntegerField1: TIntegerField
      FieldName = 'Cities_id'
    end
    object StringField1: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object AirCraftTypeQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT AircraftTypes_id, Aircraft FROM AircraftTypes'
      'ORDER BY Aircraft'
      '')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 504
    Top = 80
  end
  object AirCraftTypeDSP: TDataSetProvider
    DataSet = AirCraftTypeQry
    Left = 528
    Top = 80
  end
  object AirCraftTypeCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'AirCraftTypeDSP'
    Left = 528
    Top = 56
    object AirCraftTypeCDSAircraftTypes_id: TIntegerField
      FieldName = 'AircraftTypes_id'
    end
    object AirCraftTypeCDSAircraft: TStringField
      FieldName = 'Aircraft'
      Size = 10
    end
  end
end
