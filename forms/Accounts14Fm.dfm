inherited AccountsForm: TAccountsForm
  Left = 29
  Top = 172
  Width = 992
  Height = 512
  Caption = 'Accounts Form'
  Menu = MainMenu1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel [0]
    Left = 520
    Top = 80
    Width = 28
    Height = 13
    Caption = 'Date'
  end
  inherited CustomMasterGridGroupBox: TGroupBox
    Left = 0
    Top = 105
    Width = 984
    Height = 353
    Align = alClient
    Caption = 'Ledger'
    inherited CustomMasterDBGrid: TDBGrid
      Left = 2
      Top = 43
      Width = 980
      Height = 209
      Align = alClient
      Columns = <
        item
          Expanded = False
          FieldName = 'AccHeadookUp'
          Title.Caption = 'Account'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'yearref'
          Title.Caption = 'Year'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'voucherno'
          Title.Caption = 'Voucher'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'billno'
          Title.Caption = 'Bill No'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DivisionLookUp'
          Title.Caption = 'Division'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'invoiceno'
          Title.Caption = 'Invoice'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'details'
          Title.Caption = 'Details'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'amountbilled'
          Title.Caption = 'Billed'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'debit'
          Title.Caption = 'Debit'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'credit'
          Title.Caption = 'Credit'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CurrencyLookUp'
          Title.Caption = 'Currency'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'forexdebit'
          Title.Caption = 'Forex Debit'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'forexcredit'
          Title.Caption = 'Forex Credit'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tds'
          Title.Caption = 'TDS'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'exchangerate'
          Title.Caption = 'Exchange Rate'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'notes'
          Title.Caption = 'Notes'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'divisions_id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'currencies_id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'offices_id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ledgers_id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'accounts_id'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'accountheads_id'
          Visible = False
        end>
    end
    object PanelBottom: TPanel [3]
      Left = 2
      Top = 319
      Width = 980
      Height = 32
      Align = alBottom
      TabOrder = 1
      object Label13: TLabel
        Left = 644
        Top = 9
        Width = 98
        Height = 13
        Caption = 'Year Reference :'
      end
      object RadioButton1: TRadioButton
        Left = 456
        Top = 8
        Width = 54
        Height = 17
        Caption = 'Draft'
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 67
        Top = 8
        Width = 113
        Height = 17
        Caption = 'Cheque Number'
        TabOrder = 1
      end
      object RadioButton3: TRadioButton
        Left = 7
        Top = 8
        Width = 37
        Height = 17
        Caption = 'ID'
        TabOrder = 2
      end
      object RadioButton4: TRadioButton
        Left = 196
        Top = 8
        Width = 103
        Height = 17
        Caption = 'Cash Voucher'
        TabOrder = 3
      end
      object RadioButton5: TRadioButton
        Left = 319
        Top = 8
        Width = 114
        Height = 17
        Caption = 'Journal Voucher'
        TabOrder = 4
      end
      object Edit1: TEdit
        Left = 750
        Top = 5
        Width = 95
        Height = 21
        TabOrder = 5
      end
    end
    object PanelCalc: TPanel [4]
      Left = 2
      Top = 291
      Width = 980
      Height = 28
      Align = alBottom
      TabOrder = 2
      object Label10: TLabel
        Left = 20
        Top = 7
        Width = 55
        Height = 13
        Caption = 'Balance :'
      end
      object Label11: TLabel
        Left = 236
        Top = 7
        Width = 90
        Height = 13
        Caption = 'Forex Balance :'
      end
      object Label12: TLabel
        Left = 460
        Top = 7
        Width = 34
        Height = 13
        Caption = 'TDS :'
      end
      object DBText7: TDBText
        Left = 334
        Top = 8
        Width = 70
        Height = 15
      end
      object DBText8: TDBText
        Left = 80
        Top = 7
        Width = 76
        Height = 15
      end
      object DBText9: TDBText
        Left = 500
        Top = 8
        Width = 65
        Height = 15
      end
    end
    inherited SearchEdit: TEdit
      Left = 532
      Top = 332
      Width = 95
      TabOrder = 6
    end
    object PanelPayRcv: TPanel [6]
      Left = 2
      Top = 15
      Width = 980
      Height = 28
      Align = alTop
      TabOrder = 4
      object DBText5: TDBText
        Left = 456
        Top = 8
        Width = 65
        Height = 16
      end
      object DBText6: TDBText
        Left = 312
        Top = 8
        Width = 65
        Height = 15
      end
      object ReceivableOpt: TRadioButton
        Left = 137
        Top = 6
        Width = 97
        Height = 17
        Caption = 'Receivables'
        TabOrder = 0
        OnClick = ReceivableOptClick
      end
      object PayablesOpt: TRadioButton
        Left = 40
        Top = 6
        Width = 75
        Height = 17
        Caption = 'Payables'
        TabOrder = 1
        OnClick = PayablesOptClick
      end
    end
    object DBMemo1: TDBMemo [7]
      Left = 2
      Top = 252
      Width = 980
      Height = 39
      Align = alBottom
      TabOrder = 5
    end
    inherited CloseBtn: TBitBtn
      Left = 898
      Top = 332
      Height = 20
      TabOrder = 3
    end
  end
  object PanelTop: TPanel [2]
    Left = 0
    Top = 0
    Width = 984
    Height = 105
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 4
      Top = 18
      Width = 30
      Height = 13
      Caption = 'Party'
    end
    object Label2: TLabel
      Left = 4
      Top = 40
      Width = 91
      Height = 13
      Caption = 'Cheque Number'
    end
    object Label3: TLabel
      Left = 225
      Top = 40
      Width = 76
      Height = 13
      Caption = 'Draft Number'
    end
    object Label4: TLabel
      Left = 225
      Top = 64
      Width = 80
      Height = 13
      Caption = 'Cash Voucher'
    end
    object Label5: TLabel
      Left = 487
      Top = 18
      Width = 28
      Height = 13
      Caption = 'Date'
    end
    object Label6: TLabel
      Left = 693
      Top = 40
      Width = 133
      Height = 13
      Caption = 'Total Debits For TDS  :'
    end
    object Label8: TLabel
      Left = 487
      Top = 40
      Width = 75
      Height = 13
      Caption = 'Date Cleared'
    end
    object Label9: TLabel
      Left = 693
      Top = 18
      Width = 98
      Height = 13
      Caption = 'Year Reference :'
    end
    object DBText1: TDBText
      Left = 828
      Top = 18
      Width = 60
      Height = 17
      DataField = 'yearref'
      DataSource = AccountsDS
    end
    object DBText2: TDBText
      Left = 828
      Top = 40
      Width = 68
      Height = 17
    end
    object DBText3: TDBText
      Left = 896
      Top = 17
      Width = 84
      Height = 20
      DataField = 'offices_id'
      DataSource = AccountsDS
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 897
      Top = 38
      Width = 63
      Height = 17
      DataField = 'accounts_id'
      DataSource = AccountsDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 305
      Top = 36
      Width = 116
      Height = 21
      DataField = 'draftno'
      DataSource = AccountsDS
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 97
      Top = 36
      Width = 113
      Height = 21
      DataField = 'chequeno'
      DataSource = AccountsDS
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 97
      Top = 12
      Width = 384
      Height = 21
      DataField = 'PartyLookUp'
      DataSource = AccountsDS
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 306
      Top = 61
      Width = 116
      Height = 21
      DataField = 'cashvoucherno'
      DataSource = AccountsDS
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 565
      Top = 36
      Width = 120
      Height = 21
      DataField = 'datecleared'
      DataSource = AccountsDS
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 565
      Top = 12
      Width = 120
      Height = 21
      DataField = 'transactiondate'
      DataSource = AccountsDS
      TabOrder = 5
    end
    object DBNavigator1: TDBNavigator
      Left = 468
      Top = 62
      Width = 240
      Height = 22
      DataSource = AccountsDS
      TabOrder = 6
    end
    object DBCheckBox1: TDBCheckBox
      Left = 97
      Top = 63
      Width = 87
      Height = 17
      Caption = 'Cash Entry'
      DataField = 'cashvoucher'
      DataSource = AccountsDS
      TabOrder = 7
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 384
    Top = 312
  end
  inherited MasterDS: TDataSource
    Left = 352
    Top = 280
  end
  inherited MasterCDS: TClientDataSet
    IndexFieldNames = 'accounts_id'
    MasterFields = 'accounts_id'
    MasterSource = AccountsDS
    PacketRecords = 0
    Left = 384
    Top = 280
    object MasterCDSledgers_id: TIntegerField
      FieldName = 'ledgers_id'
    end
    object MasterCDSaccounts_id: TIntegerField
      FieldName = 'accounts_id'
    end
    object MasterCDSaccountheads_id: TIntegerField
      FieldName = 'accountheads_id'
    end
    object MasterCDSdetails: TStringField
      FieldName = 'details'
      Size = 200
    end
    object MasterCDSdebit: TBCDField
      FieldName = 'debit'
      Precision = 10
      Size = 2
    end
    object MasterCDScredit: TBCDField
      FieldName = 'credit'
      Precision = 10
      Size = 2
    end
    object MasterCDSforexdebit: TBCDField
      FieldName = 'forexdebit'
      Precision = 10
      Size = 2
    end
    object MasterCDSforexcredit: TBCDField
      FieldName = 'forexcredit'
      Precision = 10
      Size = 2
    end
    object MasterCDSexchangerate: TFMTBCDField
      FieldName = 'exchangerate'
      Precision = 15
      Size = 8
    end
    object MasterCDSbillno: TStringField
      FieldName = 'billno'
      Size = 50
    end
    object MasterCDSamountbilled: TBCDField
      FieldName = 'amountbilled'
      Precision = 10
      Size = 2
    end
    object MasterCDSnotes: TBCDField
      FieldName = 'notes'
      Precision = 2
      Size = 0
    end
    object MasterCDStds: TBCDField
      FieldName = 'tds'
      Precision = 10
      Size = 2
    end
    object MasterCDSdivisions_id: TIntegerField
      FieldName = 'divisions_id'
    end
    object MasterCDSinvoiceno: TIntegerField
      FieldName = 'invoiceno'
    end
    object MasterCDSvoucherno: TIntegerField
      FieldName = 'voucherno'
    end
    object MasterCDScurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MasterCDSyearref: TIntegerField
      FieldName = 'yearref'
    end
    object MasterCDSoffices_id: TIntegerField
      FieldName = 'offices_id'
    end
    object MasterCDSAccHeadookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'AccHeadookUp'
      LookupDataSet = AccHeadCDS
      LookupKeyFields = 'AccountHeads_id'
      LookupResultField = 'AccountHeadSNo'
      KeyFields = 'accountheads_id'
      Size = 80
      Lookup = True
    end
    object MasterCDSDivisionLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'DivisionLookUp'
      LookupDataSet = DivCDS
      LookupKeyFields = 'Divisions_id'
      LookupResultField = 'Division'
      KeyFields = 'divisions_id'
      Size = 80
      Lookup = True
    end
    object MasterCDSCurrencyLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'CurrencyLookUp'
      LookupDataSet = CurrCDS
      LookupKeyFields = 'Currencies_id'
      LookupResultField = 'CurrencyCode'
      KeyFields = 'currencies_id'
      Size = 80
      Lookup = True
    end
  end
  inherited MasterSQLTable: TSQLTable
    TableName = 'ledgers'
    Left = 352
    Top = 312
  end
  object MainMenu1: TMainMenu
    Left = 480
    Top = 240
    object Utilities1: TMenuItem
      Caption = 'Utilities'
    end
    object Reports1: TMenuItem
      Caption = 'Reports'
    end
  end
  object AccountsDS: TDataSource
    DataSet = AccountsCDS
    Left = 440
    Top = 40
  end
  object AccountsCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Filter = 'AddressBook_id = 4'
    Filtered = True
    Params = <>
    ProviderName = 'AccountsDSP'
    BeforeInsert = MasterCDSBeforeInsert
    AfterInsert = MasterCDSAfterInsert
    BeforeEdit = MasterCDSBeforeEdit
    BeforePost = AccountsCDSBeforePost
    AfterPost = MasterCDSAfterPost
    BeforeDelete = MasterCDSBeforeDelete
    Left = 472
    Top = 48
    object AccountsCDSaccounts_id: TIntegerField
      FieldName = 'accounts_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object AccountsCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object AccountsCDStransactiondate: TSQLTimeStampField
      FieldName = 'transactiondate'
    end
    object AccountsCDSchequeno: TIntegerField
      FieldName = 'chequeno'
    end
    object AccountsCDSdatecleared: TSQLTimeStampField
      FieldName = 'datecleared'
    end
    object AccountsCDSdraftno: TIntegerField
      FieldName = 'draftno'
    end
    object AccountsCDSoffices_id: TIntegerField
      FieldName = 'offices_id'
    end
    object AccountsCDScashvoucherno: TIntegerField
      FieldName = 'cashvoucherno'
    end
    object AccountsCDScomments: TMemoField
      FieldName = 'comments'
      BlobType = ftMemo
    end
    object AccountsCDScashvoucher: TBooleanField
      FieldName = 'cashvoucher'
    end
    object AccountsCDSyearref: TIntegerField
      FieldName = 'yearref'
    end
    object AccountsCDScompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
    object AccountsCDSPartyLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'PartyLookUp'
      LookupDataSet = PartyCDS
      LookupKeyFields = 'addressbook_id'
      LookupResultField = 'orgcity'
      KeyFields = 'addressbook_id'
      Size = 80
      Lookup = True
    end
  end
  object AccountsTbl: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    TableName = 'accounts'
    Left = 440
    Top = 72
  end
  object AccountsDSP: TDataSetProvider
    DataSet = AccountsTbl
    Left = 472
    Top = 72
  end
  object PartyQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  case when (len(rtrim(ltrim(a.organisation))) > 0) '
      
        '             then CAST(COALESCE(a.organisation, '#39#39') + '#39', '#39' + COA' +
        'LESCE(a.city, '#39#39') as varchar) '
      '        else'
      #9'     (select CAST((COALESCE(ad.salutation, '#39#39') + '#39'.'#39' + '
      
        '     COALESCE(substring(ad.firstname,1,1) + '#39'.'#39', '#39#39') + COALESCE(' +
        'ad.lastname, '#39#39')) as varchar)'
      #9'     '#9' from '#9' '#9'addressdetails ad'
      
        '       '#9#9' where '#9' '#9'ad.addressdetails_id = b.addressdetails_id an' +
        'd'
      
        '                '#9'       '#9'a.addressbook_id = ad.addressbook_id an' +
        'd'
      
        '                       '#9#9'(select min(ad2.addressdetails_id)from ' +
        'addressdetails ad2 where a.addressbook_id = ad2.addressbook_id) ' +
        '= b.addressdetails_id )'
      #9'end as orgcity, a.addressbook_id'
      'from '#9'addressbook a'
      
        'left join addressdetails b on a.addressbook_id=b.addressbook_id ' +
        'and'
      
        '(select min(ad2.addressdetails_id) from addressdetails ad2 where' +
        ' '
      
        '        a.addressbook_id = ad2.addressbook_id) = b.addressdetail' +
        's_id'
      'order by orgcity;')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 184
    Top = 24
  end
  object PartyCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PartyDSP'
    Left = 208
    Top = 8
    object PartyCDSorgcity: TStringField
      FieldName = 'orgcity'
      Size = 30
    end
    object PartyCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
  end
  object PartyDSP: TDataSetProvider
    DataSet = PartyQry
    Left = 208
    Top = 24
  end
  object TdsCDS: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    ProviderName = 'TdsDSP'
    Left = 848
    Top = 56
  end
  object TdsDSP: TDataSetProvider
    DataSet = TdsQry
    Left = 848
    Top = 72
  end
  object TdsDS: TDataSource
    DataSet = TdsCDS
    Left = 816
    Top = 48
  end
  object TdsQry: TSQLQuery
    DataSource = AccountsDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT SUM(L.Debit) AS Db '
      '             FROM Accounts AS A '
      '             LEFT JOIN Ledgers As L ON '
      '             A.Accounts_id = L.Accounts_id WHERE '
      '             (A.TransactionDate >= '#39'04/01/2001'#39') AND '
      '             (A.TransactionDate <= :TransactionDate) AND '
      '             (A.Addressbook_id = :Addressbook_id) AND '
      '             (L.TDS > 0)')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 816
    Top = 72
  end
  object AccHeadQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT AccountHeads_id, AccountHeadSNo'
      'FROM AccountHeads'
      'ORDER BY AccountHeadSNo')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 24
    Top = 176
  end
  object AccHeadCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'AccHeadDSP'
    Left = 48
    Top = 160
    object AccHeadCDSAccountHeads_id: TIntegerField
      FieldName = 'AccountHeads_id'
    end
    object AccHeadCDSAccountHeadSNo: TIntegerField
      FieldName = 'AccountHeadSNo'
    end
  end
  object AccHeadDSP: TDataSetProvider
    DataSet = AccHeadQry
    Left = 48
    Top = 176
  end
  object DivQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Divisions_id, Division'
      'FROM Divisions'
      'ORDER BY Division')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 384
    Top = 176
  end
  object DivDSP: TDataSetProvider
    DataSet = DivQry
    Left = 408
    Top = 176
  end
  object DivCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DivDSP'
    Left = 408
    Top = 160
    object DivCDSDivisions_id: TIntegerField
      FieldName = 'Divisions_id'
    end
    object DivCDSDivision: TStringField
      FieldName = 'Division'
    end
  end
  object CurrQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Currencies_id, Currency, CurrencyCode'
      'FROM Currencies'
      'ORDER BY Currency')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 752
    Top = 184
  end
  object CurrCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'CurrDSP'
    Left = 776
    Top = 168
    object CurrCDSCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CurrCDSCurrency: TStringField
      FieldName = 'Currency'
      Size = 50
    end
    object CurrCDSCurrencyCode: TStringField
      FieldName = 'CurrencyCode'
      FixedChar = True
      Size = 3
    end
  end
  object CurrDSP: TDataSetProvider
    DataSet = CurrQry
    Left = 776
    Top = 184
  end
end
