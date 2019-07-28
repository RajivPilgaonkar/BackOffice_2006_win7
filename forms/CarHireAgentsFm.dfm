inherited CarHireAgentsForm: TCarHireAgentsForm
  Width = 566
  Height = 537
  Caption = 'Car Hire Agents'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 550
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 22
      Height = 13
      Caption = 'City'
      Transparent = True
    end
    object cxCityLcmb: TcxLookupComboBox
      Left = 54
      Top = 14
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = CitiesDS
      Properties.OnEditValueChanged = cxCityLcmbPropertiesEditValueChanged
      TabOrder = 0
      Width = 232
    end
  end
  inherited Panel2: TPanel
    Top = 458
    Width = 550
    inherited cxButtonClose: TcxButton
      Left = 472
    end
    inherited cxDBLabelKeyId: TcxDBLabel
      Left = 396
    end
  end
  inherited Panel3: TPanel
    Width = 550
    Height = 417
    inherited cxPageControl1: TcxPageControl
      Width = 548
      Height = 415
      ClientRectBottom = 409
      ClientRectRight = 542
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Car Hire Agents'
        inherited cxGrid1: TcxGrid
          Width = 539
          Height = 383
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'carhireagents_id'
            object cxGrid1DBBandedTableView1CarHireAgents_id: TcxGridDBBandedColumn
              Caption = 'CarHireAgents_id'
              DataBinding.FieldName = 'carhireagents_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'cities_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              VisibleForCustomization = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1AddressBook_id: TcxGridDBBandedColumn
              Caption = 'Agent'
              DataBinding.FieldName = 'addressbook_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 400
              Properties.KeyFieldNames = 'Addressbook_id'
              Properties.ListColumns = <
                item
                  Width = 300
                  FieldName = 'Organisation'
                end
                item
                  Width = 100
                  FieldName = 'City'
                end>
              Properties.ListSource = AgentDS
              Options.SortByDisplayText = isbtOn
              SortIndex = 0
              SortOrder = soAscending
              Width = 245
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Vehicles_id: TcxGridDBBandedColumn
              Caption = 'Vehicle'
              DataBinding.FieldName = 'vehicles_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'Vehicles_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Vehicle'
                end>
              Properties.ListSource = VehicleDS
              Width = 264
              Position.BandIndex = 0
              Position.ColIndex = 3
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
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
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
    CommandText = 'SELECT * FROM CarHireAgents'#13#10'WHERE Cities_id = :Cities_id'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end>
    Left = 360
    Top = 368
  end
  inherited MasterDsp: TDataSetProvider
    Left = 390
    Top = 368
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 423
    Top = 368
    object MasterCdscarhireagents_id: TIntegerField
      FieldName = 'carhireagents_id'
    end
    object MasterCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited MasterDs: TDataSource
    Left = 453
    Top = 368
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state, country'#13#10'from cities c '#13#10'left joi' +
      'n states s on c.states_id = s.states_id'#13#10'left join countries on ' +
      'c.countries_id = countries.countries_id'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 328
    Top = 8
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 344
    Top = 8
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 360
    Top = 8
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
    Left = 376
    Top = 8
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 48
    Top = 160
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
    Top = 160
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 32
    Top = 160
  end
  object AgentSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'A'#39')'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 160
  end
  object VehicleDS: TDataSource
    DataSet = VehicleCds
    Left = 64
    Top = 232
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 48
    Top = 232
    object VehicleCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VehicleCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 32
    Top = 232
  end
  object VehicleSds: TSQLDataSet
    CommandText = 'select Vehicles_id, Vehicle from Vehicles'#13#10'ORDER BY Vehicle'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 232
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 408
    Top = 114
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 422
    Top = 115
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 440
    Top = 114
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
    Left = 452
    Top = 114
  end
end
