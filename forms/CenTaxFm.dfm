inherited CentralTaxesForm: TCentralTaxesForm
  Left = 29
  Top = 20
  Width = 822
  Height = 624
  Caption = 'Central Taxes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    Top = 64
    Width = 814
    Height = 485
    TabOrder = 1
    inherited CustomMasterCxGrid: TcxGrid
      Width = 810
      Height = 468
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        OptionsView.Indicator = True
        object CustomMasterCxGridDBTableView1taxes_id: TcxGridDBColumn
          Caption = 'Tax'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'taxes_id'
          Properties.ListColumns = <
            item
              FieldName = 'tax'
            end>
          Properties.ListSource = BackOfficeDataModule.TaxeDS
          Width = 120
          DataBinding.FieldName = 'taxes_id'
        end
        object CustomMasterCxGridDBTableView1wef: TcxGridDBColumn
          Caption = 'WEF'
          Width = 85
          DataBinding.FieldName = 'wef'
        end
        object CustomMasterCxGridDBTableView1wet: TcxGridDBColumn
          Caption = 'WET'
          Width = 82
          DataBinding.FieldName = 'wet'
        end
        object CustomMasterCxGridDBTableView1tax: TcxGridDBColumn
          Caption = 'Tax (%)'
          Width = 68
          DataBinding.FieldName = 'tax'
        end
        object CustomMasterCxGridDBTableView1taxamount: TcxGridDBColumn
          Caption = 'Amount'
          Width = 70
          DataBinding.FieldName = 'taxamount'
        end
        object CustomMasterCxGridDBTableView1ac: TcxGridDBColumn
          Caption = 'A/C'
          Width = 51
          DataBinding.FieldName = 'ac'
        end
        object CustomMasterCxGridDBTableView1non_ac: TcxGridDBColumn
          Caption = 'Non A/C'
          Width = 71
          DataBinding.FieldName = 'non_ac'
        end
        object CustomMasterCxGridDBTableView1fromrate: TcxGridDBColumn
          Caption = 'From Rate'
          Width = 89
          DataBinding.FieldName = 'fromrate'
        end
        object CustomMasterCxGridDBTableView1torate: TcxGridDBColumn
          Caption = 'To Rate'
          Width = 77
          DataBinding.FieldName = 'torate'
        end
        object CustomMasterCxGridDBTableView1star: TcxGridDBColumn
          Caption = 'Star'
          Width = 69
          DataBinding.FieldName = 'star'
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 549
    Width = 814
    TabOrder = 2
    inherited SearchLbl: TLabel
      Visible = False
    end
    inherited KeyIdDbText: TDBText
      Left = 583
      Top = 13
      DataField = 'centraltaxes_id'
    end
    inherited CloseBtn: TBitBtn
      Left = 668
      Top = 7
    end
    inherited SearchEdit: TEdit
      Visible = False
    end
  end
  inherited Panel2: TPanel
    Width = 814
    Height = 64
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 8
      Top = 4
      Width = 257
      Height = 49
      Caption = ' Select Country '
      TabOrder = 0
      object cxCountryLCMB: TcxLookupComboBox
        Left = 8
        Top = 19
        Width = 241
        Height = 21
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
      end
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'centraltaxes'
    Params = <
      item
        DataType = ftInteger
        Name = 'countries_id'
        ParamType = ptInput
        Value = 0
      end>
    Left = 24
    Top = 144
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 56
    Top = 144
  end
  inherited MasterDS: TDataSource
    Left = 24
    Top = 112
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 56
    Top = 112
    object MasterCdscentraltaxes_id: TIntegerField
      FieldName = 'centraltaxes_id'
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object MasterCdstax: TBCDField
      FieldName = 'tax'
      Precision = 4
      Size = 2
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
