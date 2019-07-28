inherited TrialForm: TTrialForm
  Left = 211
  Top = 311
  Height = 408
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 374
    inherited KeyIdDBText: TDBText
      DataSource = MasterDS
    end
    object DBGrid1: TDBGrid
      Left = 32
      Top = 48
      Width = 625
      Height = 297
      DataSource = MasterDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'citycode'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'city'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'oneliner'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'countries_id'
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 272
      Top = 392
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  inherited SQLDataSet: TSQLDataSet
    CommandText = 
      'select cities_id, citycode, countries_id, oneliner, city from ci' +
      'ties'
    SQLConnection = BackOfficeDataModule.SQLConnection1
    object SQLDataSetcities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object SQLDataSetcitycode: TStringField
      FieldName = 'citycode'
      Size = 4
    end
    object SQLDataSetcountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object SQLDataSetoneliner: TStringField
      FieldName = 'oneliner'
      Size = 250
    end
    object SQLDataSetcity: TStringField
      FieldName = 'city'
      Size = 50
    end
  end
  inherited MasterCDS: TClientDataSet
    IndexFieldNames = 'cities_id'
    object MasterCDScities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCDScitycode: TStringField
      FieldName = 'citycode'
      Size = 4
    end
    object MasterCDScountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object MasterCDSoneliner: TStringField
      FieldName = 'oneliner'
      Size = 250
    end
    object MasterCDScity: TStringField
      FieldName = 'city'
      Size = 50
    end
  end
end
