inherited CentralTaxesForm: TCentralTaxesForm
  Left = -93
  Top = 437
  Width = 977
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 57
    Caption = 'Central Taxes'
    TabOrder = 1
    Height = 458
    Width = 969
    inherited CustomMasterCxGrid: TcxGrid
      Width = 963
      Height = 437
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1taxes_id: TcxGridDBColumn
          Caption = 'Tax'
          DataBinding.FieldName = 'taxes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'taxes_id'
          Properties.ListColumns = <
            item
              FieldName = 'tax'
            end>
          Properties.ListSource = BackOfficeDataModule.TaxeDS
          SortIndex = 0
          SortOrder = soAscending
          Width = 154
        end
        object CustomMasterCxGridDBTableView1wef: TcxGridDBColumn
          Caption = 'Wef'
          DataBinding.FieldName = 'wef'
          SortIndex = 1
          SortOrder = soAscending
          Width = 106
        end
        object CustomMasterCxGridDBTableView1wet: TcxGridDBColumn
          Caption = 'Wet'
          DataBinding.FieldName = 'wet'
          Width = 125
        end
        object CustomMasterCxGridDBTableView1tax: TcxGridDBColumn
          Caption = 'Tax (%)'
          DataBinding.FieldName = 'tax'
          Width = 91
        end
        object CustomMasterCxGridDBTableView1taxamount: TcxGridDBColumn
          Caption = 'Amount'
          DataBinding.FieldName = 'taxamount'
          Width = 101
        end
        object CustomMasterCxGridDBTableView1ac: TcxGridDBColumn
          Caption = 'A/C'
          DataBinding.FieldName = 'ac'
          PropertiesClassName = 'TcxCheckBoxProperties'
        end
        object CustomMasterCxGridDBTableView1non_ac: TcxGridDBColumn
          Caption = 'Non A/C'
          DataBinding.FieldName = 'non_ac'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 57
        end
        object CustomMasterCxGridDBTableView1fromrate: TcxGridDBColumn
          Caption = 'From Rate'
          DataBinding.FieldName = 'fromrate'
        end
        object CustomMasterCxGridDBTableView1torate: TcxGridDBColumn
          Caption = 'To Rate'
          DataBinding.FieldName = 'torate'
        end
        object CustomMasterCxGridDBTableView1star: TcxGridDBColumn
          Caption = 'Star'
          DataBinding.FieldName = 'star'
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 969
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 808
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
  end
  inherited Panel2: TPanel
    Width = 969
    Height = 57
    TabOrder = 0
    object GroupBox2: TcxGroupBox
      Left = 8
      Top = 1
      Caption = ' Select Country '
      TabOrder = 0
      Height = 49
      Width = 257
      object cxCountryLCMB: TcxLookupComboBox
        Left = 8
        Top = 23
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'countries_id'
        Properties.ListColumns = <
          item
            FieldName = 'country'
          end>
        Properties.ListSource = CountriesDS
        Properties.ValidateOnEnter = False
        Properties.OnEditValueChanged = cxCountryLCMBPropertiesEditValueChanged
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        Width = 241
      end
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'centraltaxes'
    Top = 128
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 64
    Top = 128
  end
  inherited MasterDS: TDataSource
    Left = 72
    Top = 128
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'countries_id'
    MasterFields = 'countries_id'
    MasterSource = CountriesDS
    AfterInsert = MasterCdsAfterInsert
    Left = 80
    Top = 128
    object MasterCdscentraltaxes_id: TIntegerField
      FieldName = 'centraltaxes_id'
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object MasterCdstaxes_id: TIntegerField
      FieldName = 'taxes_id'
    end
    object MasterCdsfromrate: TBCDField
      FieldName = 'fromrate'
      Precision = 10
      Size = 2
    end
    object MasterCdstorate: TBCDField
      FieldName = 'torate'
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
    object MasterCdswet: TSQLTimeStampField
      FieldName = 'wet'
    end
    object MasterCdstax: TBCDField
      FieldName = 'tax'
      DisplayFormat = '#,##0.0000'
      Precision = 10
    end
  end
  object CountriesSds: TSQLDataSet
    CommandText = 'select countries_id, country'#13#10'from countries c'#13#10'order by country'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 304
    Top = 16
  end
  object CountriesDsp: TDataSetProvider
    DataSet = CountriesSds
    Left = 320
    Top = 16
  end
  object CountriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CountriesDsp'
    Left = 336
    Top = 16
    object CountriesCdscountries_id: TIntegerField
      FieldName = 'countries_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CountriesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
  end
  object CountriesDS: TDataSource
    DataSet = CountriesCds
    Left = 352
    Top = 16
  end
end
