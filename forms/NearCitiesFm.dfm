inherited NearCitiesForm: TNearCitiesForm
  Left = 331
  Top = 128
  Width = 489
  Height = 550
  Caption = 'Near Cities'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 481
  end
  inherited Panel2: TPanel
    Top = 475
    Width = 481
    inherited cxButtonClose: TcxButton
      Left = 376
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 300
    end
  end
  inherited Panel3: TPanel
    Width = 481
    Height = 434
    inherited cxPageControl1: TcxPageControl
      Width = 479
      Height = 432
      ClientRectBottom = 426
      ClientRectRight = 473
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Near Cities'
        inherited cxGrid1: TcxGrid
          Width = 470
          Height = 400
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'NearCities_id'
            object cxGrid1DBBandedTableView1NearCities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NearCities_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn
              Caption = 'Order No'
              DataBinding.FieldName = 'OrderNo'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 134
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1MainCities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MainCities_id'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 137
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cities_id: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'Cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 150
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Options.Filtering = False
              Options.Sorting = False
              Width = 275
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM NearCities'#13#10'WHERE MainCities_id = :Cities_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    Left = 280
    Top = 368
  end
  inherited MasterDsp: TDataSetProvider
    Left = 310
    Top = 368
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 343
    Top = 368
    object MasterCdsNearCities_id: TIntegerField
      FieldName = 'NearCities_id'
    end
    object MasterCdsMainCities_id: TIntegerField
      FieldName = 'MainCities_id'
    end
    object MasterCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object MasterCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
  end
  inherited MasterDs: TDataSource
    Left = 373
    Top = 368
  end
  object CitiesDS: TDataSource
    DataSet = CitiesCds
    Left = 72
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
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 32
    Top = 120
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state, country'#13#10'from cities c '#13#10'left joi' +
      'n states s on c.states_id = s.states_id'#13#10'left join countries on ' +
      'c.countries_id = countries.countries_id'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 120
  end
end
