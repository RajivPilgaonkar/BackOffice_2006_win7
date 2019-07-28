object ShortestDriveForm: TShortestDriveForm
  Left = 170
  Top = 159
  Width = 739
  Height = 521
  Caption = 'ShortestDriveForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 451
    Width = 714
    Height = 41
    Align = alBottom
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 714
    Height = 65
    Align = alTop
    TabOrder = 1
    object GroupBox2: TcxGroupBox
      Left = 4
      Top = 3
      Caption = 'From City'
      TabOrder = 0
      Height = 49
      Width = 257
      object cxFromCityLCMB: TcxLookupComboBox
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
        Properties.ListSource = FromCitiesDS
        Properties.ValidateOnEnter = False
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        Width = 241
      end
    end
    object GroupBox1: TcxGroupBox
      Left = 307
      Top = 4
      Caption = 'To City'
      TabOrder = 1
      Height = 49
      Width = 257
      object cxToCityLCMB: TcxLookupComboBox
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
        Properties.ListSource = FromCitiesDS
        Properties.ValidateOnEnter = False
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        Width = 241
      end
    end
    object cxDisplayButton: TcxButton
      Left = 584
      Top = 18
      Width = 89
      Height = 25
      Caption = 'Display'
      TabOrder = 2
      OnClick = cxDisplayButtonClick
    end
  end
  object CustomMasterCxGrid: TcxGrid
    Left = 0
    Top = 65
    Width = 714
    Height = 386
    Align = alTop
    TabOrder = 2
    object CustomMasterCxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DriveDs
      DataController.KeyFieldNames = 'RowID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,##0'
          Kind = skSum
          Column = CustomMasterCxGridDBTableView1Cost2
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Appending = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
      Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
      object CustomMasterCxGridDBTableView1RowID: TcxGridDBColumn
        DataBinding.FieldName = 'RowID'
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
      end
      object CustomMasterCxGridDBTableView1FromNodeName: TcxGridDBColumn
        Caption = 'From City'
        DataBinding.FieldName = 'FromNodeName'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
      end
      object CustomMasterCxGridDBTableView1ToNodeName: TcxGridDBColumn
        Caption = 'To City'
        DataBinding.FieldName = 'ToNodeName'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
      end
      object CustomMasterCxGridDBTableView1Cost2: TcxGridDBColumn
        Caption = 'Kms'
        DataBinding.FieldName = 'Cost2'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
      end
      object CustomMasterCxGridDBTableView1Cost: TcxGridDBColumn
        Caption = 'Cumulative Kms'
        DataBinding.FieldName = 'Cost'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
        Width = 139
      end
      object CustomMasterCxGridDBTableView1FromNodes_id: TcxGridDBColumn
        DataBinding.FieldName = 'FromNodes_id'
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
      end
      object CustomMasterCxGridDBTableView1ToNodes_id: TcxGridDBColumn
        DataBinding.FieldName = 'ToNodes_id'
        Visible = False
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Sorting = False
      end
    end
    object CustomMasterCxGridLevel1: TcxGridLevel
      GridView = CustomMasterCxGridDBTableView1
    end
  end
  object FromCitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state, country'#13#10'from cities c '#13#10'left joi' +
      'n states s on c.states_id = s.states_id'#13#10'left join countries on ' +
      'c.countries_id = countries.countries_id'#13#10'where cities_id in (sel' +
      'ect from_cities_id from Distances)'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 120
    Top = 32
  end
  object FromCitiesDsp: TDataSetProvider
    DataSet = FromCitiesSds
    Left = 136
    Top = 32
  end
  object FromCitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FromCitiesDsp'
    Left = 152
    Top = 32
    object FromCitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object FromCitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object FromCitiesCdscountry: TStringField
      FieldName = 'country'
      Size = 50
    end
    object FromCitiesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object FromCitiesDS: TDataSource
    DataSet = FromCitiesCds
    Left = 168
    Top = 32
  end
  object ToCitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state, country'#13#10'from cities c '#13#10'left joi' +
      'n states s on c.states_id = s.states_id'#13#10'left join countries on ' +
      'c.countries_id = countries.countries_id'#13#10'where cities_id in (sel' +
      'ect from_cities_id from Distances)'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 368
    Top = 24
  end
  object ToCitiesDsp: TDataSetProvider
    DataSet = ToCitiesSds
    Left = 384
    Top = 24
  end
  object ToCitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ToCitiesDsp'
    Left = 400
    Top = 24
    object IntegerField1: TIntegerField
      FieldName = 'cities_id'
    end
    object StringField1: TStringField
      FieldName = 'city'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'country'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object ToCitiesDS: TDataSource
    DataSet = ToCitiesCds
    Left = 416
    Top = 24
  end
  object DriveSds: TSQLDataSet
    CommandText = 'exec p_QuoShortestRoute '#39'Agra'#39', '#39'Amritsar'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 144
  end
  object DriveDsp: TDataSetProvider
    DataSet = DriveSds
    Left = 64
    Top = 144
  end
  object DriveDs: TDataSource
    DataSet = DriveCds
    Left = 80
    Top = 144
  end
  object DriveCds: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'DriveDsp'
    Left = 88
    Top = 144
    object DriveCdsRowID: TIntegerField
      FieldName = 'RowID'
    end
    object DriveCdsFromNodeName: TStringField
      FieldName = 'FromNodeName'
    end
    object DriveCdsToNodeName: TStringField
      FieldName = 'ToNodeName'
    end
    object DriveCdsCost: TIntegerField
      FieldName = 'Cost'
      DisplayFormat = '#,##0'
    end
    object DriveCdsCost2: TIntegerField
      FieldName = 'Cost2'
      DisplayFormat = '#,##0'
    end
    object DriveCdsFromNodes_id: TIntegerField
      FieldName = 'FromNodes_id'
    end
    object DriveCdsToNodes_id: TIntegerField
      FieldName = 'ToNodes_id'
    end
  end
end
