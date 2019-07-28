inherited DefaultCarAgentForm: TDefaultCarAgentForm
  Left = 437
  Top = 32
  Height = 600
  Caption = 'Default Car Agent'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 521
  end
  inherited Panel3: TPanel
    Height = 480
    inherited cxPageControl1: TcxPageControl
      Height = 478
      ClientRectBottom = 472
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Default Car Agent'
        inherited cxGrid1: TcxGrid
          Height = 446
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'DefaultCarAgents_id'
            object cxGrid1DBBandedTableView1DefaultCarAgents_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DefaultCarAgents_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 147
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1OrderNo: TcxGridDBBandedColumn
              Caption = 'Order No'
              DataBinding.FieldName = 'OrderNo'
              Options.Filtering = False
              SortIndex = 0
              SortOrder = soAscending
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1StartCities_id: TcxGridDBBandedColumn
              Caption = 'Starts In'
              DataBinding.FieldName = 'StartCities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 150
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Options.Filtering = False
              Options.Sorting = False
              Width = 103
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1EndCities_id: TcxGridDBBandedColumn
              Caption = 'Ends In'
              DataBinding.FieldName = 'EndCities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 150
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Options.Filtering = False
              Options.Sorting = False
              Width = 129
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1EnterStates_id: TcxGridDBBandedColumn
              Caption = 'Enters State'
              DataBinding.FieldName = 'EnterStates_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 150
              Properties.KeyFieldNames = 'states_id'
              Properties.ListColumns = <
                item
                  FieldName = 'state'
                end>
              Properties.ListSource = StatesDs
              Options.Filtering = False
              Options.Sorting = False
              Width = 116
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1EnterCities_id: TcxGridDBBandedColumn
              Caption = 'Enters City'
              DataBinding.FieldName = 'EnterCities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 150
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end>
              Properties.ListSource = CitiesDS
              Options.Filtering = False
              Options.Sorting = False
              Width = 124
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1AgentAddressbook_id: TcxGridDBBandedColumn
              Caption = 'Default Agent'
              DataBinding.FieldName = 'AgentAddressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Organisation'
                end>
              Properties.ListSource = AgentDS
              Options.Sorting = False
              Width = 225
              Position.BandIndex = 0
              Position.ColIndex = 6
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
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
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
    CommandText = 'DefaultCarAgents'
    Left = 624
    Top = 432
  end
  inherited MasterDsp: TDataSetProvider
    Left = 654
    Top = 432
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 687
    Top = 432
    object MasterCdsDefaultCarAgents_id: TIntegerField
      FieldName = 'DefaultCarAgents_id'
    end
    object MasterCdsStartCities_id: TIntegerField
      FieldName = 'StartCities_id'
    end
    object MasterCdsEndCities_id: TIntegerField
      FieldName = 'EndCities_id'
    end
    object MasterCdsEnterStates_id: TIntegerField
      FieldName = 'EnterStates_id'
    end
    object MasterCdsEnterCities_id: TIntegerField
      FieldName = 'EnterCities_id'
    end
    object MasterCdsAgentAddressbook_id: TIntegerField
      FieldName = 'AgentAddressbook_id'
    end
    object MasterCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited MasterDs: TDataSource
    Left = 717
    Top = 432
  end
  inherited PopupMenu1: TPopupMenu
    Left = 73
    Top = 527
  end
  object AgentSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 224
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 32
    Top = 224
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 48
    Top = 224
    object AgentCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AgentCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object AgentCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object AgentCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object AgentCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object AgentDS: TDataSource
    DataSet = AgentCds
    Left = 64
    Top = 224
  end
  object CitiesDS: TDataSource
    DataSet = CitiesCds
    Left = 72
    Top = 120
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 48
    Top = 120
    object CitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object CitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
    object CitiesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 32
    Top = 120
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state, country'#13#10'from cities c '#13#10'left joi' +
      'n states s on c.states_id = s.states_id'#13#10'left join countries on ' +
      'c.countries_id = countries.countries_id'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 120
  end
  object StatesDs: TDataSource
    DataSet = StatesCds
    Left = 64
    Top = 168
  end
  object StatesSds: TSQLDataSet
    CommandText = 
      'select states_id, state, country'#13#10'from states s left join countr' +
      'ies  c on s.countries_id = c.countries_id'#13#10'order by state'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 168
  end
  object StatesDsp: TDataSetProvider
    DataSet = StatesSds
    Left = 32
    Top = 168
  end
  object StatesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'StatesDsp'
    Left = 48
    Top = 168
    object StatesCdsstates_id: TIntegerField
      FieldName = 'states_id'
    end
    object StatesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
    object StatesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
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
