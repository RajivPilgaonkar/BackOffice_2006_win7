object ServiceCityAddForm: TServiceCityAddForm
  Left = 560
  Top = 282
  Width = 791
  Height = 122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 262
    Top = 8
    Width = 24
    Height = 13
    Caption = 'Wef'
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 775
    Height = 41
    Align = alBottom
    TabOrder = 3
    object cxButtonClose: TcxButton
      Left = 690
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 1
      OnClick = cxButtonCloseClick
    end
    object cxButton1: TcxButton
      Left = 317
      Top = 8
      Width = 140
      Height = 25
      Caption = 'Insert Service'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 5
      Top = 8
      Width = 140
      Height = 25
      Caption = 'Cancel Insert'
      TabOrder = 2
      OnClick = cxButton2Click
    end
  end
  object cxLabel3: TcxLabel
    Left = 11
    Top = 8
    Caption = 'Service City'
    Transparent = True
  end
  object cxServiceCityLcmb: TcxLookupComboBox
    Left = 89
    Top = 6
    Properties.DropDownWidth = 300
    Properties.KeyFieldNames = 'cities_id'
    Properties.ListColumns = <
      item
        FieldName = 'city'
      end>
    Properties.ListSource = ServiceCitiesDs
    Properties.OnEditValueChanged = cxServiceCityLcmbPropertiesEditValueChanged
    Style.Color = 15334910
    TabOrder = 0
    Width = 162
  end
  object cxLabel1: TcxLabel
    Left = 435
    Top = 8
    Caption = 'Service'
    Transparent = True
  end
  object cxServiceLCMB: TcxLookupComboBox
    Left = 489
    Top = 6
    Properties.DropDownWidth = 380
    Properties.KeyFieldNames = 'Services_id'
    Properties.ListColumns = <
      item
        MinWidth = 200
        FieldName = 'Description'
      end
      item
        MinWidth = 100
        FieldName = 'ServiceType'
      end
      item
        MinWidth = 80
        FieldName = 'Active'
      end>
    Properties.ListSource = ServiceDs
    Style.Color = 15334910
    TabOrder = 2
    Width = 256
  end
  object cxWefDateEdit: TcxDateEdit
    Left = 292
    Top = 7
    Style.Color = 15334910
    TabOrder = 1
    Width = 132
  end
  object ServiceCitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state'#13#10'from cities c '#13#10'left join states ' +
      's on c.states_id = s.states_id'#13#10'WHERE EXISTS (SELECT * FROM Serv' +
      'ices s '#13#10'WHERE s.Cities_id IS NOT NULL'#13#10'AND s.Cities_id = c.Citi' +
      'es_id)'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 136
    Top = 8
  end
  object ServiceCitiesDsp: TDataSetProvider
    DataSet = ServiceCitiesSds
    Left = 152
    Top = 8
  end
  object ServiceCitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ServiceCitiesDsp'
    Left = 168
    Top = 8
    object IntegerField8: TIntegerField
      FieldName = 'cities_id'
    end
    object StringField2: TStringField
      FieldName = 'city'
      Size = 50
    end
    object ServiceCitiesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object ServiceCitiesDs: TDataSource
    DataSet = ServiceCitiesCds
    Left = 184
    Top = 8
  end
  object ServiceSds: TSQLDataSet
    CommandText = 
      'SELECT Services_id, Service, Description, Active, '#13#10'  CASE WHEN ' +
      'Transfer = 1 THEN '#39'Transfer'#39' ELSE '#39'S/S'#39' END AS ServiceType, Citi' +
      'es_id'#13#10'FROM Services '#13#10'WHERE Service IS NOT NULL '#13#10'AND Cities_id' +
      ' = :Cities_id'#13#10'ORDER BY Service'
    DataSource = ServiceCitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 560
    Top = 4
  end
  object ServiceDsp: TDataSetProvider
    DataSet = ServiceSds
    UpdateMode = upWhereKeyOnly
    Left = 582
    Top = 4
  end
  object ServiceCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = ServiceCitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ServiceDsp'
    Left = 607
    Top = 4
    object ServiceCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
    object ServiceCdsService: TStringField
      FieldName = 'Service'
      Size = 25
    end
    object ServiceCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object ServiceCdsActive: TBooleanField
      FieldName = 'Active'
    end
    object ServiceCdsServiceType: TStringField
      FieldName = 'ServiceType'
      Size = 8
    end
    object ServiceCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object ServiceDs: TDataSource
    DataSet = ServiceCds
    Left = 629
    Top = 4
  end
end
