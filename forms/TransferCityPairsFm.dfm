inherited TransferCityPairsForm: TTransferCityPairsForm
  Left = 766
  Top = 56
  Width = 457
  Height = 547
  Caption = 'Transfer City Pairs'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 441
  end
  inherited Panel2: TPanel
    Top = 468
    Width = 441
    inherited cxButtonClose: TcxButton
      Left = 360
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 284
    end
  end
  inherited Panel3: TPanel
    Width = 441
    Height = 427
    inherited cxPageControl1: TcxPageControl
      Width = 439
      Height = 425
      ClientRectBottom = 419
      ClientRectRight = 433
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Transfer City Pairs'
        inherited cxGrid1: TcxGrid
          Width = 430
          Height = 393
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'TransferCityPairs_id'
            object cxGrid1DBBandedTableView1TransferCityPairs_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TransferCityPairs_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FromCities_id: TcxGridDBBandedColumn
              Caption = 'From City'
              DataBinding.FieldName = 'FromCities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 150
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ToCities_id: TcxGridDBBandedColumn
              Caption = 'To City'
              DataBinding.FieldName = 'ToCities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 150
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Options.Filtering = False
              Width = 200
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn
              Caption = 'Modified By'
              DataBinding.FieldName = 'ModifiedByUsers_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AdmUsers_id'
              Properties.ListColumns = <
                item
                  FieldName = 'uid'
                end>
              Properties.ListSource = UsersDs
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'TransferCityPairs'
    Left = 264
    Top = 376
  end
  inherited MasterDsp: TDataSetProvider
    Left = 294
    Top = 376
  end
  inherited MasterCds: TClientDataSet
    Left = 327
    Top = 376
    object MasterCdsTransferCityPairs_id: TIntegerField
      FieldName = 'TransferCityPairs_id'
    end
    object MasterCdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object MasterCdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited MasterDs: TDataSource
    Left = 357
    Top = 376
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
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 10
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 206
    Top = 11
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 224
    Top = 10
    object UsersCdsAdmUsers_id: TIntegerField
      FieldName = 'AdmUsers_id'
    end
    object UsersCdsuid: TStringField
      FieldName = 'uid'
      Size = 8
    end
  end
  object UsersDs: TDataSource
    DataSet = UsersCds
    Left = 236
    Top = 10
  end
end
