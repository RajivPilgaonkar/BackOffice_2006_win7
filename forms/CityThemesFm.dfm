inherited CityThemesForm: TCityThemesForm
  Left = 503
  Width = 456
  Height = 598
  Caption = 'City Themes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Height = 482
    Width = 448
    inherited CustomMasterCxGrid: TcxGrid
      Width = 442
      Height = 461
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'CityThemes_id'
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1CityThemes_id: TcxGridDBColumn
          DataBinding.FieldName = 'CityThemes_id'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1Cities_id: TcxGridDBColumn
          DataBinding.FieldName = 'Cities_id'
          Visible = False
          Options.Editing = False
        end
        object CustomMasterCxGridDBTableView1Themes_id: TcxGridDBColumn
          Caption = 'Theme'
          DataBinding.FieldName = 'Themes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'Themes_id'
          Properties.ListColumns = <
            item
              FieldName = 'Title'
            end>
          Properties.ListSource = ThemeDs
          Options.SortByDisplayText = isbtOn
          SortIndex = 0
          SortOrder = soAscending
          Width = 180
        end
        object CustomMasterCxGridDBTableView1SubThemes_id: TcxGridDBColumn
          Caption = 'Sub Theme'
          DataBinding.FieldName = 'SubThemes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'SubThemes_id'
          Properties.ListColumns = <
            item
              FieldName = 'SubTheme'
            end>
          Properties.ListSource = SubThemeDs
          Width = 211
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 523
    Width = 448
    inherited KeyIdDbText: TDBText
      Left = 244
      Top = 13
      Width = 69
      Height = 16
      DataField = 'CityThemes_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 331
      Width = 70
    end
  end
  inherited Panel2: TPanel
    Width = 448
    object CityNameLabel: TLabel
      Left = 16
      Top = 16
      Width = 85
      Height = 13
      Caption = 'CityNameLabel'
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'CityThemes'
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    object MasterCdsCityThemes_id: TIntegerField
      FieldName = 'CityThemes_id'
    end
    object MasterCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object MasterCdsThemes_id: TIntegerField
      FieldName = 'Themes_id'
    end
    object MasterCdsSubThemes_id: TIntegerField
      FieldName = 'SubThemes_id'
    end
  end
  object ThemeSds: TSQLDataSet
    CommandText = 'SELECT Themes_id, Title'#13#10'FROM Themes'#13#10'ORDER BY Title'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 112
  end
  object ThemeDsp: TDataSetProvider
    DataSet = ThemeSds
    Left = 80
    Top = 112
  end
  object ThemeDs: TDataSource
    DataSet = ThemeCds
    Left = 120
    Top = 112
  end
  object ThemeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ThemeDsp'
    BeforeInsert = MasterCdsBeforeInsert
    AfterInsert = MasterCdsAfterInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 152
    Top = 112
    object ThemeCdsThemes_id: TIntegerField
      FieldName = 'Themes_id'
    end
    object ThemeCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
  end
  object SubThemeSds: TSQLDataSet
    CommandText = 'SELECT SubThemes_id, SubTheme'#13#10'FROM SubThemes'#13#10'ORDER BY SubTheme'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 152
  end
  object SubThemeDsp: TDataSetProvider
    DataSet = SubThemeSds
    Left = 80
    Top = 152
  end
  object SubThemeDs: TDataSource
    DataSet = SubThemeCds
    Left = 120
    Top = 152
  end
  object SubThemeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'SubThemeDsp'
    BeforeInsert = MasterCdsBeforeInsert
    AfterInsert = MasterCdsAfterInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 152
    Top = 152
    object SubThemeCdsSubThemes_id: TIntegerField
      FieldName = 'SubThemes_id'
    end
    object SubThemeCdsSubTheme: TStringField
      FieldName = 'SubTheme'
      Size = 100
    end
  end
end
