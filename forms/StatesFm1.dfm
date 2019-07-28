inherited StatesForm: TStatesForm
  Left = 87
  Top = 165
  Width = 964
  Height = 642
  Caption = 'States Form'
  OldCreateOrder = True
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 956
    Height = 487
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 424
      Height = 481
      Align = alLeft
      Color = clWhite
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'statecode'
          Title.Caption = 'State Code'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'state'
          Title.Caption = 'State'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CountryLookUp'
          Title.Caption = 'Country'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -5
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'printstate'
          Title.Caption = 'Print State'
          Width = 75
          Visible = True
        end>
    end
    object DBMemo1: TDBMemo
      Left = 425
      Top = 1
      Width = 526
      Height = 481
      Align = alClient
      DataField = 'writeup'
      TabOrder = 1
    end
  end
  object Panel3: TPanel [1]
    Left = 0
    Top = 487
    Width = 956
    Height = 121
    Align = alBottom
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 954
      Height = 119
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'states_id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TaxName'
          Title.Caption = 'Tax Type'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'wef'
          Title.Caption = 'With Effect From'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tax'
          Title.Caption = 'Tax'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ac'
          Title.Caption = 'AC'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nonac'
          Title.Caption = 'Non AC'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fromrate'
          Title.Caption = 'From Rate'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'torate'
          Title.Caption = 'To Rate'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'publishedrate'
          Title.Caption = 'Published Rate'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'star'
          Title.Caption = 'Star'
          Width = 70
          Visible = True
        end>
    end
  end
  inherited SQLDataSet: TSQLDataSet
    CommandText = 'SELECT * FROM States ORDER BY StateCode'
    SQLConnection = BackOfficeDataModule.SQLConnection1
    Left = 152
    Top = 72
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 184
    Top = 72
  end
  inherited MasterDS: TDataSource
    Left = 216
    Top = 72
  end
  inherited MasterCDS: TClientDataSet
    Left = 240
    Top = 72
  end
  object LuxTaxDS: TSQLDataSet
    CommandText = 'SELECT * FROM StateTaxes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection1
    Left = 376
    Top = 594
    object LuxTaxDSstatetaxes_id: TIntegerField
      FieldName = 'statetaxes_id'
    end
    object LuxTaxDSwef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object LuxTaxDStax: TBCDField
      FieldName = 'tax'
      Precision = 10
      Size = 2
    end
    object LuxTaxDStaxes_id: TIntegerField
      FieldName = 'taxes_id'
    end
    object LuxTaxDSac: TBooleanField
      FieldName = 'ac'
    end
    object LuxTaxDSnonac: TBooleanField
      FieldName = 'nonac'
    end
  end
  object LuxTaxCDS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'states_id'
    MasterFields = 'states_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'LuxTaxProvider'
    Left = 408
    Top = 594
    object LuxTaxCDSTaxkLoolUp: TStringField
      DisplayLabel = 'Tax Name'
      FieldKind = fkLookup
      FieldName = 'TaxName'
      LookupDataSet = TaxCDS
      LookupKeyFields = 'taxes_id'
      LookupResultField = 'tax'
      KeyFields = 'taxes_id'
      Size = 50
      Lookup = True
    end
    object LuxTaxCDSstatetaxes_id: TIntegerField
      FieldName = 'statetaxes_id'
    end
    object LuxTaxCDSwef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object LuxTaxCDStax: TBCDField
      FieldName = 'tax'
      Precision = 10
      Size = 2
    end
    object LuxTaxCDStaxes_id: TIntegerField
      FieldName = 'taxes_id'
    end
    object LuxTaxCDSac: TBooleanField
      FieldName = 'ac'
    end
    object LuxTaxCDSnonac: TBooleanField
      FieldName = 'nonac'
    end
  end
  object LuxTaxDSrc: TDataSource
    DataSet = LuxTaxCDS
    Left = 440
    Top = 594
  end
  object LuxTaxProvider: TDataSetProvider
    DataSet = LuxTaxDS
    Left = 472
    Top = 594
  end
  object TaxDS: TSQLDataSet
    CommandText = 'SELECT * FROM Taxes Order By Tax'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection1
    Left = 608
    Top = 608
  end
  object TaxProvider: TDataSetProvider
    DataSet = TaxDS
    Left = 640
    Top = 608
  end
  object TaxCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'TaxProvider'
    Left = 672
    Top = 608
  end
end
