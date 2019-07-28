inherited TrainStationsForm: TTrainStationsForm
  Left = 311
  Top = 146
  Caption = 'Train Stations'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object cxLabel1: TcxLabel
      Left = 8
      Top = 12
      Caption = 'City'
      Transparent = True
    end
    object cxCityLCMB: TcxLookupComboBox
      Left = 40
      Top = 10
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = CitiesDs
      Properties.OnEditValueChanged = cxCityLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 244
    end
  end
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Train Stations'
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'trainstations_id'
            object cxGrid1DBBandedTableView1TrainStations_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'trainstations_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 126
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Station: TcxGridDBBandedColumn
              Caption = 'Station'
              DataBinding.FieldName = 'station'
              SortIndex = 1
              SortOrder = soAscending
              Width = 218
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1RailwayCode: TcxGridDBBandedColumn
              Caption = 'Railway Code'
              DataBinding.FieldName = 'railwaycode'
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1StationName: TcxGridDBBandedColumn
              Caption = 'Station Name'
              DataBinding.FieldName = 'stationname'
              Width = 142
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'cities_id'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1In_Use: TcxGridDBBandedColumn
              Caption = 'In Use'
              DataBinding.FieldName = 'in_use'
              Width = 127
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Flag1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Flag1'
              Visible = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DefaultOrder: TcxGridDBBandedColumn
              Caption = 'Order No'
              DataBinding.FieldName = 'DefaultOrder'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Width = 117
              Position.BandIndex = 0
              Position.ColIndex = 1
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
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM TrainStations'#13#10'WHERE Cities_id = :Ciites_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Ciites_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdstrainstations_id: TIntegerField
      FieldName = 'trainstations_id'
    end
    object MasterCdsstation: TStringField
      FieldName = 'station'
      Size = 50
    end
    object MasterCdsrailwaycode: TStringField
      FieldName = 'railwaycode'
    end
    object MasterCdsstationname: TStringField
      FieldName = 'stationname'
      Size = 50
    end
    object MasterCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCdsin_use: TBooleanField
      FieldName = 'in_use'
    end
    object MasterCdsFlag1: TIntegerField
      FieldName = 'Flag1'
    end
    object MasterCdsDefaultOrder: TIntegerField
      FieldName = 'DefaultOrder'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  object CitiesSds: TSQLDataSet
    CommandText = 'SELECT * FROM Cities ORDER BY City'
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
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 120
    Top = 24
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 128
    Top = 24
    object CitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 360
    Top = 2
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 374
    Top = 3
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 392
    Top = 2
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
    Left = 404
    Top = 2
  end
end
