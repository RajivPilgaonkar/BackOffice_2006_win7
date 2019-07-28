inherited CityGroupsForm: TCityGroupsForm
  Left = 93
  Top = 76
  Width = 813
  Height = 672
  Caption = 'City Group'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 61
    TabOrder = 1
    Height = 532
    Width = 797
    inherited CustomMasterCxGrid: TcxGrid
      Width = 791
      Height = 330
      Align = alTop
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'CarHireGroups_id'
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1CarHireGroups_id: TcxGridDBColumn
          DataBinding.FieldName = 'CarHireGroups_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1CarHireGroup: TcxGridDBColumn
          Caption = 'City Group'
          DataBinding.FieldName = 'CarHireGroup'
          Options.Filtering = False
          Options.Grouping = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 459
        end
        object CustomMasterCxGridDBTableView1DefaultAgentLookup: TcxGridDBColumn
          Caption = 'Default Agent'
          DataBinding.FieldName = 'DefaultAgentLookup'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = CustomMasterCxGridDBTableView1DefaultAgentLookupPropertiesButtonClick
          Options.Filtering = False
          Options.Grouping = False
          Width = 309
        end
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 345
      Width = 552
      Height = 197
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 550
        Height = 195
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = Detail1Ds
          DataController.KeyFieldNames = 'CarHireGroupCities_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object cxGridDBTableView1CarHireGroupCities_id: TcxGridDBColumn
            DataBinding.FieldName = 'CarHireGroupCities_id'
            Visible = False
            Options.Editing = False
          end
          object cxGridDBTableView1CarHireGroups_id: TcxGridDBColumn
            DataBinding.FieldName = 'CarHireGroups_id'
            Visible = False
            Options.Editing = False
          end
          object cxGridDBTableView1OrderNo: TcxGridDBColumn
            Caption = 'Order No'
            DataBinding.FieldName = 'OrderNo'
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGridDBTableView1Cities_id: TcxGridDBColumn
            Caption = 'City'
            DataBinding.FieldName = 'Cities_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'city'
              end>
            Properties.ListSource = CitiesDS
            Options.Filtering = False
            Options.Grouping = False
            Width = 352
          end
          object cxGridDBTableView1Nights: TcxGridDBColumn
            DataBinding.FieldName = 'Nights'
            Options.Filtering = False
            Options.Grouping = False
            Width = 66
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 593
    Width = 797
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 641
      Top = 13
      DataField = 'CarHireGroups_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 716
      Top = 7
    end
  end
  inherited Panel2: TPanel
    Width = 797
    Height = 61
    TabOrder = 0
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'CarHireGroups'
    Top = 144
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 64
    Top = 144
  end
  inherited MasterDS: TDataSource
    Left = 80
    Top = 144
  end
  inherited MasterCds: TClientDataSet
    Filtered = True
    IndexFieldNames = 'CarHireGroups_id'
    Left = 88
    Top = 144
    object MasterCdsCarHireGroups_id: TIntegerField
      FieldName = 'CarHireGroups_id'
    end
    object MasterCdsCarHireGroup: TStringField
      FieldName = 'CarHireGroup'
      Size = 200
    end
    object MasterCdsDefaultAgents_id: TIntegerField
      FieldName = 'DefaultAgents_id'
    end
    object MasterCdsDefaultAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'DefaultAgentLookup'
      LookupDataSet = AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'OrgCity'
      KeyFields = 'DefaultAgents_id'
      Size = 100
      Lookup = True
    end
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state, country'#13#10'from cities c '#13#10'left joi' +
      'n states s on c.states_id = s.states_id'#13#10'left join countries on ' +
      's.countries_id = countries.countries_id'#13#10'where (s.countries_id =' +
      ' 200 OR c.NightHalt = 1)'#13#10'order by city'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 312
    Top = 16
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 328
    Top = 16
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 344
    Top = 16
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
  object CitiesDS: TDataSource
    DataSet = CitiesCds
    Left = 360
    Top = 16
  end
  object Detail1Sds: TSQLDataSet
    CommandText = 'CarHireGroupCities'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 512
  end
  object Detail1Dsp: TDataSetProvider
    DataSet = Detail1Sds
    Left = 64
    Top = 512
  end
  object Detail1Ds: TDataSource
    DataSet = Detail1Cds
    Left = 80
    Top = 512
  end
  object Detail1Cds: TClientDataSet
    Aggregates = <>
    Filtered = True
    IndexFieldNames = 'CarHireGroups_id'
    MasterFields = 'CarHireGroups_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'Detail1Dsp'
    BeforePost = Detail1CdsBeforePost
    AfterPost = Detail1CdsAfterPost
    AfterDelete = Detail1CdsAfterDelete
    Left = 88
    Top = 512
    object Detail1CdsCarHireGroupCities_id: TIntegerField
      FieldName = 'CarHireGroupCities_id'
    end
    object Detail1CdsCarHireGroups_id: TIntegerField
      FieldName = 'CarHireGroups_id'
    end
    object Detail1CdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object Detail1CdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object Detail1CdsNights: TIntegerField
      FieldName = 'Nights'
    end
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'select *, Organisation + '#39', '#39' + City AS OrgCity '#13#10'from dbo.fn_ad' +
      'dressbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 440
    Top = 24
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 456
    Top = 24
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 472
    Top = 24
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
    object AgentCdsOrgCity: TStringField
      FieldName = 'OrgCity'
      Size = 356
    end
  end
  object AgentDS: TDataSource
    DataSet = AgentCds
    Left = 488
    Top = 24
  end
end
