inherited CurrecnyDetailsForm: TCurrecnyDetailsForm
  Left = 313
  Top = 142
  Caption = 'Exchange Rate'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Currency'
    end
    object cxCurrecnyLCMB: TcxLookupComboBox
      Left = 78
      Top = 14
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Currencies_id'
      Properties.ListColumns = <
        item
          MinWidth = 100
          FieldName = 'CurrencyCode'
        end
        item
          MinWidth = 200
          FieldName = 'Country'
        end>
      Properties.ListSource = CurrenciesDs
      TabOrder = 0
      Width = 269
    end
  end
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Exchange Rates'
        inherited cxGrid1: TcxGrid
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'currencydetails_id'
            object cxGrid1DBBandedTableView1currencydetails_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'currencydetails_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1exchangerate: TcxGridDBBandedColumn
              Caption = 'Exchange Rate'
              DataBinding.FieldName = 'exchangerate'
              Width = 132
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1currencies_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'currencies_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1countries_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'countries_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'currencydetails'
  end
  inherited MasterCds: TClientDataSet
    object MasterCdscurrencydetails_id: TIntegerField
      FieldName = 'currencydetails_id'
    end
    object MasterCdsexchangerate: TBCDField
      FieldName = 'exchangerate'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MasterCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
  end
  object CurrenciesSds: TSQLDataSet
    CommandText = 
      'SELECT c.Currencies_id, c.CurrencyCode, co.Country'#13#10'FROM Currenc' +
      'ies c'#13#10'LEFT JOIN Countries co ON c.Countries_id = co.Countries_i' +
      'd'#13#10'ORDER BY CurrencyCode'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 192
    Top = 272
  end
  object CurrenciesDsp: TDataSetProvider
    DataSet = CurrenciesSds
    UpdateMode = upWhereKeyOnly
    Left = 222
    Top = 272
  end
  object CurrenciesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrenciesDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 255
    Top = 272
    object CurrenciesCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrenciesCdsCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
    object CurrenciesCdsCountry: TStringField
      FieldName = 'Country'
      Size = 50
    end
  end
  object CurrenciesDs: TDataSource
    DataSet = CurrenciesCds
    Left = 285
    Top = 272
  end
end
