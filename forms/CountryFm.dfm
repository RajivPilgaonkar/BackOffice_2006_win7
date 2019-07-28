inherited CountryForm: TCountryForm
  Left = 496
  Top = 32
  Width = 723
  Height = 548
  Caption = 'Countries'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 707
  end
  inherited Panel2: TPanel
    Top = 469
    Width = 707
    inherited cxButtonClose: TcxButton
      Left = 424
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 348
    end
  end
  inherited Panel3: TPanel
    Width = 707
    Height = 428
    inherited cxPageControl1: TcxPageControl
      Width = 705
      Height = 426
      ClientRectBottom = 420
      ClientRectRight = 699
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Countries'
        object Splitter1: TSplitter [0]
          Left = 0
          Top = 307
          Width = 696
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        inherited cxGrid1: TcxGrid
          Width = 696
          Height = 307
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'countries_id'
            object cxGrid1DBBandedTableView1Countries_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'countries_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Country: TcxGridDBBandedColumn
              Caption = 'Country'
              DataBinding.FieldName = 'country'
              SortIndex = 0
              SortOrder = soAscending
              Width = 282
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ISD: TcxGridDBBandedColumn
              Caption = 'ISD'
              DataBinding.FieldName = 'isd'
              Options.Filtering = False
              Options.Sorting = False
              Width = 102
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1GMT: TcxGridDBBandedColumn
              Caption = 'GMT'
              DataBinding.FieldName = 'gmt'
              Options.Filtering = False
              Options.Sorting = False
              Width = 86
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CountryCode: TcxGridDBBandedColumn
              Caption = 'Code'
              DataBinding.FieldName = 'countrycode'
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 92
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Currencies_id: TcxGridDBBandedColumn
              Caption = 'Currency'
              DataBinding.FieldName = 'currencies_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 300
              Properties.KeyFieldNames = 'currencies_id'
              Properties.ListColumns = <
                item
                  Width = 100
                  FieldName = 'currencycode'
                end
                item
                  Width = 200
                  FieldName = 'currency'
                end>
              Properties.ListSource = CurrenciesDS
              Visible = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 144
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1url: TcxGridDBBandedColumn
              DataBinding.FieldName = 'url'
              Visible = False
              Width = 132
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1active: TcxGridDBBandedColumn
              DataBinding.FieldName = 'active'
              Width = 48
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
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 310
          Align = alBottom
          DataBinding.DataField = 'writeup'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Height = 84
          Width = 696
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'countries'
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object MasterCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
    object MasterCdsisd: TIntegerField
      FieldName = 'isd'
    end
    object MasterCdsgmt: TStringField
      FieldName = 'gmt'
      Size = 254
    end
    object MasterCdscountrycode: TStringField
      FieldName = 'countrycode'
      FixedChar = True
      Size = 2
    end
    object MasterCdswriteup: TMemoField
      FieldName = 'writeup'
      BlobType = ftMemo
    end
    object MasterCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MasterCdsurl: TStringField
      FieldName = 'url'
      FixedChar = True
    end
    object MasterCdsactive: TBooleanField
      FieldName = 'active'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  object CurrenciesSds: TSQLDataSet
    CommandText = 
      'select currencies_id, currency, currencycode'#13#10'from currencies'#13#10'o' +
      'rder by currency'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 264
  end
  object CurrenciesDsp: TDataSetProvider
    DataSet = CurrenciesSds
    Left = 218
    Top = 264
  end
  object CurrenciesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrenciesDsp'
    Left = 243
    Top = 264
    object CurrenciesCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CurrenciesCdscurrency: TStringField
      FieldName = 'currency'
      Size = 50
    end
    object CurrenciesCdscurrencycode: TStringField
      FieldName = 'currencycode'
      FixedChar = True
      Size = 3
    end
  end
  object CurrenciesDS: TDataSource
    DataSet = CurrenciesCds
    Left = 268
    Top = 264
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
