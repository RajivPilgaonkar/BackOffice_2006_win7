object ShortestDriveForm: TShortestDriveForm
  Left = 245
  Top = 15
  Width = 696
  Height = 480
  Caption = 'ShortestDriveForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 412
    Width = 688
    Height = 41
    Align = alBottom
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 65
    Align = alTop
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 4
      Top = 3
      Width = 257
      Height = 49
      Caption = 'From City'
      TabOrder = 0
      object cxFromCityLCMB: TcxLookupComboBox
        Left = 8
        Top = 18
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'cities_id'
        Properties.ListColumns = <
          item
            MinWidth = 150
            FieldName = 'city'
          end
          item
            MinWidth = 150
            FieldName = 'state'
          end>
        Properties.ListSource = FromCitiesDS
        Properties.ValidateOnEnter = False
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        Width = 241
      end
    end
    object GroupBox1: TGroupBox
      Left = 307
      Top = 4
      Width = 257
      Height = 49
      Caption = 'To City'
      TabOrder = 1
      object cxToCityLCMB: TcxLookupComboBox
        Left = 8
        Top = 18
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'cities_id'
        Properties.ListColumns = <
          item
            MinWidth = 150
            FieldName = 'city'
          end
          item
            MinWidth = 150
            FieldName = 'state'
          end>
        Properties.ListSource = FromCitiesDS
        Properties.ValidateOnEnter = False
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        Width = 241
      end
    end
  end
  object FromCitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state, country'#13#10'from cities c '#13#10'left joi' +
      'n states s on c.states_id = s.states_id'#13#10'left join countries on ' +
      'c.countries_id = countries.countries_id'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 120
    Top = 32
  end
  object FromCitiesDsp: TDataSetProvider
    DataSet = FromCitiesSds
    Left = 136
    Top = 32
  end
  object FromCitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FromCitiesDsp'
    Left = 152
    Top = 32
    object FromCitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object FromCitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object FromCitiesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
    object FromCitiesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object FromCitiesDS: TDataSource
    DataSet = FromCitiesCds
    Left = 168
    Top = 32
  end
  object ToCitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state, country'#13#10'from cities c '#13#10'left joi' +
      'n states s on c.states_id = s.states_id'#13#10'left join countries on ' +
      'c.countries_id = countries.countries_id'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 368
    Top = 24
  end
  object ToCitiesDsp: TDataSetProvider
    DataSet = ToCitiesSds
    Left = 384
    Top = 24
  end
  object ToCitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ToCitiesDsp'
    Left = 400
    Top = 24
    object IntegerField1: TIntegerField
      FieldName = 'cities_id'
    end
    object StringField1: TStringField
      FieldName = 'city'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'country'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object ToCitiesDS: TDataSource
    DataSet = ToCitiesCds
    Left = 416
    Top = 24
  end
end
