inherited PrinAgentAcHeadsForm: TPrinAgentAcHeadsForm
  Left = 345
  Top = 39
  Width = 857
  Height = 543
  Caption = 'Account Heads for Principal Agents'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 841
  end
  inherited Panel2: TPanel
    Top = 464
    Width = 841
    inherited cxDBLabelKeyId: TcxDBLabel
      DataBinding.DataField = 'addressbook_id'
    end
  end
  inherited Panel3: TPanel
    Width = 841
    Height = 423
    inherited cxPageControl1: TcxPageControl
      Width = 839
      Height = 421
      ClientRectBottom = 415
      ClientRectRight = 833
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Principal Agents'
        inherited cxGrid1: TcxGrid
          Width = 830
          Height = 389
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'addressbook_id'
            object cxGrid1DBBandedTableView1addressbook_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'addressbook_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1organisation: TcxGridDBBandedColumn
              Caption = 'Principal Agent'
              DataBinding.FieldName = 'organisation'
              Options.Editing = False
              Width = 294
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1city: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'city'
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1countries_id: TcxGridDBBandedColumn
              Caption = 'Country'
              DataBinding.FieldName = 'countries_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Countries_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Country'
                end>
              Properties.ListSource = CountriesDs
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DebitAccountHeads_id: TcxGridDBBandedColumn
              Caption = 'Debit Ac Head'
              DataBinding.FieldName = 'DebitAccountHeads_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 400
              Properties.KeyFieldNames = 'AccountHeads_id'
              Properties.ListColumns = <
                item
                  Width = 100
                  FieldName = 'AccountHeadsNo'
                end
                item
                  Width = 300
                  FieldName = 'Description'
                end>
              Properties.ListSource = AccountHeadsDS
              Width = 107
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1CreditAccountHeads_id: TcxGridDBBandedColumn
              Caption = 'Credit Ac Head'
              DataBinding.FieldName = 'CreditAccountHeads_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 400
              Properties.KeyFieldNames = 'AccountHeads_id'
              Properties.ListColumns = <
                item
                  Width = 100
                  FieldName = 'AccountHeadsNo'
                end
                item
                  Width = 300
                  FieldName = 'Description'
                end>
              Properties.ListSource = AccountHeadsDS
              Width = 117
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'select addressbook_id, organisation, city, countries_id, DebitAc' +
      'countHeads_id, CreditAccountHeads_id from addressbook a'#13#10'where e' +
      'xists (select * from addresscategories ac'#13#10'               where ' +
      'a.addressbook_id = ac.addressbook_id'#13#10'                 and ac.ca' +
      'tegories_id = 18)'#13#10'order by organisation'#13#10
    CommandType = ctQuery
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object MasterCdscity: TStringField
      FieldName = 'city'
    end
    object MasterCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object MasterCdsDebitAccountHeads_id: TIntegerField
      FieldName = 'DebitAccountHeads_id'
    end
    object MasterCdsCreditAccountHeads_id: TIntegerField
      FieldName = 'CreditAccountHeads_id'
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 65
    Top = 383
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
  object PrinAgentSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM dbo.fn_Addressbook(3,'#39#39') ORDER BY Organisation, Ci' +
      'ty'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 193
    Top = 73
  end
  object PrinAgentDsp: TDataSetProvider
    DataSet = PrinAgentSds
    Left = 217
    Top = 73
  end
  object PrinAgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PrinAgentDsp'
    Left = 240
    Top = 72
    object PrinAgentCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object PrinAgentCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object PrinAgentCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object PrinAgentCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object PrinAgentCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object PrinAgentDS: TDataSource
    DataSet = PrinAgentCds
    Left = 257
    Top = 73
  end
  object AccountHeadsSds: TSQLDataSet
    CommandText = 
      'SELECT AccountHeads_id, AccountHeadsNo, Description, folio'#13#10'FROM' +
      ' accountheads a'#13#10'     LEFT JOIN folios f ON a.folios_id = f.foli' +
      'os_id'#13#10'ORDER BY AccountHeadsNo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 200
    Top = 104
  end
  object AccountHeadsDsp: TDataSetProvider
    DataSet = AccountHeadsSds
    Left = 216
    Top = 104
  end
  object AccountHeadsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AccountHeadsDsp'
    Left = 240
    Top = 104
    object AccountHeadsCdsAccountHeads_id: TIntegerField
      FieldName = 'AccountHeads_id'
    end
    object AccountHeadsCdsAccountHeadsNo: TIntegerField
      FieldName = 'AccountHeadsNo'
    end
    object AccountHeadsCdsDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object AccountHeadsCdsfolio: TStringField
      FieldName = 'folio'
      Size = 50
    end
  end
  object AccountHeadsDS: TDataSource
    DataSet = AccountHeadsCds
    Left = 256
    Top = 104
  end
  object CountriesSds: TSQLDataSet
    CommandText = 'SELECT Countries_id, Country'#13#10'FROM Countries c'#13#10'ORDER BY Country'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 200
    Top = 136
  end
  object CountriesDsp: TDataSetProvider
    DataSet = CountriesSds
    Left = 216
    Top = 136
  end
  object CountriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CountriesDsp'
    Left = 232
    Top = 136
    object CountriesCdsCountries_id: TIntegerField
      FieldName = 'Countries_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CountriesCdsCountry: TStringField
      FieldName = 'Country'
      Size = 50
    end
  end
  object CountriesDs: TDataSource
    DataSet = CountriesCds
    Left = 256
    Top = 136
  end
end
