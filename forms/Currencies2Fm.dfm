inherited Currencies2Form: TCurrencies2Form
  Left = 347
  Top = 148
  Caption = 'Currencies'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Currencies'
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            object cxGrid1DBBandedTableView1currencies_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'currencies_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1currencycode: TcxGridDBBandedColumn
              Caption = 'Code'
              DataBinding.FieldName = 'currencycode'
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1currency: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currency'
              SortIndex = 0
              SortOrder = soAscending
              Width = 244
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1symbol: TcxGridDBBandedColumn
              Caption = 'Symbol'
              DataBinding.FieldName = 'symbol'
              Width = 67
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1countries_id: TcxGridDBBandedColumn
              Caption = 'Country'
              DataBinding.FieldName = 'countries_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'Countries_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Country'
                end>
              Properties.ListSource = CountriesDs
              Width = 94
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1hdfccode: TcxGridDBBandedColumn
              Caption = 'Hdfc Code'
              DataBinding.FieldName = 'hdfccode'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 85
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1terminalid: TcxGridDBBandedColumn
              Caption = 'Terminal Id'
              DataBinding.FieldName = 'terminalid'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 94
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1merchantid: TcxGridDBBandedColumn
              Caption = 'Merchant Id'
              DataBinding.FieldName = 'merchantid'
              Options.Editing = False
              Options.Filtering = False
              Options.Grouping = False
              Width = 96
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'currencies'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
    object MasterCdscurrency: TStringField
      FieldName = 'currency'
      Size = 50
    end
    object MasterCdssymbol: TStringField
      FieldName = 'symbol'
      Size = 5
    end
    object MasterCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MasterCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object MasterCdsterminalid: TIntegerField
      FieldName = 'terminalid'
    end
    object MasterCdsmerchantid: TIntegerField
      FieldName = 'merchantid'
    end
    object MasterCdshdfccode: TStringField
      FieldName = 'hdfccode'
      Size = 8
    end
  end
  object CountriesSds: TSQLDataSet
    CommandText = 'SELECT Countries_id, Country FROM Countries'#13#10'ORDER BY Country'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 272
  end
  object CountriesDsp: TDataSetProvider
    DataSet = CountriesSds
    UpdateMode = upWhereKeyOnly
    Left = 222
    Top = 272
  end
  object CountriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CountriesDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 255
    Top = 272
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
    Left = 285
    Top = 272
  end
end
