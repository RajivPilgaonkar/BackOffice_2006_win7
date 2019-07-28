inherited CentralTaxForm: TCentralTaxForm
  Left = 460
  Top = 46
  Caption = 'Central Taxes'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Country'
      Transparent = True
    end
    object Label2: TLabel
      Left = 312
      Top = 16
      Width = 22
      Height = 13
      Caption = 'Tax'
      Transparent = True
    end
    object cxCountryLCMB: TcxLookupComboBox
      Left = 69
      Top = 14
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Countries_id'
      Properties.ListColumns = <
        item
          FieldName = 'Country'
        end>
      Properties.ListSource = CountriesDs
      Properties.OnEditValueChanged = cxCountryLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 184
    end
    object cxTaxLCMB: TcxLookupComboBox
      Left = 347
      Top = 14
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Taxes_id'
      Properties.ListColumns = <
        item
          FieldName = 'Tax'
        end>
      Properties.ListSource = TaxesDs
      Properties.OnEditValueChanged = cxTaxLCMBPropertiesEditValueChanged
      TabOrder = 1
      Width = 302
    end
  end
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Central Taxes'
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.DetailKeyFieldNames = 'centraltaxes_id'
            object cxGrid1DBBandedTableView1centraltaxes_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'centraltaxes_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              SortIndex = 0
              SortOrder = soDescending
              Width = 102
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1wet: TcxGridDBBandedColumn
              Caption = 'Wet'
              DataBinding.FieldName = 'wet'
              SortIndex = 1
              SortOrder = soDescending
              Width = 119
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1tax: TcxGridDBBandedColumn
              Caption = 'Tax (%)'
              DataBinding.FieldName = 'tax'
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1taxes_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'taxes_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1taxamount: TcxGridDBBandedColumn
              Caption = 'Amount'
              DataBinding.FieldName = 'taxamount'
              Width = 105
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1fromrate: TcxGridDBBandedColumn
              Caption = 'From Rate'
              DataBinding.FieldName = 'fromrate'
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1torate: TcxGridDBBandedColumn
              Caption = 'To Rate'
              DataBinding.FieldName = 'torate'
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1countries_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'countries_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ac: TcxGridDBBandedColumn
              Caption = 'A/C'
              DataBinding.FieldName = 'ac'
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1non_ac: TcxGridDBBandedColumn
              Caption = 'Non A/C'
              DataBinding.FieldName = 'non_ac'
              Width = 61
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1star: TcxGridDBBandedColumn
              Caption = 'Star'
              DataBinding.FieldName = 'star'
              Position.BandIndex = 0
              Position.ColIndex = 11
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
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM CentralTaxes'#13#10'WHERE Taxes_id = :Taxes_id'#13#10'AND Coun' +
      'tries_id = :Countries_id'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Taxes_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Countries_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdscentraltaxes_id: TIntegerField
      FieldName = 'centraltaxes_id'
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdswet: TSQLTimeStampField
      FieldName = 'wet'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdstax: TBCDField
      FieldName = 'tax'
      DisplayFormat = '#,##0.0000%'
      Precision = 10
    end
    object MasterCdstaxes_id: TIntegerField
      FieldName = 'taxes_id'
    end
    object MasterCdsfromrate: TBCDField
      FieldName = 'fromrate'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdstorate: TBCDField
      FieldName = 'torate'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object MasterCdsac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCdsnon_ac: TBooleanField
      FieldName = 'non_ac'
    end
    object MasterCdsstar: TIntegerField
      FieldName = 'star'
    end
    object MasterCdstaxamount: TBCDField
      FieldName = 'taxamount'
      Precision = 12
      Size = 2
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  object CountriesSds: TSQLDataSet
    CommandText = 'SELECT Countries_id, Country'#13#10'FROM Countries'#13#10'ORDER BY Country'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 112
    Top = 8
  end
  object CountriesDsp: TDataSetProvider
    DataSet = CountriesSds
    UpdateMode = upWhereKeyOnly
    Left = 142
    Top = 8
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
    Left = 175
    Top = 8
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
    Left = 205
    Top = 8
  end
  object TaxesSds: TSQLDataSet
    CommandText = 'SELECT Taxes_id, Tax'#13#10'FROM Taxes'#13#10'ORDER BY Tax'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 392
    Top = 8
  end
  object TaxesDsp: TDataSetProvider
    DataSet = TaxesSds
    UpdateMode = upWhereKeyOnly
    Left = 422
    Top = 8
  end
  object TaxesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TaxesDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 455
    Top = 8
    object TaxesCdsTaxes_id: TIntegerField
      FieldName = 'Taxes_id'
    end
    object TaxesCdsTax: TStringField
      FieldName = 'Tax'
      Size = 50
    end
  end
  object TaxesDs: TDataSource
    DataSet = TaxesCds
    Left = 485
    Top = 8
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 440
    Top = 146
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 454
    Top = 147
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 472
    Top = 146
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
    Left = 484
    Top = 146
  end
end
