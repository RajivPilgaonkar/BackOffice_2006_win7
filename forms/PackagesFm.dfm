inherited PackagesForm: TPackagesForm
  Left = 286
  Top = 66
  Width = 1011
  Height = 614
  Caption = 'Packages'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 61
    TabOrder = 1
    Height = 396
    Width = 995
    inherited CustomMasterCxGrid: TcxGrid
      Width = 989
      Height = 375
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1package: TcxGridDBColumn
          Caption = 'Package'
          DataBinding.FieldName = 'package'
          SortIndex = 0
          SortOrder = soAscending
          Width = 62
        end
        object CustomMasterCxGridDBTableView1PackageDescription: TcxGridDBColumn
          Caption = 'Description'
          DataBinding.FieldName = 'PackageDescription'
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 157
        end
        object CustomMasterCxGridDBTableView1addressbook_id: TcxGridDBColumn
          Caption = 'Agent'
          DataBinding.FieldName = 'addressbook_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'Addressbook_id'
          Properties.ListColumns = <
            item
              MinWidth = 150
              FieldName = 'Organisation'
            end
            item
              MinWidth = 150
              FieldName = 'City'
            end>
          Properties.ListSource = BackOfficeDataModule.AgentDS
          Width = 111
        end
        object CustomMasterCxGridDBTableView1private: TcxGridDBColumn
          Caption = 'Private'
          DataBinding.FieldName = 'private'
          Width = 48
        end
        object CustomMasterCxGridDBTableView1from_cities_id: TcxGridDBColumn
          Caption = 'From City'
          DataBinding.FieldName = 'from_cities_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Width = 78
        end
        object CustomMasterCxGridDBTableView1duration: TcxGridDBColumn
          Caption = 'Duration'
          DataBinding.FieldName = 'duration'
          Width = 70
        end
        object CustomMasterCxGridDBTableView1from_time: TcxGridDBColumn
          Caption = 'From Time'
          DataBinding.FieldName = 'from_time'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.ImmediatePost = True
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Width = 70
        end
        object CustomMasterCxGridDBTableView1to_cities_id: TcxGridDBColumn
          Caption = 'To City '
          DataBinding.FieldName = 'to_cities_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Width = 76
        end
        object CustomMasterCxGridDBTableView1to_time: TcxGridDBColumn
          Caption = 'To Time'
          DataBinding.FieldName = 'to_time'
          PropertiesClassName = 'TcxTimeEditProperties'
          Properties.ImmediatePost = True
          Properties.TimeFormat = tfHourMin
          Properties.UseCtrlIncrement = True
          Width = 58
        end
        object CustomMasterCxGridDBTableView1nights: TcxGridDBColumn
          Caption = 'Nights'
          DataBinding.FieldName = 'nights'
          Width = 43
        end
        object CustomMasterCxGridDBTableView1active: TcxGridDBColumn
          Caption = 'Active'
          DataBinding.FieldName = 'active'
          Width = 47
        end
        object CustomMasterCxGridDBTableView1domesticclients: TcxGridDBColumn
          Caption = 'Domestic'
          DataBinding.FieldName = 'domesticclients'
          Width = 62
        end
        object CustomMasterCxGridDBTableView1daysofoperation: TcxGridDBColumn
          DataBinding.FieldName = 'daysofoperation'
          Visible = False
        end
        object CustomMasterCxGridDBTableView1DaysName: TcxGridDBColumn
          Caption = 'Days'
          DataBinding.FieldName = 'DaysName'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = CustomMasterCxGridDBTableView1DaysNamePropertiesButtonClick
          Width = 85
        end
        object CustomMasterCxGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn
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
        end
        object CustomMasterCxGridDBTableView1ModifiedOn: TcxGridDBColumn
          Caption = 'Modified On'
          DataBinding.FieldName = 'ModifiedOn'
          Visible = False
          Options.Editing = False
          Width = 80
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 457
    Width = 995
    Height = 119
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 776
      Top = 89
      DataField = 'packages_id'
    end
    object Label1: TLabel [1]
      Left = 4
      Top = 8
      Width = 35
      Height = 13
      Caption = 'Image'
    end
    inherited SearchLbl: TcxLabel
      Left = 23
      Top = 93
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Left = 72
      Top = 88
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 864
      Top = 82
      Height = 31
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 43
      Top = 4
      DataBinding.DataField = 'image'
      DataBinding.DataSource = MasterDS
      Style.Color = 12246236
      TabOrder = 2
      Width = 958
    end
    object cxDBMemo1: TcxDBMemo
      Left = 8
      Top = 28
      DataBinding.DataField = 'description'
      DataBinding.DataSource = MasterDS
      Style.Color = 12246236
      TabOrder = 3
      Height = 49
      Width = 993
    end
  end
  inherited Panel2: TPanel
    Width = 995
    Height = 61
    TabOrder = 0
    object GroupBox2: TcxGroupBox
      Left = 8
      Top = 4
      Caption = 'Select City'
      TabOrder = 0
      Height = 49
      Width = 257
      object cxCityLCMB: TcxLookupComboBox
        Left = 8
        Top = 24
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'cities_id'
        Properties.ListColumns = <
          item
            MinWidth = 150
            FieldName = 'city'
          end
          item
            MinWidth = 150
            FieldName = 'state'
          end>
        Properties.ListSource = CitiesDS
        Properties.ValidateOnEnter = False
        Properties.OnEditValueChanged = cxCityLCMBPropertiesEditValueChanged
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        Width = 241
      end
    end
    object ActiveChk: TcxCheckBox
      Left = 343
      Top = 20
      Caption = 'Active'
      State = cbsGrayed
      TabOrder = 1
      OnClick = ActiveChkClick
      Width = 88
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'packages'
    Left = 472
    Top = 16
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 488
    Top = 16
  end
  inherited MasterDS: TDataSource
    Left = 504
    Top = 16
  end
  inherited MasterCds: TClientDataSet
    Filtered = True
    IndexFieldNames = 'from_cities_id'
    MasterFields = 'cities_id'
    MasterSource = CitiesDS
    AfterInsert = MasterCdsAfterInsert
    OnCalcFields = MasterCdsCalcFields
    Left = 512
    Top = 16
    object MasterCdspackages_id: TIntegerField
      FieldName = 'packages_id'
    end
    object MasterCdspackage: TStringField
      FieldName = 'package'
      Size = 50
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsprivate: TBooleanField
      FieldName = 'private'
    end
    object MasterCdsduration: TStringField
      FieldName = 'duration'
      Size = 254
    end
    object MasterCdsdaysofoperation: TSmallintField
      FieldName = 'daysofoperation'
    end
    object MasterCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object MasterCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object MasterCdsfrom_time: TSQLTimeStampField
      FieldName = 'from_time'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object MasterCdsto_time: TSQLTimeStampField
      FieldName = 'to_time'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object MasterCdsactive: TBooleanField
      FieldName = 'active'
    end
    object MasterCdsdomesticclients: TSmallintField
      FieldName = 'domesticclients'
    end
    object MasterCdsdescription: TStringField
      FieldName = 'description'
      Size = 254
    end
    object MasterCdsimage: TStringField
      FieldName = 'image'
      Size = 50
    end
    object MasterCdsnights: TIntegerField
      FieldName = 'nights'
    end
    object MasterCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Size = 80
      Calculated = True
    end
    object MasterCdsInclusion: TMemoField
      FieldName = 'Inclusion'
      BlobType = ftMemo
    end
    object MasterCdsPackageDescription: TStringField
      FieldName = 'PackageDescription'
      Size = 100
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state, country'#13#10'from cities c '#13#10'left joi' +
      'n states s on c.states_id = s.states_id'#13#10'left join countries on ' +
      'c.countries_id = countries.countries_id'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 264
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 280
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 296
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
    Left = 312
  end
  object PopupMenu1: TPopupMenu
    Left = 192
    Top = 197
    object PackageDetails1: TMenuItem
      Caption = 'Package Details'
      OnClick = PackageDetails1Click
    end
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 640
    Top = 122
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 654
    Top = 123
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 672
    Top = 122
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
    Left = 684
    Top = 122
  end
end
