inherited Accounts2Form: TAccounts2Form
  Left = 112
  Top = 56
  Width = 996
  Height = 636
  Caption = 'Accounts Form'
  Menu = MainMenu1
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    Top = 83
    Width = 988
    Height = 458
    Caption = 'Ledger'
    TabOrder = 1
    inherited CustomMasterCxGrid: TcxGrid
      Top = 45
      Width = 984
      Height = 345
      TabOrder = 2
      OnDblClick = CustomMasterCxGridDblClick
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        OnDblClick = CustomMasterCxGridDBTableView1DblClick
        OnKeyPress = CustomMasterCxGridDBTableView1KeyPress
        object CustomMasterCxGridDBTableView1accountheads_id: TcxGridDBColumn
          Caption = 'Account'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 100
          Properties.KeyFieldNames = 'Accountheads_id'
          Properties.ListColumns = <
            item
              FieldName = 'AccountHeadsNoStr'
            end>
          Properties.ListSource = AccHeadNoStrDS
          Options.Filtering = False
          Options.Grouping = False
          DataBinding.FieldName = 'accountheads_id'
        end
        object CustomMasterCxGridDBTableView1yearref: TcxGridDBColumn
          Caption = 'Year'
          Options.Filtering = False
          Options.Grouping = False
          Width = 55
          DataBinding.FieldName = 'yearref'
        end
        object CustomMasterCxGridDBTableView1voucherno: TcxGridDBColumn
          Caption = 'Voucher'
          Options.Filtering = False
          Options.Grouping = False
          Width = 66
          DataBinding.FieldName = 'voucherno'
        end
        object CustomMasterCxGridDBTableView1billno: TcxGridDBColumn
          Caption = 'Bill Number'
          Options.Filtering = False
          Options.Grouping = False
          Width = 86
          DataBinding.FieldName = 'billno'
        end
        object CustomMasterCxGridDBTableView1divisions_id: TcxGridDBColumn
          Caption = 'Division'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 200
          Properties.KeyFieldNames = 'Divisions_id'
          Properties.ListColumns = <
            item
              FieldName = 'Division'
            end>
          Properties.ListSource = DivisionDS
          Options.Filtering = False
          Options.Grouping = False
          Width = 91
          DataBinding.FieldName = 'divisions_id'
        end
        object CustomMasterCxGridDBTableView1invoiceno: TcxGridDBColumn
          Caption = 'Invoice'
          Options.Filtering = False
          Options.Grouping = False
          Width = 85
          DataBinding.FieldName = 'invoiceno'
        end
        object CustomMasterCxGridDBTableView1details: TcxGridDBColumn
          Caption = 'Details'
          Options.Filtering = False
          Options.Grouping = False
          Width = 161
          DataBinding.FieldName = 'details'
        end
        object CustomMasterCxGridDBTableView1amountbilled: TcxGridDBColumn
          Caption = 'Billed'
          Options.Filtering = False
          Options.Grouping = False
          DataBinding.FieldName = 'amountbilled'
        end
        object CustomMasterCxGridDBTableView1debit: TcxGridDBColumn
          Caption = 'Debit'
          Options.Filtering = False
          Options.Grouping = False
          DataBinding.FieldName = 'debit'
        end
        object CustomMasterCxGridDBTableView1credit: TcxGridDBColumn
          Caption = 'Credit'
          Options.Filtering = False
          Options.Grouping = False
          DataBinding.FieldName = 'credit'
        end
        object CustomMasterCxGridDBTableView1currencies_id: TcxGridDBColumn
          Caption = 'Currency'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 150
          Properties.KeyFieldNames = 'currencies_id'
          Properties.ListColumns = <
            item
              FieldName = 'currency'
            end>
          Properties.ListSource = BackOfficeDataModule.CurrenciesDS
          Options.Filtering = False
          Options.Grouping = False
          DataBinding.FieldName = 'currencies_id'
        end
        object CustomMasterCxGridDBTableView1forexdebit: TcxGridDBColumn
          Caption = 'Forex Debit'
          Options.Filtering = False
          Options.Grouping = False
          DataBinding.FieldName = 'forexdebit'
        end
        object CustomMasterCxGridDBTableView1forexcredit: TcxGridDBColumn
          Caption = 'Forex Credit'
          Options.Filtering = False
          Options.Grouping = False
          DataBinding.FieldName = 'forexcredit'
        end
        object CustomMasterCxGridDBTableView1tds: TcxGridDBColumn
          Caption = 'TDS'
          Options.Filtering = False
          Options.Grouping = False
          DataBinding.FieldName = 'tds'
        end
        object CustomMasterCxGridDBTableView1exchangerate: TcxGridDBColumn
          Caption = 'Exchange Rate'
          Options.Filtering = False
          Options.Grouping = False
          DataBinding.FieldName = 'exchangerate'
        end
        object CustomMasterCxGridDBTableView1notes: TcxGridDBColumn
          Caption = 'Notes'
          Options.Filtering = False
          Options.Grouping = False
          Width = 125
          DataBinding.FieldName = 'notes'
        end
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 984
      Height = 30
      Align = alTop
      TabOrder = 0
      object AccountHeadLbl: TLabel
        Left = 243
        Top = 7
        Width = 117
        Height = 13
        Caption = 'Account Head Label'
      end
      object FolioLbl: TLabel
        Left = 456
        Top = 7
        Width = 63
        Height = 13
        Caption = 'Folio Label'
      end
      object ReceivablesOpt: TcxRadioButton
        Left = 127
        Top = 6
        Width = 98
        Height = 17
        Caption = 'Receivables'
        TabOrder = 1
        OnClick = ReceivablesOptClick
      end
      object PayablesOpt: TcxRadioButton
        Left = 10
        Top = 6
        Width = 75
        Height = 17
        Caption = 'Payables'
        TabOrder = 0
        OnClick = PayablesOptClick
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 390
      Width = 984
      Height = 66
      Align = alBottom
      TabOrder = 1
      object Label8: TLabel
        Left = 10
        Top = 42
        Width = 55
        Height = 13
        Caption = 'Balance :'
      end
      object Label10: TLabel
        Left = 218
        Top = 42
        Width = 90
        Height = 13
        Caption = 'Forex Balance :'
      end
      object Label11: TLabel
        Left = 439
        Top = 42
        Width = 34
        Height = 13
        Caption = 'TDS :'
      end
      object cxDBMemo1: TcxDBMemo
        Left = 1
        Top = 1
        Width = 982
        Height = 37
        Align = alTop
        DataBinding.DataField = 'comments'
        DataBinding.DataSource = AccountsDS
        TabOrder = 0
      end
      object cxDBTextEdit13: TcxDBTextEdit
        Left = 69
        Top = 39
        Width = 88
        Height = 21
        DataBinding.DataField = 'Balance'
        DataBinding.DataSource = BalanceDS
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        TabOrder = 1
      end
      object cxDBTextEdit14: TcxDBTextEdit
        Left = 312
        Top = 39
        Width = 100
        Height = 21
        DataBinding.DataField = 'ForexBalance'
        DataBinding.DataSource = BalanceDS
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        TabOrder = 2
      end
      object cxDBTextEdit15: TcxDBTextEdit
        Left = 488
        Top = 39
        Width = 121
        Height = 21
        DataBinding.DataField = 'TotalTDS'
        DataBinding.DataSource = BalanceDS
        Style.BorderStyle = ebsNone
        Style.Color = clBtnFace
        TabOrder = 3
      end
    end
  end
  inherited Panel1: TPanel
    Top = 541
    Width = 988
    TabOrder = 2
    inherited SearchLbl: TLabel
      Left = 649
      Width = 90
      Caption = 'Year Reference'
    end
    inherited KeyIdDbText: TDBText
      Left = 819
      Top = 15
      Visible = False
    end
    inherited SearchEdit: TEdit
      Left = 509
      Top = 9
      Width = 129
      OnKeyPress = SearchEditKeyPress
    end
    inherited CloseBtn: TcxButton
      Left = 895
    end
    object IdRB: TcxRadioButton
      Left = 10
      Top = 13
      Width = 38
      Height = 17
      Caption = 'ID'
      TabOrder = 2
    end
    object JvRB: TcxRadioButton
      Left = 318
      Top = 13
      Width = 114
      Height = 17
      Caption = 'Journal Voucher'
      TabOrder = 3
    end
    object DraftRB: TcxRadioButton
      Left = 449
      Top = 13
      Width = 53
      Height = 17
      Caption = 'Draft'
      TabOrder = 4
    end
    object ChequeRB: TcxRadioButton
      Left = 73
      Top = 13
      Width = 113
      Height = 17
      Caption = 'Cheque Number'
      TabOrder = 5
    end
    object CvRB: TcxRadioButton
      Left = 201
      Top = 13
      Width = 102
      Height = 17
      Caption = 'Cash Voucher'
      TabOrder = 6
    end
    object YearRefEdit: TEdit
      Left = 743
      Top = 9
      Width = 70
      Height = 21
      TabOrder = 7
      OnKeyPress = SearchEditKeyPress
    end
  end
  inherited Panel2: TPanel
    Width = 988
    Height = 83
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 9
      Width = 30
      Height = 13
      Caption = 'Party'
    end
    object Label2: TLabel
      Left = 662
      Top = 35
      Width = 129
      Height = 13
      Caption = 'Total Debits For TDS :'
    end
    object Label3: TLabel
      Left = 10
      Top = 35
      Width = 91
      Height = 13
      Caption = 'Cheque Number'
    end
    object Label4: TLabel
      Left = 248
      Top = 35
      Width = 76
      Height = 13
      Caption = 'Draft Number'
    end
    object Label5: TLabel
      Left = 247
      Top = 58
      Width = 80
      Height = 13
      Caption = 'Cash Voucher'
    end
    object Label6: TLabel
      Left = 480
      Top = 9
      Width = 28
      Height = 13
      Caption = 'Date'
    end
    object Label7: TLabel
      Left = 472
      Top = 35
      Width = 75
      Height = 13
      Caption = 'Date Cleared'
    end
    object Label9: TLabel
      Left = 662
      Top = 9
      Width = 98
      Height = 13
      Caption = 'Year Reference :'
    end
    object OfficeNameLbl: TLabel
      Left = 890
      Top = 5
      Width = 95
      Height = 20
      Caption = 'OfficeName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CashEntry: TcxDBCheckBox
      Left = 101
      Top = 53
      Width = 95
      Height = 21
      DataBinding.DataField = 'cashvoucher'
      DataBinding.DataSource = AccountsDS
      Properties.DisplayUnchecked = 'False'
      Properties.Caption = 'Cash Entry'
      TabOrder = 5
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 104
      Top = 30
      Width = 121
      Height = 21
      DataBinding.DataField = 'chequeno'
      DataBinding.DataSource = AccountsDS
      TabOrder = 2
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 330
      Top = 30
      Width = 130
      Height = 21
      DataBinding.DataField = 'draftno'
      DataBinding.DataSource = AccountsDS
      TabOrder = 3
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 330
      Top = 55
      Width = 130
      Height = 21
      DataBinding.DataField = 'cashvoucherno'
      DataBinding.DataSource = AccountsDS
      TabOrder = 6
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 793
      Top = 6
      Width = 92
      Height = 21
      DataBinding.DataField = 'yearref'
      DataBinding.DataSource = AccountsDS
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      TabOrder = 7
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 793
      Top = 31
      Width = 92
      Height = 21
      DataBinding.DataField = 'Db'
      DataBinding.DataSource = TDSDS
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      TabOrder = 8
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 472
      Top = 56
      Width = 192
      Height = 21
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = AccountsDS
      TabOrder = 9
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 104
      Top = 4
      Width = 356
      Height = 21
      DataBinding.DataField = 'addressbook_id'
      DataBinding.DataSource = AccountsDS
      Properties.DropDownWidth = 250
      Properties.KeyFieldNames = 'addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = PartyDS
      TabOrder = 0
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 550
      Top = 4
      Width = 110
      Height = 21
      DataBinding.DataField = 'transactiondate'
      DataBinding.DataSource = AccountsDS
      Properties.ShowTime = False
      TabOrder = 1
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 550
      Top = 30
      Width = 110
      Height = 21
      DataBinding.DataField = 'datecleared'
      DataBinding.DataSource = AccountsDS
      Properties.ShowTime = False
      TabOrder = 4
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 909
      Top = 29
      Width = 69
      Height = 24
      DataBinding.DataField = 'accounts_id'
      DataBinding.DataSource = AccountsDS
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clTeal
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      TabOrder = 10
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'ledgers'
    Left = 744
    Top = 256
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 776
    Top = 256
  end
  inherited MasterDS: TDataSource
    Left = 808
    Top = 256
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'accounts_id'
    MasterFields = 'accounts_id'
    MasterSource = AccountsDS
    PacketRecords = 0
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 840
    Top = 256
    object MasterCdsledgers_id: TIntegerField
      FieldName = 'ledgers_id'
    end
    object MasterCdsaccounts_id: TIntegerField
      FieldName = 'accounts_id'
    end
    object MasterCdsaccountheads_id: TIntegerField
      FieldName = 'accountheads_id'
    end
    object MasterCdsdetails: TStringField
      FieldName = 'details'
      Size = 200
    end
    object MasterCdsdebit: TBCDField
      FieldName = 'debit'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdscredit: TBCDField
      FieldName = 'credit'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdsforexdebit: TBCDField
      FieldName = 'forexdebit'
      OnChange = MasterCdsforexdebitChange
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdsforexcredit: TBCDField
      FieldName = 'forexcredit'
      OnChange = MasterCdsforexcreditChange
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdsexchangerate: TFMTBCDField
      FieldName = 'exchangerate'
      OnChange = MasterCdsexchangerateChange
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 8
    end
    object MasterCdsbillno: TStringField
      FieldName = 'billno'
      Size = 50
    end
    object MasterCdsamountbilled: TBCDField
      FieldName = 'amountbilled'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object MasterCdsnotes: TBCDField
      FieldName = 'notes'
      Precision = 2
      Size = 0
    end
    object MasterCdstds: TBCDField
      FieldName = 'tds'
      Precision = 10
      Size = 2
    end
    object MasterCdsdivisions_id: TIntegerField
      FieldName = 'divisions_id'
    end
    object MasterCdsinvoiceno: TIntegerField
      FieldName = 'invoiceno'
      OnChange = MasterCdsinvoicenoChange
    end
    object MasterCdsvoucherno: TIntegerField
      FieldName = 'voucherno'
      OnChange = MasterCdsvouchernoChange
    end
    object MasterCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object MasterCdsyearref: TIntegerField
      FieldName = 'yearref'
      OnChange = MasterCdsyearrefChange
    end
    object MasterCdsoffices_id: TIntegerField
      FieldName = 'offices_id'
    end
  end
  object MainMenu1: TMainMenu
    Left = 448
    Top = 224
    object Utilities1: TMenuItem
      Caption = 'Utilities'
    end
    object Reports1: TMenuItem
      Caption = 'Reports'
    end
  end
  object AccountsDS: TDataSource
    DataSet = AccountsCDS
    Left = 582
    Top = 56
  end
  object AccountsCDS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'offices_id'
    MasterFields = 'Offices_id'
    MasterSource = BoQryForm.OfficeDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'AccountsDSP'
    BeforeInsert = MasterCdsBeforeInsert
    AfterInsert = AccountsCDSAfterInsert
    BeforeEdit = AccountsCDSBeforeEdit
    BeforePost = AccountsCDSBeforePost
    AfterPost = AccountsCDSAfterPost
    BeforeDelete = AccountsCDSBeforeDelete
    AfterDelete = AccountsCDSAfterDelete
    BeforeScroll = AccountsCDSBeforeScroll
    AfterScroll = AccountsCDSAfterScroll
    Left = 592
    Top = 56
    object AccountsCDSaccounts_id: TIntegerField
      FieldName = 'accounts_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object AccountsCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object AccountsCDStransactiondate: TSQLTimeStampField
      FieldName = 'transactiondate'
      OnChange = AccountsCDStransactiondateChange
      DisplayFormat = 'dd/MM/yyyy'
    end
    object AccountsCDSchequeno: TIntegerField
      FieldName = 'chequeno'
    end
    object AccountsCDSdatecleared: TSQLTimeStampField
      FieldName = 'datecleared'
      DisplayFormat = 'dd/MM/yyyy'
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
      DisplayLabel = 'Cash Entry'
      FieldName = 'cashvoucher'
    end
    object AccountsCDSyearref: TIntegerField
      FieldName = 'yearref'
    end
    object AccountsCDScompanies_id: TIntegerField
      FieldName = 'companies_id'
    end
  end
  object AccountsDSP: TDataSetProvider
    DataSet = AccountsSDS
    Left = 608
    Top = 56
  end
  object AccountsSDS: TSQLDataSet
    CommandText = 'accounts'
    CommandType = ctTable
    DataSource = BoQryForm.OfficeDS
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 626
    Top = 55
  end
  object PartyDS: TDataSource
    DataSet = PartyCDS
    Left = 278
  end
  object PartyCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'PartyDSP'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    Left = 288
    object PartyCDSOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 30
    end
    object PartyCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object PartyCDScities_id: TIntegerField
      FieldName = 'cities_id'
    end
  end
  object PartyDSP: TDataSetProvider
    DataSet = PartySDS
    Left = 304
  end
  object PartySDS: TSQLDataSet
    CommandText = 
      'select  cities_id, case when (len(rtrim(ltrim(a.organisation))) ' +
      '> 0) '#13#10'             then CAST(COALESCE(a.organisation, '#39#39') + '#39', ' +
      #39' + COALESCE(a.city, '#39#39') as varchar) '#13#10'        else'#13#10#9'     (sele' +
      'ct CAST((COALESCE(ad.salutation, '#39#39') + '#39'.'#39' + COALESCE(substring(' +
      'ad.firstname,1,1) + '#39'.'#39', '#39#39') + COALESCE(ad.lastname, '#39#39')) as var' +
      'char)'#13#10#9'     '#9' from '#9' '#9'addressdetails ad'#13#10'       '#9#9' where '#9' '#9'ad.' +
      'addressdetails_id = b.addressdetails_id and'#13#10'                '#9'  ' +
      '     '#9'a.addressbook_id = ad.addressbook_id and'#13#10'                ' +
      '       '#9#9'(select min(ad2.addressdetails_id)from addressdetails a' +
      'd2 '#13#10#9#9#9#9#9'where a.addressbook_id = ad2.addressbook_id) = b.addre' +
      'ssdetails_id )'#13#10#9'end as Organisation, a.addressbook_id'#13#10'from '#9'ad' +
      'dressbook a'#13#10'left join addressdetails b on a.addressbook_id=b.ad' +
      'dressbook_id and'#13#10'(select min(ad2.addressdetails_id) from addres' +
      'sdetails ad2 where '#13#10'        a.addressbook_id = ad2.addressbook_' +
      'id) = b.addressdetails_id'#13#10'order by Organisation'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 322
    Top = 65535
  end
  object AccHeadNoStrDS: TDataSource
    DataSet = AccHeadNoStrCDS
    Left = 182
    Top = 192
  end
  object AccHeadNoStrCDS: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'AccHeadNoStrDSP'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    Left = 192
    Top = 192
    object AccHeadNoStrCDSDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object AccHeadNoStrCDSAccountheads_id: TIntegerField
      FieldName = 'Accountheads_id'
    end
    object AccHeadNoStrCDSFolios_id: TIntegerField
      FieldName = 'Folios_id'
    end
    object AccHeadNoStrCDSFolio: TStringField
      FieldName = 'Folio'
      Size = 50
    end
    object AccHeadNoStrCDSAccountHeadsNo: TIntegerField
      FieldName = 'AccountHeadsNo'
    end
    object AccHeadNoStrCDSAccountHeadsNoStr: TStringField
      FieldName = 'AccountHeadsNoStr'
      Size = 10
    end
  end
  object AccHeadNoStrDSP: TDataSetProvider
    DataSet = AccHeadNoStrSDS
    Left = 208
    Top = 192
  end
  object AccHeadNoStrSDS: TSQLDataSet
    CommandText = 
      'SELECT AH.Description, AH.Accountheads_id, AH.Folios_id, F.Folio' +
      ','#13#10'AH.AccountHeadsNo, '#13#10'CAST(AH.AccountHeadsNo as varchar(10)) a' +
      's AccountHeadsNoStr'#13#10'FROM AccountHeads AS AH LEFT JOIN Folios  A' +
      'S F'#13#10'ON AH.Folios_id = F.Folios_id'#13#10'ORDER BY AH.Accountheads_id,' +
      ' AH.Description'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 226
    Top = 191
  end
  object BalanceDS: TDataSource
    DataSet = BalanceCDS
    Left = 608
    Top = 568
  end
  object BalanceCDS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Accounts_id'
    MasterFields = 'accounts_id'
    MasterSource = AccountsDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'BalanceDSP'
    Left = 632
    Top = 568
    object BalanceCDSBalance: TFMTBCDField
      FieldName = 'Balance'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object BalanceCDSForexBalance: TFMTBCDField
      FieldName = 'ForexBalance'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object BalanceCDSTotalTDS: TFMTBCDField
      FieldName = 'TotalTDS'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
    object BalanceCDSAccounts_id: TIntegerField
      FieldName = 'Accounts_id'
    end
  end
  object BalanceDSP: TDataSetProvider
    DataSet = BalanceSDS
    Left = 680
    Top = 568
  end
  object BalanceSDS: TSQLDataSet
    CommandText = 
      'SELECT Accounts_id,COALESCE(SUM(Debit)-SUM(Credit) ,0) As Balanc' +
      'e,'#13#10'  COALESCE(SUM(ForexDebit)-SUM(ForexCredit) ,0) As ForexBala' +
      'nce,'#13#10'  COALESCE(SUM(TDS), 0) AS TotalTDS '#13#10'FROM Ledgers WHERE A' +
      'ccounts_id = :Accounts_id'#13#10'GROUP BY Accounts_id'
    DataSource = AccountsDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'accounts_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 656
    Top = 568
  end
  object DivisionDS: TDataSource
    DataSet = DivisionCDS
    Left = 310
    Top = 152
  end
  object DivisionCDS: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'DivisionDSP'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    Left = 320
    Top = 152
    object DivisionCDSDivisions_id: TIntegerField
      FieldName = 'Divisions_id'
    end
    object DivisionCDSDivision: TStringField
      FieldName = 'Division'
    end
    object DivisionCDSCompanies_id: TIntegerField
      FieldName = 'Companies_id'
    end
  end
  object DivisionDSP: TDataSetProvider
    DataSet = DivisionSDS
    Left = 336
    Top = 152
  end
  object DivisionSDS: TSQLDataSet
    CommandText = 
      'SELECT Divisions_id, Division, Companies_id'#13#10'FROM Divisions'#13#10'WHE' +
      'RE Companies_id = :Companies_id'#13#10'ORDER BY Division'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Companies_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 354
    Top = 151
  end
  object TDSDS: TDataSource
    DataSet = TDSCDS
    Left = 694
    Top = 48
  end
  object TDSCDS: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'TDSDSP'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    Left = 704
    Top = 48
    object TDSCDSDb: TFMTBCDField
      FieldName = 'Db'
      DisplayFormat = '#,##0.00'
      Precision = 32
      Size = 2
    end
  end
  object TDSDSP: TDataSetProvider
    DataSet = TDSSDS
    Left = 720
    Top = 48
  end
  object TDSSDS: TSQLDataSet
    CommandText = 
      'SELECT SUM(L.Debit) AS Db '#13#10'             FROM Accounts AS A '#13#10'  ' +
      '           LEFT JOIN Ledgers As L ON '#13#10'             A.Accounts_i' +
      'd = L.Accounts_id WHERE '#13#10'             (A.TransactionDate >= '#39'04' +
      '/01/2001'#39') AND '#13#10'             (A.TransactionDate <= :Transaction' +
      'Date) AND '#13#10'             (A.Addressbook_id = :Addressbook_id) AN' +
      'D '#13#10'             (L.TDS > 0)'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'TransactionDate'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 738
    Top = 47
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 96
    object Clear1: TMenuItem
      Caption = 'Clear'
      OnClick = Clear1Click
    end
  end
end
