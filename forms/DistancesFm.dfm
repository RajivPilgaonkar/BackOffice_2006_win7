inherited DistancesForm: TDistancesForm
  Left = 457
  Top = 113
  Height = 618
  Caption = 'Distances'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 339
  end
  inherited Panel1: TPanel
    Height = 43
    object cxCityLcmb: TcxLookupComboBox
      Left = 69
      Top = 15
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          Width = 150
          FieldName = 'city'
        end
        item
          Width = 150
          FieldName = 'state'
        end>
      Properties.ListSource = CitiesDS
      Properties.OnEditValueChanged = cxCityLcmbPropertiesEditValueChanged
      Style.Color = clWindow
      TabOrder = 0
      Width = 150
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 16
      Caption = 'From City'
      Transparent = True
    end
    object cxReverseBtn: TcxButton
      Left = 664
      Top = 13
      Width = 137
      Height = 22
      Caption = 'Update All Reverse'
      TabOrder = 2
      OnClick = cxReverseBtnClick
    end
  end
  inherited Panel2: TPanel
    Top = 539
  end
  inherited Panel3: TPanel
    Top = 43
    Height = 296
    inherited cxPageControl1: TcxPageControl
      Height = 294
      ClientRectBottom = 288
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Distances'
        inherited cxGrid1: TcxGrid
          Height = 262
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'distances_id'
            object cxGrid1DBBandedTableView1Distances_id: TcxGridDBBandedColumn
              Caption = 'Distances_id'
              DataBinding.FieldName = 'distances_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 143
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1To_Cities_id: TcxGridDBBandedColumn
              Caption = 'To City'
              DataBinding.FieldName = 'to_cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  Width = 150
                  FieldName = 'city'
                end
                item
                  Width = 150
                  FieldName = 'state'
                end>
              Properties.ListSource = CitiesDS
              Options.SortByDisplayText = isbtOn
              SortIndex = 0
              SortOrder = soAscending
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Distance: TcxGridDBBandedColumn
              Caption = 'Distance'
              DataBinding.FieldName = 'distance'
              Options.Filtering = False
              Options.Sorting = False
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Time: TcxGridDBBandedColumn
              Caption = 'Time'
              DataBinding.FieldName = 'time'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Options.Filtering = False
              Options.Sorting = False
              Width = 59
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Drive: TcxGridDBBandedColumn
              Caption = 'Driveable'
              DataBinding.FieldName = 'drive'
              Options.Filtering = False
              Width = 71
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Via: TcxGridDBBandedColumn
              Caption = 'Via'
              DataBinding.FieldName = 'via'
              Options.Filtering = False
              Options.Sorting = False
              Width = 188
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Comments: TcxGridDBBandedColumn
              Caption = 'Comments'
              DataBinding.FieldName = 'comments'
              Options.Filtering = False
              Options.Sorting = False
              Width = 253
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Flag: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Flag'
              Visible = False
              Options.Editing = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 7
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
  inherited Panel4: TPanel
    Top = 347
    Height = 192
    inherited Splitter2: TSplitter
      Height = 190
    end
    inherited cxPageControl2: TcxPageControl
      Height = 190
      ClientRectBottom = 184
      inherited cxTabSheet2: TcxTabSheet
        Caption = 'State Crossings'
        inherited cxGrid2: TcxGrid
          Height = 158
          inherited cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'StateCrossings_id'
            object cxGrid2DBBandedTableView1StateCrossings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'StateCrossings_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 124
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1Distances_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Distances_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.FilteringFilteredItemsList = False
              Options.Sorting = False
              VisibleForCustomization = False
              Width = 107
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1States_id: TcxGridDBBandedColumn
              Caption = 'State'
              DataBinding.FieldName = 'States_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'states_id'
              Properties.ListColumns = <
                item
                  FieldName = 'state'
                end>
              Properties.ListSource = StatesDs
              Options.SortByDisplayText = isbtOn
              SortIndex = 0
              SortOrder = soAscending
              Width = 329
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn
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
            object cxGrid2DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
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
    inherited cxPageControl3: TcxPageControl
      Height = 190
      ClientRectBottom = 184
      inherited cxTabSheet3: TcxTabSheet
        Caption = 'City Crossings'
        inherited cxGrid3: TcxGrid
          Height = 158
          inherited cxGridDBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'CityCrossings_id'
            object cxGridDBBandedTableView1OrderNo: TcxGridDBBandedColumn
              Caption = 'Order No'
              DataBinding.FieldName = 'OrderNo'
              SortIndex = 0
              SortOrder = soAscending
              Width = 63
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1CityCrossings_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CityCrossings_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Distances_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Distances_id'
              Visible = False
              Options.Filtering = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Cities_id: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'Cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  Width = 150
                  FieldName = 'city'
                end
                item
                  Width = 150
                  FieldName = 'state'
                end>
              Properties.ListSource = CitiesDS
              Options.SortByDisplayText = isbtOn
              SortIndex = 1
              SortOrder = soAscending
              Width = 126
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1Duration: TcxGridDBBandedColumn
              Caption = 'Duration'
              DataBinding.FieldName = 'duration'
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Properties.UseCtrlIncrement = True
              Options.Filtering = False
              Options.Sorting = False
              Width = 71
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1DaysOfOperation: TcxGridDBBandedColumn
              Caption = 'Operates On'
              DataBinding.FieldName = 'DaysOfOperation'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
              Width = 151
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1DaysName: TcxGridDBBandedColumn
              Caption = 'Operates On'
              DataBinding.FieldName = 'DaysName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxGridDBBandedTableView1DaysNamePropertiesButtonClick
              Options.Filtering = False
              Options.Sorting = False
              Width = 111
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ModifiedByUsers_id: TcxGridDBBandedColumn
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
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM Distances'#13#10'WHERE From_Cities_id = :From_Cities_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'From_Cities_id'
        ParamType = ptInput
      end>
    Left = 368
  end
  inherited MasterDsp: TDataSetProvider
    Left = 398
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 431
    object MasterCdsdistances_id: TIntegerField
      FieldName = 'distances_id'
    end
    object MasterCdsdistance: TBCDField
      FieldName = 'distance'
      Precision = 5
      Size = 1
    end
    object MasterCdsvia: TStringField
      FieldName = 'via'
      Size = 255
    end
    object MasterCdsdrive: TBooleanField
      FieldName = 'drive'
    end
    object MasterCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object MasterCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object MasterCdstime: TStringField
      FieldName = 'time'
      Size = 254
    end
    object MasterCdsFlag: TIntegerField
      FieldName = 'Flag'
    end
    object MasterCdscomments: TStringField
      FieldName = 'comments'
      Size = 100
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited MasterDs: TDataSource
    Left = 461
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'SELECT * FROM StateCrossings'#13#10'WHERE Distances_id = :Distances_id'
    CommandType = ctQuery
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'distances_id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 528
  end
  inherited Detail1Dsp: TDataSetProvider
    Left = 558
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'Distances_id'
    MasterFields = 'distances_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Left = 591
    object Detail1CdsStateCrossings_id: TIntegerField
      FieldName = 'StateCrossings_id'
    end
    object Detail1CdsDistances_id: TIntegerField
      FieldName = 'Distances_id'
    end
    object Detail1CdsStates_id: TIntegerField
      FieldName = 'States_id'
    end
    object Detail1CdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object Detail1CdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited Detail1Ds: TDataSource
    Left = 621
  end
  inherited Detail2Sds: TSQLDataSet
    CommandText = 'SELECT * FROM CityCrossings'#13#10'WHERE Distances_id = :Distances_id'
    CommandType = ctQuery
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'distances_id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 680
    Top = 32
  end
  inherited Detail2Dsp: TDataSetProvider
    Left = 710
    Top = 32
  end
  inherited Detail2Cds: TClientDataSet
    IndexFieldNames = 'Distances_id'
    MasterFields = 'distances_id'
    MasterSource = MasterDs
    PacketRecords = 0
    AfterInsert = Detail2CdsAfterInsert
    OnCalcFields = Detail2CdsCalcFields
    Left = 743
    Top = 32
    object Detail2CdsCityCrossings_id: TIntegerField
      FieldName = 'CityCrossings_id'
    end
    object Detail2CdsDistances_id: TIntegerField
      FieldName = 'Distances_id'
    end
    object Detail2CdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object Detail2Cdsduration: TStringField
      FieldName = 'duration'
      Size = 5
    end
    object Detail2CdsDaysOfOperation: TIntegerField
      FieldName = 'DaysOfOperation'
    end
    object Detail2CdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Calculated = True
    end
    object Detail2CdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object Detail2CdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
    object Detail2CdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
  end
  inherited Detail2Ds: TDataSource
    Left = 773
    Top = 32
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state, country'#13#10'from cities c '#13#10'left joi' +
      'n states s on c.states_id = s.states_id'#13#10'left join countries on ' +
      'c.countries_id = countries.countries_id'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 232
    Top = 8
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 248
    Top = 8
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 264
    Top = 8
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
    Left = 280
    Top = 8
  end
  object StatesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'StatesDsp'
    Left = 56
    Top = 408
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
    Left = 72
    Top = 408
  end
  object StatesDsp: TDataSetProvider
    DataSet = StatesSds
    Left = 40
    Top = 408
  end
  object StatesSds: TSQLDataSet
    CommandText = 
      'select states_id, state, country'#13#10'from states s left join countr' +
      'ies  c on s.countries_id = c.countries_id'#13#10'order by state'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 24
    Top = 408
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 368
    Top = 122
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 382
    Top = 123
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 400
    Top = 122
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
    Left = 412
    Top = 122
  end
end
