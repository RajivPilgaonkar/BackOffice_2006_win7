inherited SubThemesForm: TSubThemesForm
  Left = 528
  Top = 33
  Width = 870
  Height = 640
  Caption = 'Sub Themes'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 271
    Width = 854
  end
  inherited Panel1: TPanel
    Width = 854
    object cxThemeLCMB: TcxLookupComboBox
      Left = 73
      Top = 15
      Properties.DropDownWidth = 255
      Properties.KeyFieldNames = 'Themes_id'
      Properties.ListColumns = <
        item
          FieldName = 'PageName'
        end>
      Properties.ListSource = ThemeDs
      Properties.OnEditValueChanged = cxThemeLCMBPropertiesEditValueChanged
      TabOrder = 0
      Width = 255
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 16
      Caption = 'Themes'
      Transparent = True
    end
  end
  inherited Panel2: TPanel
    Top = 561
    Width = 854
  end
  inherited Panel3: TPanel
    Width = 854
    Height = 230
    object Splitter2: TSplitter [0]
      Left = 316
      Top = 1
      Height = 228
    end
    inherited cxPageControl1: TcxPageControl
      Width = 315
      Height = 228
      Align = alLeft
      ClientRectBottom = 222
      ClientRectRight = 309
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Sub Themes'
        inherited cxGrid1: TcxGrid
          Width = 306
          Height = 196
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'SubThemes_id'
            object cxGrid1DBBandedTableView1SubThemes_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SubThemes_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Title: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Title'
              SortIndex = 0
              SortOrder = soAscending
              Width = 282
              Position.BandIndex = 0
              Position.ColIndex = 1
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
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
        end
      end
    end
    object cxPageControl3: TcxPageControl
      Left = 319
      Top = 1
      Width = 534
      Height = 228
      ActivePage = cxTabSheet5
      Align = alClient
      TabOrder = 1
      ClientRectBottom = 222
      ClientRectLeft = 3
      ClientRectRight = 528
      ClientRectTop = 26
      object cxTabSheet3: TcxTabSheet
        Caption = 'Introduction'
        ImageIndex = 0
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'Introduction'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 196
          Width = 525
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Sub-Theme'
        ImageIndex = 1
        object cxDBMemo2: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'SubTheme'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 196
          Width = 525
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'One Liner'
        ImageIndex = 3
        object cxDBMemo4: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'OneLiner'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 196
          Width = 525
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 279
    Width = 854
    Height = 282
    object Splitter3: TSplitter [0]
      Left = 316
      Top = 1
      Height = 280
    end
    inherited cxPageControl2: TcxPageControl
      Width = 315
      Height = 280
      Align = alLeft
      ClientRectBottom = 274
      ClientRectRight = 309
      inherited cxTabSheet2: TcxTabSheet
        Caption = 'Cities'
        inherited cxGrid2: TcxGrid
          Width = 306
          Height = 248
          inherited cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            object cxGrid2DBBandedTableView1CityThemes_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CityThemes_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1Cities_id: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'Cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 275
              Properties.KeyFieldNames = 'cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'city'
                end
                item
                  FieldName = 'state'
                end>
              Properties.ListSource = CitiesDS
              Options.SortByDisplayText = isbtOn
              SortIndex = 0
              SortOrder = soAscending
              Width = 275
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
        end
      end
    end
    object cxDBMemo3: TcxDBMemo
      Left = 319
      Top = 1
      Align = alClient
      DataBinding.DataField = 'CitySubTheme'
      DataBinding.DataSource = DetailDs
      TabOrder = 1
      Height = 280
      Width = 534
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM SubThemes'#13#10'WHERE Themes_id = :Themes_id'
    CommandType = ctQuery
    DataSource = ThemeDs
    Params = <
      item
        DataType = ftInteger
        Name = 'Themes_id'
        ParamType = ptInput
        Size = 4
      end>
    Left = 360
  end
  inherited MasterDsp: TDataSetProvider
    Left = 390
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'Themes_id'
    MasterFields = 'Themes_id'
    MasterSource = ThemeDs
    PacketRecords = 0
    AfterInsert = MasterCdsAfterInsert
    Left = 423
    object MasterCdsSubThemes_id: TIntegerField
      FieldName = 'SubThemes_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsThemes_id: TIntegerField
      FieldName = 'Themes_id'
    end
    object MasterCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
    object MasterCdsOneLiner: TStringField
      FieldName = 'OneLiner'
      Size = 254
    end
    object MasterCdsIntroduction: TMemoField
      FieldName = 'Introduction'
      BlobType = ftMemo
    end
    object MasterCdsSubTheme: TMemoField
      FieldName = 'SubTheme'
      BlobType = ftMemo
    end
    object MasterCdsurl: TStringField
      FieldName = 'url'
      Size = 64
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
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 'SELECT * FROM CityThemes'#13#10'WHERE SubThemes_id = :SubThemes_id '#13#10
    CommandType = ctQuery
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'SubThemes_id'
        ParamType = ptInput
      end>
    Left = 520
  end
  inherited DetailDsp: TDataSetProvider
    Left = 550
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'SubThemes_id'
    MasterFields = 'SubThemes_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Left = 583
    object DetailCdsCityThemes_id: TIntegerField
      FieldName = 'CityThemes_id'
    end
    object DetailCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object DetailCdsThemes_id: TIntegerField
      FieldName = 'Themes_id'
    end
    object DetailCdsSubThemes_id: TIntegerField
      FieldName = 'SubThemes_id'
    end
    object DetailCdsCitySubTheme: TMemoField
      FieldName = 'CitySubTheme'
      BlobType = ftMemo
    end
  end
  inherited DetailDs: TDataSource
    Left = 613
  end
  object ThemeSds: TSQLDataSet
    CommandText = 'SELECT Themes_id, PageName '#13#10'FROM Themes'#13#10'ORDER BY PageName'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 152
    Top = 32
  end
  object ThemeDsp: TDataSetProvider
    DataSet = ThemeSds
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 32
  end
  object ThemeCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ThemeDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 216
    Top = 32
    object ThemeCdsThemes_id: TIntegerField
      FieldName = 'Themes_id'
    end
    object ThemeCdsPageName: TStringField
      FieldName = 'PageName'
      Size = 254
    end
  end
  object ThemeDs: TDataSource
    DataSet = ThemeCds
    Left = 248
    Top = 32
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 48
    Top = 392
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
    Left = 72
    Top = 392
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 32
    Top = 392
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'SELECT Cities_id, City, State, Country'#13#10'FROM Cities c '#13#10'LEFT JOI' +
      'N States s ON c.States_id = s.States_id'#13#10'LEFT JOIN Countries ON ' +
      'c.Countries_id = Countries.Countries_id'#13#10'ORDER BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 392
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 680
    Top = 18
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 694
    Top = 19
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 712
    Top = 18
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
    Left = 724
    Top = 18
  end
end
