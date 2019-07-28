inherited CurrenciesForm: TCurrenciesForm
  Left = 478
  Top = 62
  Caption = 'Currencies'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Currencies'
        inherited cxGrid1: TcxGrid
          Height = 313
          Align = alTop
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
            object cxGrid1DBBandedTableView1BankAccountNo: TcxGridDBBandedColumn
              Caption = 'Bank A/C No'
              DataBinding.FieldName = 'BankAccountNo'
              Visible = False
              Width = 113
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1BankSwiftCode: TcxGridDBBandedColumn
              Caption = 'Swift Code'
              DataBinding.FieldName = 'BankSwiftCode'
              Visible = False
              Width = 104
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1BankSortCode: TcxGridDBBandedColumn
              Caption = 'Sort Code'
              DataBinding.FieldName = 'BankSortCode'
              Visible = False
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1BankIbanNo: TcxGridDBBandedColumn
              Caption = 'IBAN No'
              DataBinding.FieldName = 'BankIbanNo'
              Visible = False
              Width = 114
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1BankName: TcxGridDBBandedColumn
              Caption = 'Bank Name'
              DataBinding.FieldName = 'BankName'
              Width = 135
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1active: TcxGridDBBandedColumn
              Caption = 'Active'
              DataBinding.FieldName = 'active'
              Position.BandIndex = 0
              Position.ColIndex = 13
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
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
          end
        end
        object cxDBMemo1: TcxDBMemo
          Left = 617
          Top = 333
          DataBinding.DataField = 'BankAddress'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Height = 40
          Width = 193
        end
        object cxLabel3: TcxLabel
          Left = 8
          Top = 320
          Caption = 'Beneficiary Bank Name && Address'
        end
        object cxLabel4: TcxLabel
          Left = 8
          Top = 340
          Caption = 'Beneficiary Bank Swift Code'
        end
        object cxLabel5: TcxLabel
          Left = 8
          Top = 360
          Caption = 'Beneficiary Bank Account No.'
        end
        object cxLabel6: TcxLabel
          Left = 8
          Top = 380
          Caption = 'Beneficiary Bank Account Name.'
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 224
          Top = 320
          DataBinding.DataField = 'Ben_BankName'
          DataBinding.DataSource = MasterDs
          TabOrder = 6
          Width = 361
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 224
          Top = 340
          DataBinding.DataField = 'Ben_BankSwift'
          DataBinding.DataSource = MasterDs
          TabOrder = 7
          Width = 361
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 224
          Top = 360
          DataBinding.DataField = 'Ben_BankAccountNo'
          DataBinding.DataSource = MasterDs
          TabOrder = 8
          Width = 361
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 224
          Top = 380
          DataBinding.DataField = 'Ben_BankAccountName'
          DataBinding.DataSource = MasterDs
          TabOrder = 9
          Width = 361
        end
        object cxLabel7: TcxLabel
          Left = 616
          Top = 318
          Caption = 'Corr. Bank Address'
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Invoice Pymt Account'
        ImageIndex = 1
        object cxMemoPymtAccount: TcxMemo
          Left = 8
          Top = 24
          TabOrder = 0
          Height = 89
          Width = 377
        end
        object cxLabel1: TcxLabel
          Left = 12
          Top = 8
          Caption = 'Invoice Payment Account'
          Transparent = True
        end
        object cxMemoBeneficiary: TcxMemo
          Left = 8
          Top = 136
          TabOrder = 2
          Height = 89
          Width = 377
        end
        object cxLabel2: TcxLabel
          Left = 10
          Top = 120
          Caption = 'Message to Beneficiary'
          Transparent = True
        end
        object cxButton1: TcxButton
          Left = 8
          Top = 240
          Width = 75
          Height = 25
          Caption = 'Save'
          TabOrder = 4
          OnClick = cxButton1Click
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'currencies'
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
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
    object MasterCdsBankAccountNo: TStringField
      FieldName = 'BankAccountNo'
      Size = 30
    end
    object MasterCdsBankAddress: TStringField
      FieldName = 'BankAddress'
      Size = 200
    end
    object MasterCdsBankSwiftCode: TStringField
      FieldName = 'BankSwiftCode'
      Size = 30
    end
    object MasterCdsBankSortCode: TStringField
      FieldName = 'BankSortCode'
      Size = 30
    end
    object MasterCdsBankIbanNo: TStringField
      FieldName = 'BankIbanNo'
      Size = 30
    end
    object MasterCdsBankName: TStringField
      FieldName = 'BankName'
      Size = 50
    end
    object MasterCdsactive: TBooleanField
      FieldName = 'active'
    end
    object MasterCdsBen_BankAccountNo: TStringField
      FieldName = 'Ben_BankAccountNo'
      Size = 30
    end
    object MasterCdsBen_BankAccountName: TStringField
      FieldName = 'Ben_BankAccountName'
      Size = 100
    end
    object MasterCdsBen_BankName: TStringField
      FieldName = 'Ben_BankName'
      Size = 200
    end
    object MasterCdsBen_BankSwift: TStringField
      FieldName = 'Ben_BankSwift'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
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
