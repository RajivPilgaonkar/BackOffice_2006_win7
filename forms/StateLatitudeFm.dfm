inherited StateLatitudeForm: TStateLatitudeForm
  Left = 443
  Top = 26
  Caption = 'State Latitude'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'State Latitude'
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'states_id'
            OptionsData.Appending = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            object cxGrid1DBBandedTableView1States_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'states_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1State: TcxGridDBBandedColumn
              Caption = 'State'
              DataBinding.FieldName = 'state'
              Options.Editing = False
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Latitude: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Latitude'
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Longitude: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Longitude'
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Countries_id: TcxGridDBBandedColumn
              Caption = 'Country'
              DataBinding.FieldName = 'countries_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 150
              Properties.KeyFieldNames = 'Countries_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Country'
                end>
              Properties.ListSource = CountriesDs
              Options.Editing = False
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 4
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
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'states'
    Left = 632
    Top = 384
  end
  inherited MasterDsp: TDataSetProvider
    Left = 662
    Top = 384
  end
  inherited MasterCds: TClientDataSet
    Left = 695
    Top = 384
    object MasterCdsstatecode: TStringField
      FieldName = 'statecode'
      FixedChar = True
      Size = 3
    end
    object MasterCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
    object MasterCdsstates_id: TIntegerField
      FieldName = 'states_id'
    end
    object MasterCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object MasterCdsprintstate: TBooleanField
      FieldName = 'printstate'
    end
    object MasterCdswriteup: TMemoField
      FieldName = 'writeup'
      BlobType = ftMemo
    end
    object MasterCdsoneliner: TStringField
      FieldName = 'oneliner'
      Size = 250
    end
    object MasterCdsgeneralinfo: TMemoField
      FieldName = 'generalinfo'
      BlobType = ftMemo
    end
    object MasterCdsWebWriteUp: TMemoField
      FieldName = 'WebWriteUp'
      BlobType = ftMemo
    end
    object MasterCdsCentralCities_id: TIntegerField
      FieldName = 'CentralCities_id'
    end
    object MasterCdsLatitude: TFMTBCDField
      FieldName = 'Latitude'
      Precision = 18
      Size = 9
    end
    object MasterCdsLongitude: TFMTBCDField
      FieldName = 'Longitude'
      Precision = 18
      Size = 9
    end
    object MasterCdsurl: TStringField
      FieldName = 'url'
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
    Left = 725
    Top = 384
  end
  object CountriesSds: TSQLDataSet
    CommandText = 
      'SELECT c.Countries_id, c.Country '#13#10'FROM Countries c'#13#10'ORDER BY c.' +
      'Country'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 121
  end
  object CountriesDsp: TDataSetProvider
    DataSet = CountriesSds
    Left = 72
    Top = 121
  end
  object CountriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CountriesDsp'
    Left = 104
    Top = 121
    object CountriesCdsCountries_id: TIntegerField
      FieldName = 'Countries_id'
    end
    object CountriesCdsCountry: TStringField
      FieldName = 'Country'
      Size = 50
    end
  end
  object CountriesDs: TDataSource
    DataSet = CountriesCds
    Left = 136
    Top = 121
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
