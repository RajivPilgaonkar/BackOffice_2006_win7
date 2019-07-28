inherited HotelRankingForm: THotelRankingForm
  Left = 442
  Top = 25
  Caption = 'Hotel Ranking'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 22
      Height = 13
      Caption = 'City'
      Transparent = True
    end
    object Label2: TLabel
      Left = 352
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Category'
      Transparent = True
    end
    object cxCityLCMB: TcxLookupComboBox
      Left = 53
      Top = 14
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = CitiesDs
      Properties.OnEditValueChanged = cxCityLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 220
    end
    object cxCategoryLCMB: TcxLookupComboBox
      Left = 411
      Top = 14
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'categories_id'
      Properties.ListColumns = <
        item
          FieldName = 'description'
        end>
      Properties.ListSource = CategoryDs
      Properties.OnEditValueChanged = cxCategoryLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 220
    end
  end
  inherited Panel2: TPanel
    inherited cxDBLabelKeyId: TcxDBLabel
      DataBinding.DataField = 'addresscategories_id'
    end
  end
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Hotel Ranking'
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'addresscategories_id'
            OptionsData.Appending = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            object cxGrid1DBBandedTableView1addresscategories_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'addresscategories_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1addressbook_id: TcxGridDBBandedColumn
              Caption = 'Hotel'
              DataBinding.FieldName = 'addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Organisation'
                end>
              Properties.ListSource = AddrDs
              Options.Editing = False
              Options.SortByDisplayText = isbtOn
              SortIndex = 1
              SortOrder = soAscending
              Width = 475
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1categories_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'categories_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Ranking: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Ranking'
              SortIndex = 0
              SortOrder = soAscending
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
    CommandText = 
      'SELECT * FROM AddressCategories ac'#13#10'  WHERE EXISTS (SELECT * FRO' +
      'M addressbook a '#13#10'                 WHERE ac.addressbook_id = a.a' +
      'ddressbook_id'#13#10'                   AND a.cities_id = :cities_id)'#13 +
      #10'AND categories_id = :categories_id'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'categories_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsaddresscategories_id: TIntegerField
      FieldName = 'addresscategories_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdscategories_id: TIntegerField
      FieldName = 'categories_id'
    end
    object MasterCdsRanking: TIntegerField
      FieldName = 'Ranking'
    end
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT Cities_id, City FROM Cities'#13#10'WHERE Cities_id > 0'#13#10'ORDER B' +
      'Y City'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 112
    Top = 8
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    UpdateMode = upWhereKeyOnly
    Left = 142
    Top = 8
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 175
    Top = 8
    object CitiesCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object CitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 205
    Top = 8
  end
  object CategorySds: TSQLDataSet
    CommandText = 
      'SELECT categories_id, category, description'#13#10'FROM Categories'#13#10'WH' +
      'ERE InclHotelReport = 1'#13#10'ORDER BY Category'
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 528
    Top = 3
  end
  object CategoryDsp: TDataSetProvider
    DataSet = CategorySds
    Left = 544
    Top = 3
  end
  object CategoryCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CategoryDsp'
    Left = 560
    Top = 3
    object CategoryCdscategories_id: TIntegerField
      FieldName = 'categories_id'
    end
    object CategoryCdscategory: TStringField
      FieldName = 'category'
      Size = 5
    end
    object CategoryCdsdescription: TStringField
      FieldName = 'description'
      Size = 30
    end
  end
  object CategoryDs: TDataSource
    DataSet = CategoryCds
    Left = 576
    Top = 3
  end
  object AddrSds: TSQLDataSet
    CommandText = 
      'SELECT Addressbook_id, Organisation'#13#10'FROM Addressbook'#13#10'ORDER BY ' +
      'Organisation'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 520
    Top = 131
  end
  object AddrDsp: TDataSetProvider
    DataSet = AddrSds
    Left = 536
    Top = 131
  end
  object AddrCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AddrDsp'
    Left = 552
    Top = 131
    object AddrCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AddrCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 60
    end
  end
  object AddrDs: TDataSource
    DataSet = AddrCds
    Left = 568
    Top = 131
  end
end
