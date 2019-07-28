inherited InvExchangeRateForm: TInvExchangeRateForm
  Left = 277
  Top = 104
  Width = 430
  Caption = 'Exchange Rate'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 414
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 51
      Height = 13
      Caption = 'Currency'
      Transparent = True
    end
    object cxCurrencyLCMB: TcxLookupComboBox
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
      Properties.OnEditValueChanged = cxCurrencyLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 269
    end
  end
  inherited Panel2: TPanel
    Width = 414
    inherited cxButtonClose: TcxButton
      Left = 336
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 260
      DataBinding.DataField = 'InvExchRates_id'
    end
  end
  inherited Panel3: TPanel
    Width = 414
    inherited cxPageControl1: TcxPageControl
      Width = 412
      ClientRectRight = 406
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Exchange Rates'
        inherited cxGrid1: TcxGrid
          Width = 403
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'InvExchRates_id'
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
              Width = 116
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1wef: TcxGridDBBandedColumn
              Caption = 'Wef'
              DataBinding.FieldName = 'wef'
              SortIndex = 0
              SortOrder = soDescending
              Width = 123
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
            object cxGrid1DBBandedTableView1InvExchRates_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'InvExchRates_id'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1BankExchRate: TcxGridDBBandedColumn
              Caption = 'Bank Exch Rate'
              DataBinding.FieldName = 'BankExchRate'
              Width = 130
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
    CommandText = 'SELECT * FROM InvExchRates'#13#10'WHERE Currencies_id = :Currencies_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Currencies_id'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsInvExchRates_id: TIntegerField
      FieldName = 'InvExchRates_id'
    end
    object MasterCdsExchangeRate: TFMTBCDField
      FieldName = 'ExchangeRate'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object MasterCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
    object MasterCdsBankExchRate: TFMTBCDField
      FieldName = 'BankExchRate'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object CurrenciesSds: TSQLDataSet
    CommandText = 
      'SELECT c.Currencies_id, LTRIM(RTRIM(c.CurrencyCode)) AS Currency' +
      'Code, co.Country'#13#10'FROM Currencies c'#13#10'LEFT JOIN Countries co ON c' +
      '.Countries_id = co.Countries_id'#13#10'WHERE c.Currencies_id IN'#13#10'  (SE' +
      'LECT DISTINCT Currencies_id FROM Invoices'#13#10'   WHERE Currencies_i' +
      'd IS NOT NULL)'#13#10'ORDER BY CurrencyCode'#13#10
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
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 304
    Top = 98
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 318
    Top = 99
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 336
    Top = 98
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
    Left = 348
    Top = 98
  end
end
