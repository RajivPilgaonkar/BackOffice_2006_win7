inherited TrainCategoriesForm: TTrainCategoriesForm
  Left = 131
  Top = 25
  Width = 1109
  Height = 730
  Caption = 'Train Categories'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 281
    Width = 1101
  end
  inherited Panel1: TPanel
    Width = 1101
    object Label1: TLabel
      Left = 10
      Top = 15
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object cxWefLCMB: TcxLookupComboBox
      Left = 41
      Top = 13
      Properties.KeyFieldNames = 'Wef'
      Properties.ListColumns = <
        item
          FieldName = 'Wef'
        end>
      Properties.ListSource = WefDs
      Properties.OnEditValueChanged = cxWefLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 145
    end
  end
  inherited Panel2: TPanel
    Top = 655
    Width = 1101
    inherited cxButtonUtilities: TcxButton
      DropDownMenu = PopupMenu1
    end
    inherited cxDBLabelKeyId_Master: TcxDBLabel
      Left = 868
      DataBinding.DataField = 'traincategories_id'
    end
    inherited cxButtonClose: TcxButton
      Left = 1016
    end
    inherited cxDBLabelKeyId_Detail1: TcxDBLabel
      Left = 869
      DataBinding.DataField = 'trainsectorfaresindia_id'
    end
    inherited cxDBLabelKeyId_Detail2: TcxDBLabel
      Left = 941
      Top = 3
      DataBinding.DataField = 'trainfaresindia_id'
      DataBinding.DataSource = Detail2Ds
    end
  end
  inherited Panel3: TPanel
    Width = 1101
    Height = 240
    inherited Splitter2: TSplitter
      Left = 321
      Height = 238
    end
    inherited cxPageControl1: TcxPageControl
      Width = 320
      Height = 238
      ClientRectBottom = 232
      ClientRectRight = 314
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Category'
        inherited cxGrid1: TcxGrid
          Width = 311
          Height = 206
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'traincategories_id'
            object cxGrid1DBBandedTableView1traincategories_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'traincategories_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1defaultorder: TcxGridDBBandedColumn
              Caption = 'Order No'
              DataBinding.FieldName = 'defaultorder'
              SortIndex = 0
              SortOrder = soAscending
              Width = 60
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1category: TcxGridDBBandedColumn
              Caption = 'Category'
              DataBinding.FieldName = 'category'
              SortIndex = 1
              SortOrder = soAscending
              Width = 219
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1sectorfare: TcxGridDBBandedColumn
              DataBinding.FieldName = 'sectorfare'
              Visible = False
              Width = 109
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
        end
      end
    end
    inherited cxPageControl3: TcxPageControl
      Left = 324
      Width = 776
      Height = 238
      ClientRectBottom = 232
      ClientRectRight = 770
      inherited cxTabSheet3: TcxTabSheet
        Caption = 'Km-wise'
        inherited cxGrid3: TcxGrid
          Width = 767
          Height = 206
          inherited cxGridDBBandedTableView1: TcxGridDBBandedTableView
            object cxGridDBBandedTableView1trainfaresindia_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'trainfaresindia_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1kms: TcxGridDBBandedColumn
              Caption = 'Kms'
              DataBinding.FieldName = 'kms'
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1wef: TcxGridDBBandedColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1wet: TcxGridDBBandedColumn
              Caption = 'Wet'
              DataBinding.FieldName = 'wet'
              Width = 84
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1traincategories_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'traincategories_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1t1c_ac: TcxGridDBBandedColumn
              Caption = '1C A/C'
              DataBinding.FieldName = 't1c_ac'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1t2c_ac_2t: TcxGridDBBandedColumn
              Caption = '2C A/C 2T'
              DataBinding.FieldName = 't2c_ac_2t'
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1t1c: TcxGridDBBandedColumn
              Caption = '1C'
              DataBinding.FieldName = 't1c'
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1t2c_ac_3t: TcxGridDBBandedColumn
              Caption = '2C A/C 3T'
              DataBinding.FieldName = 't2c_ac_3t'
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ac_cc: TcxGridDBBandedColumn
              Caption = 'A/C Chair'
              DataBinding.FieldName = 'ac_cc'
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1sleeper: TcxGridDBBandedColumn
              Caption = 'Sleeper'
              DataBinding.FieldName = 'sleeper'
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1t2c: TcxGridDBBandedColumn
              Caption = '2C'
              DataBinding.FieldName = 't2c'
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ac_cce: TcxGridDBBandedColumn
              Caption = 'Ex CC'
              DataBinding.FieldName = 'ac_cce'
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1addressbook_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'addressbook_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Flag: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Flag'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 289
    Width = 1101
    Height = 366
    inherited cxPageControl2: TcxPageControl
      Width = 1099
      Height = 364
      ClientRectBottom = 358
      ClientRectRight = 1093
      inherited cxTabSheet2: TcxTabSheet
        Caption = 'Station-wise'
        inherited cxGrid2: TcxGrid
          Width = 1090
          Height = 332
          inherited cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            object cxGrid2DBBandedTableView1trainsectorfaresindia_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'trainsectorfaresindia_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1traincategories_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'traincategories_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1from_stations_id: TcxGridDBBandedColumn
              Caption = 'From Station'
              DataBinding.FieldName = 'from_stations_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'TrainStations_id'
              Properties.ListColumns = <
                item
                  Width = 200
                  FieldName = 'StationName'
                end
                item
                  Width = 100
                  FieldName = 'RailwayCode'
                end>
              Properties.ListSource = StationDs
              Properties.OnEditValueChanged = cxGrid2DBBandedTableView1from_stations_idPropertiesEditValueChanged
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1from_cities_id: TcxGridDBBandedColumn
              Caption = 'From City'
              DataBinding.FieldName = 'from_cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'Cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'City'
                end>
              Properties.ListSource = CitiesDs
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1to_stations_id: TcxGridDBBandedColumn
              Caption = 'To Station'
              DataBinding.FieldName = 'to_stations_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'TrainStations_id'
              Properties.ListColumns = <
                item
                  Width = 200
                  FieldName = 'StationName'
                end
                item
                  Width = 100
                  FieldName = 'RailwayCode'
                end>
              Properties.ListSource = StationDs
              Properties.OnEditValueChanged = cxGrid2DBBandedTableView1to_stations_idPropertiesEditValueChanged
              SortIndex = 1
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1to_cities_id: TcxGridDBBandedColumn
              Caption = 'To City'
              DataBinding.FieldName = 'to_cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'Cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'City'
                end>
              Properties.ListSource = CitiesDs
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1wef: TcxGridDBBandedColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              Width = 97
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1wet: TcxGridDBBandedColumn
              Caption = 'Wet'
              DataBinding.FieldName = 'wet'
              Width = 84
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1t1c: TcxGridDBBandedColumn
              Caption = '1C'
              DataBinding.FieldName = 't1c'
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1t1c_ac: TcxGridDBBandedColumn
              Caption = '1C A/C'
              DataBinding.FieldName = 't1c_ac'
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1t2c: TcxGridDBBandedColumn
              Caption = '2C'
              DataBinding.FieldName = 't2c'
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1t2c_ac_2t: TcxGridDBBandedColumn
              Caption = '2C A/C 2T'
              DataBinding.FieldName = 't2c_ac_2t'
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1t2c_ac_3t: TcxGridDBBandedColumn
              Caption = '2C A/C 3T'
              DataBinding.FieldName = 't2c_ac_3t'
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1ac_cc: TcxGridDBBandedColumn
              Caption = 'A/C Chair'
              DataBinding.FieldName = 'ac_cc'
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1ac_cce: TcxGridDBBandedColumn
              Caption = 'Ex CC'
              DataBinding.FieldName = 'ac_cce'
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1sleeper: TcxGridDBBandedColumn
              Caption = 'Sleeper'
              DataBinding.FieldName = 'sleeper'
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1cost: TcxGridDBBandedColumn
              DataBinding.FieldName = 'cost'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1addressbook_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'addressbook_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM TrainCategories'
    CommandType = ctQuery
    Left = 408
  end
  inherited MasterDsp: TDataSetProvider
    Left = 438
  end
  inherited MasterCds: TClientDataSet
    AfterScroll = MasterCdsAfterScroll
    Left = 471
    object MasterCdstraincategories_id: TIntegerField
      FieldName = 'traincategories_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdscategory: TStringField
      FieldName = 'category'
      Size = 50
    end
    object MasterCdsdefaultorder: TIntegerField
      FieldName = 'defaultorder'
    end
    object MasterCdssectorfare: TBooleanField
      FieldName = 'sectorfare'
    end
  end
  inherited MasterDs: TDataSource
    Left = 501
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM TrainSectorFaresIndia'#13#10'WHERE TrainCategories_id = ' +
      ':TrainCategories_id'#13#10'AND Wef = :Wef'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'TrainCategories_id'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'Wef'
        ParamType = ptInput
      end>
    Left = 568
  end
  inherited Detail1Dsp: TDataSetProvider
    Left = 598
  end
  inherited Detail1Cds: TClientDataSet
    AfterInsert = Detail1CdsAfterInsert
    Left = 631
    object Detail1Cdstrainsectorfaresindia_id: TIntegerField
      FieldName = 'trainsectorfaresindia_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdstraincategories_id: TIntegerField
      FieldName = 'traincategories_id'
    end
    object Detail1Cdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Detail1Cdswet: TSQLTimeStampField
      FieldName = 'wet'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Detail1Cdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object Detail1Cdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object Detail1Cdst1c: TFloatField
      FieldName = 't1c'
      DisplayFormat = '#,##0'
    end
    object Detail1Cdst1c_ac: TFloatField
      FieldName = 't1c_ac'
      DisplayFormat = '#,##0'
    end
    object Detail1Cdst2c: TFloatField
      FieldName = 't2c'
      DisplayFormat = '#,##0'
    end
    object Detail1Cdst2c_ac_2t: TFloatField
      FieldName = 't2c_ac_2t'
      DisplayFormat = '#,##0'
    end
    object Detail1Cdst2c_ac_3t: TFloatField
      FieldName = 't2c_ac_3t'
      DisplayFormat = '#,##0'
    end
    object Detail1Cdsac_cc: TFloatField
      FieldName = 'ac_cc'
      DisplayFormat = '#,##0'
    end
    object Detail1Cdsac_cce: TFloatField
      FieldName = 'ac_cce'
      DisplayFormat = '#,##0'
    end
    object Detail1Cdssleeper: TFloatField
      FieldName = 'sleeper'
      DisplayFormat = '#,##0'
    end
    object Detail1Cdscost: TFloatField
      FieldName = 'cost'
    end
    object Detail1Cdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object Detail1Cdsfrom_stations_id: TIntegerField
      FieldName = 'from_stations_id'
    end
    object Detail1Cdsto_stations_id: TIntegerField
      FieldName = 'to_stations_id'
    end
  end
  inherited Detail1Ds: TDataSource
    Left = 661
  end
  inherited Detail2Sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM TrainFaresIndia'#13#10'WHERE TrainCategories_id = :Train' +
      'Categories_id'#13#10'AND Wef = :Wef'#13#10'ORDER BY Kms'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'TrainCategories_id'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'Wef'
        ParamType = ptInput
      end>
    Left = 760
  end
  inherited Detail2Dsp: TDataSetProvider
    Left = 790
  end
  inherited Detail2Cds: TClientDataSet
    AfterInsert = Detail2CdsAfterInsert
    Left = 823
    object Detail2Cdstrainfaresindia_id: TIntegerField
      FieldName = 'trainfaresindia_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail2Cdskms: TIntegerField
      FieldName = 'kms'
    end
    object Detail2Cdstraincategories_id: TIntegerField
      FieldName = 'traincategories_id'
    end
    object Detail2Cdst1c: TBCDField
      FieldName = 't1c'
      DisplayFormat = '#,##0'
      Precision = 10
      Size = 2
    end
    object Detail2Cdst1c_ac: TBCDField
      FieldName = 't1c_ac'
      DisplayFormat = '#,##0'
      Precision = 10
      Size = 2
    end
    object Detail2Cdst2c: TBCDField
      FieldName = 't2c'
      DisplayFormat = '#,##0'
      Precision = 10
      Size = 2
    end
    object Detail2Cdst2c_ac_2t: TBCDField
      FieldName = 't2c_ac_2t'
      DisplayFormat = '#,##0'
      Precision = 10
      Size = 2
    end
    object Detail2Cdst2c_ac_3t: TBCDField
      FieldName = 't2c_ac_3t'
      DisplayFormat = '#,##0'
      Precision = 10
      Size = 2
    end
    object Detail2Cdsac_cc: TBCDField
      FieldName = 'ac_cc'
      DisplayFormat = '#,##0'
      Precision = 10
      Size = 2
    end
    object Detail2Cdsac_cce: TBCDField
      FieldName = 'ac_cce'
      DisplayFormat = '#,##0'
      Precision = 10
      Size = 2
    end
    object Detail2Cdssleeper: TBCDField
      FieldName = 'sleeper'
      DisplayFormat = '#,##0'
      Precision = 10
      Size = 2
    end
    object Detail2Cdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object Detail2Cdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Detail2Cdswet: TSQLTimeStampField
      FieldName = 'wet'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Detail2CdsFlag: TIntegerField
      FieldName = 'Flag'
    end
  end
  inherited Detail2Ds: TDataSource
    Left = 853
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT Cities_id, City FROM Cities WHERE Countries_id = 200 ORDE' +
      'R BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 184
    Top = 360
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    UpdateMode = upWhereKeyOnly
    Left = 214
    Top = 360
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    BeforeInsert = Detail1CdsBeforeInsert
    BeforeEdit = Detail1CdsBeforeEdit
    BeforePost = Detail1CdsBeforePost
    AfterPost = Detail1CdsAfterPost
    BeforeDelete = Detail1CdsBeforeDelete
    AfterDelete = Detail1CdsAfterDelete
    Left = 247
    Top = 360
    object CitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CitiesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 277
    Top = 360
  end
  object StationSds: TSQLDataSet
    CommandText = 
      'SELECT TrainStations_id, StationName, RailwayCode'#13#10'FROM TrainSta' +
      'tions'#13#10'WHERE StationName IS NOT NULL'#13#10'ORDER BY StationName'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 400
  end
  object StationDsp: TDataSetProvider
    DataSet = StationSds
    UpdateMode = upWhereKeyOnly
    Left = 222
    Top = 400
  end
  object StationCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'StationDsp'
    BeforeInsert = Detail1CdsBeforeInsert
    BeforeEdit = Detail1CdsBeforeEdit
    BeforePost = Detail1CdsBeforePost
    AfterPost = Detail1CdsAfterPost
    BeforeDelete = Detail1CdsBeforeDelete
    AfterDelete = Detail1CdsAfterDelete
    Left = 255
    Top = 400
    object StationCdsTrainStations_id: TIntegerField
      FieldName = 'TrainStations_id'
    end
    object StationCdsStationName: TStringField
      FieldName = 'StationName'
      Size = 50
    end
    object StationCdsRailwayCode: TStringField
      FieldName = 'RailwayCode'
    end
  end
  object StationDs: TDataSource
    DataSet = StationCds
    Left = 285
    Top = 400
  end
  object WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT Wef FROM TrainSectorFaresIndia WHERE Wef IS NOT ' +
      'NULL '#13#10'UNION'#13#10'SELECT DISTINCT Wef FROM TrainFaresIndia WHERE Wef' +
      ' IS NOT NULL '#13#10'ORDER BY Wef DESC'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 56
    Top = 24
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    UpdateMode = upWhereKeyOnly
    Left = 86
    Top = 24
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WefDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    AfterScroll = MasterCdsAfterScroll
    Left = 119
    Top = 24
    object WefCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
  end
  object WefDs: TDataSource
    DataSet = WefCds
    Left = 149
    Top = 24
  end
  object PopupMenu1: TPopupMenu
    Left = 52
    Top = 636
    object CopyCosts1: TMenuItem
      Caption = 'Copy Costs'
      OnClick = CopyCosts1Click
    end
  end
end
