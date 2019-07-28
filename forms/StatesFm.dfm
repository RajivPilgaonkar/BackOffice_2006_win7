inherited StatesForm: TStatesForm
  Left = 317
  Top = 21
  Width = 1024
  Height = 621
  Caption = 'States'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1008
    Height = 20
  end
  inherited Panel2: TPanel
    Top = 542
    Width = 1008
    TabOrder = 3
    object KeyIdDbText: TDBText
      Left = 656
      Top = 16
      Width = 65
      Height = 17
      DataField = 'states_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CloseBtn: TBitBtn
      Left = 800
      Top = 8
      Width = 73
      Height = 27
      TabOrder = 0
      Kind = bkClose
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 20
    Width = 1008
    Height = 357
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 1
    object CustomMasterCxGrid: TcxGrid
      Left = 1
      Top = 1
      Width = 512
      Height = 355
      Align = alLeft
      TabOrder = 0
      object CustomMasterCxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MasterDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
        Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
        object CustomMasterCxGridDBTableView1statecode: TcxGridDBColumn
          Caption = 'StateCode'
          DataBinding.FieldName = 'statecode'
          SortIndex = 0
          SortOrder = soAscending
          Width = 70
        end
        object CustomMasterCxGridDBTableView1state: TcxGridDBColumn
          Caption = 'State'
          DataBinding.FieldName = 'state'
          Width = 105
        end
        object CustomMasterCxGridDBTableView1Countries_id: TcxGridDBColumn
          Caption = 'Country'
          DataBinding.FieldName = 'countries_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'countries_id'
          Properties.ListColumns = <
            item
              FieldName = 'country'
            end>
          Properties.ListSource = BackOfficeDataModule.CountriesDS
          Width = 72
        end
        object CustomMasterCxGridDBTableView1printstate: TcxGridDBColumn
          Caption = 'Print StateName'
          DataBinding.FieldName = 'printstate'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 106
        end
        object CustomMasterCxGridDBTableView1CentralCities_id: TcxGridDBColumn
          Caption = 'Central City'
          DataBinding.FieldName = 'CentralCities_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = CitiesDS
          Options.Filtering = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 80
        end
        object CustomMasterCxGridDBTableView1Display: TcxGridDBColumn
          DataBinding.FieldName = 'Display'
          Width = 48
        end
        object CustomMasterCxGridDBTableView1TextX: TcxGridDBColumn
          Caption = 'Text X'
          DataBinding.FieldName = 'textX'
          Visible = False
        end
        object CustomMasterCxGridDBTableView1TextY: TcxGridDBColumn
          Caption = 'Text Y'
          DataBinding.FieldName = 'textY'
          Visible = False
        end
        object CustomMasterCxGridDBTableView1Code: TcxGridDBColumn
          Caption = 'Code'
          DataBinding.FieldName = 'code'
          Visible = False
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
      object CustomMasterCxGridLevel1: TcxGridLevel
        GridView = CustomMasterCxGridDBTableView1
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 513
      Top = 1
      Width = 494
      Height = 355
      ActivePage = cxTabSheet6
      Align = alClient
      TabOrder = 1
      ClientRectBottom = 349
      ClientRectLeft = 3
      ClientRectRight = 488
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'State Info'
        ImageIndex = 0
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'writeup'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 323
          Width = 485
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Gen Info'
        ImageIndex = 1
        object cxDBMemo2: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'generalinfo'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 323
          Width = 485
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Web Writeup'
        ImageIndex = 2
        object cxDBMemo3: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'WebWriteUp'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 323
          Width = 485
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'One Liner'
        ImageIndex = 3
        object cxDBMemo4: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'oneliner'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 323
          Width = 485
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Keywords'
        ImageIndex = 4
        object Label1: TLabel
          Left = 0
          Top = 128
          Width = 97
          Height = 13
          Caption = 'Meta Description'
        end
        object Label2: TLabel
          Left = 0
          Top = 9
          Width = 17
          Height = 13
          Caption = 'Url'
        end
        object Label3: TLabel
          Left = 1
          Top = 33
          Width = 58
          Height = 13
          Caption = 'Meta Title'
        end
        object Label4: TLabel
          Left = 1
          Top = 57
          Width = 76
          Height = 13
          Caption = 'Meta Keywds'
        end
        object cxDBMemo5: TcxDBMemo
          Left = 0
          Top = 144
          DataBinding.DataField = 'Meta_Descr'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 185
          Width = 457
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 80
          Top = 8
          DataBinding.DataField = 'url'
          DataBinding.DataSource = MasterDS
          TabOrder = 1
          Width = 380
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 80
          Top = 32
          DataBinding.DataField = 'Meta_Title'
          DataBinding.DataSource = MasterDS
          TabOrder = 2
          Width = 383
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 80
          Top = 56
          DataBinding.DataField = 'Meta_Keywords'
          DataBinding.DataSource = MasterDS
          TabOrder = 3
          Width = 383
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'Path'
        ImageIndex = 5
        object cxDBMemo6: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'path'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 323
          Width = 485
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter [3]
    Left = 0
    Top = 377
    Width = 1008
    Height = 4
    HotZoneClassName = 'TcxMediaPlayer8Style'
    AlignSplitter = salTop
    Control = Panel3
  end
  object Panel4: TPanel [4]
    Left = 0
    Top = 384
    Width = 1008
    Height = 158
    Align = alBottom
    Caption = 'Panel4'
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1006
      Height = 156
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = Detail1DS
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
        object cxGridDBTableView1taxes_id: TcxGridDBColumn
          Caption = 'Tax Type'
          DataBinding.FieldName = 'taxes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'taxes_id'
          Properties.ListColumns = <
            item
              FieldName = 'tax'
            end>
          Properties.ListSource = BackOfficeDataModule.TaxeDS
          SortIndex = 0
          SortOrder = soAscending
          Width = 177
        end
        object cxGridDBTableView1wef: TcxGridDBColumn
          Caption = 'WEF'
          DataBinding.FieldName = 'wef'
          Width = 108
        end
        object cxGridDBTableView1ac: TcxGridDBColumn
          Caption = 'A/C'
          DataBinding.FieldName = 'ac'
          Width = 65
        end
        object cxGridDBTableView1nonac: TcxGridDBColumn
          Caption = 'Non A/C'
          DataBinding.FieldName = 'nonac'
          Width = 80
        end
        object cxGridDBTableView1fromrate: TcxGridDBColumn
          Caption = 'FromRate'
          DataBinding.FieldName = 'fromrate'
          Width = 104
        end
        object cxGridDBTableView1torate: TcxGridDBColumn
          Caption = 'ToRate'
          DataBinding.FieldName = 'torate'
          Width = 107
        end
        object cxGridDBTableView1publishedrate: TcxGridDBColumn
          Caption = 'PublishedRate'
          DataBinding.FieldName = 'publishedrate'
          Width = 119
        end
        object cxGridDBTableView1star: TcxGridDBColumn
          Caption = 'Star'
          DataBinding.FieldName = 'star'
        end
        object cxGridDBTableView1states_id: TcxGridDBColumn
          DataBinding.FieldName = 'states_id'
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'states'
    CommandType = ctTable
    Left = 48
    Top = 96
  end
  inherited MasterDataSetProvider: TDataSetProvider
    Left = 64
    Top = 96
  end
  inherited MasterDS: TDataSource
    Left = 80
    Top = 96
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'StateCode'
    AfterInsert = MasterCdsAfterInsert
    Left = 96
    Top = 96
    object MasterCdsstatecode: TStringField
      FieldName = 'statecode'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
    object MasterCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
    object MasterCdsstates_id: TIntegerField
      FieldName = 'states_id'
    end
    object MasterCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object MasterCdsprintstate: TBooleanField
      FieldName = 'printstate'
    end
    object MasterCdsoneliner: TStringField
      FieldName = 'oneliner'
      Size = 250
    end
    object MasterCdsgeneralinfo: TMemoField
      FieldName = 'generalinfo'
      BlobType = ftMemo
    end
    object MasterCdsWebWriteUp: TMemoField
      FieldName = 'WebWriteUp'
      BlobType = ftMemo
    end
    object MasterCdswriteup: TMemoField
      FieldName = 'writeup'
      BlobType = ftMemo
    end
    object MasterCdsCentralCities_id: TIntegerField
      FieldName = 'CentralCities_id'
    end
    object MasterCdsurl: TStringField
      FieldName = 'url'
      Size = 100
    end
    object MasterCdsDisplay: TBooleanField
      FieldName = 'Display'
    end
    object MasterCdsMeta_Descr: TMemoField
      FieldName = 'Meta_Descr'
      BlobType = ftMemo
    end
    object MasterCdsMeta_Title: TStringField
      FieldName = 'Meta_Title'
      Size = 256
    end
    object MasterCdsMeta_Keywords: TStringField
      FieldName = 'Meta_Keywords'
      Size = 256
    end
    object MasterCdstextX: TIntegerField
      FieldName = 'textX'
    end
    object MasterCdstextY: TIntegerField
      FieldName = 'textY'
    end
    object MasterCdspath: TMemoField
      FieldName = 'path'
      BlobType = ftMemo
    end
    object MasterCdscode: TStringField
      FieldName = 'code'
      Size = 10
    end
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'statetaxes'
    CommandType = ctTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 144
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 64
    Top = 144
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 80
    Top = 144
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'states_id'
    MasterFields = 'states_id'
    MasterSource = MasterDS
    PacketRecords = 0
    AfterInsert = Detail1CdsAfterInsert
    Left = 96
    Top = 144
    object Detail1Cdsstatetaxes_id: TIntegerField
      FieldName = 'statetaxes_id'
    end
    object Detail1Cdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object Detail1Cdstax: TBCDField
      FieldName = 'tax'
      Precision = 10
      Size = 2
    end
    object Detail1Cdstaxes_id: TIntegerField
      FieldName = 'taxes_id'
    end
    object Detail1Cdsac: TBooleanField
      FieldName = 'ac'
    end
    object Detail1Cdsnonac: TBooleanField
      FieldName = 'nonac'
    end
    object Detail1Cdsfromrate: TBCDField
      FieldName = 'fromrate'
      Precision = 10
      Size = 2
    end
    object Detail1Cdstorate: TBCDField
      FieldName = 'torate'
      Precision = 10
      Size = 2
    end
    object Detail1Cdspublishedrate: TBooleanField
      FieldName = 'publishedrate'
    end
    object Detail1Cdsstates_id: TIntegerField
      FieldName = 'states_id'
    end
    object Detail1Cdsstar: TIntegerField
      FieldName = 'star'
    end
  end
  object CitiesSds: TSQLDataSet
    CommandText = 'select cities_id, city, States_id'#13#10'from cities c '#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 224
    Top = 88
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 240
    Top = 88
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 256
    Top = 88
    object CitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object CitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdsStates_id: TIntegerField
      FieldName = 'States_id'
    end
  end
  object CitiesDS: TDataSource
    DataSet = CitiesCds
    Left = 280
    Top = 88
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 424
    Top = 106
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 438
    Top = 107
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 456
    Top = 106
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
    Left = 468
    Top = 106
  end
end
