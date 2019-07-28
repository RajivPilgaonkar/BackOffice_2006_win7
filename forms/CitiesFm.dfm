inherited CitiesForm: TCitiesForm
  Left = 399
  Top = 20
  Width = 897
  Height = 716
  Caption = 'Cities'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 471
    Width = 881
  end
  inherited Panel1: TPanel
    Width = 881
  end
  inherited Panel2: TPanel
    Top = 637
    Width = 881
    object Label5: TLabel [0]
      Left = 144
      Top = 14
      Width = 41
      Height = 13
      Caption = 'Search'
      Transparent = True
    end
    inherited cxButtonUtilities: TcxButton
      PopupMenu = PopupMenu1
      DropDownMenu = PopupMenu1
    end
    object cxSearchEdit: TcxTextEdit
      Left = 193
      Top = 12
      TabOrder = 4
      OnKeyPress = cxSearchEditKeyPress
      Width = 117
    end
  end
  inherited Panel3: TPanel
    Width = 881
    Height = 430
    inherited cxPageControl1: TcxPageControl
      Width = 879
      Height = 428
      ClientRectBottom = 422
      ClientRectRight = 873
      inherited cxTabSheet1: TcxTabSheet
        Caption = 'Cities'
        object Splitter2: TSplitter [0]
          Left = 610
          Top = 0
          Height = 396
        end
        inherited cxGrid1: TcxGrid
          Width = 610
          Height = 396
          Align = alLeft
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            object cxGrid1DBBandedTableView1cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'cities_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1city: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'city'
              SortIndex = 0
              SortOrder = soAscending
              Width = 128
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1citycode: TcxGridDBBandedColumn
              Caption = 'Code'
              DataBinding.FieldName = 'citycode'
              Options.Sorting = False
              Width = 43
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1states_id: TcxGridDBBandedColumn
              Caption = 'State'
              DataBinding.FieldName = 'states_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'States_id'
              Properties.ListColumns = <
                item
                  FieldName = 'State'
                end>
              Properties.ListSource = StatesDs
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1countries_id: TcxGridDBBandedColumn
              Caption = 'Country'
              DataBinding.FieldName = 'countries_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'Countries_id'
              Properties.ListColumns = <
                item
                  FieldName = 'Country'
                end>
              Properties.ListSource = CountriesDs
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1courier: TcxGridDBBandedColumn
              Caption = 'Courier'
              DataBinding.FieldName = 'courier'
              Options.Sorting = False
              Width = 45
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1nighthalt: TcxGridDBBandedColumn
              Caption = 'Night Halt'
              DataBinding.FieldName = 'nighthalt'
              Options.Sorting = False
              Width = 58
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DefaultDays: TcxGridDBBandedColumn
              Caption = 'Default Days'
              DataBinding.FieldName = 'DefaultDays'
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1pic1: TcxGridDBBandedColumn
              Caption = 'Pic1'
              DataBinding.FieldName = 'pic1'
              Visible = False
              Options.Sorting = False
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1pic2: TcxGridDBBandedColumn
              Caption = 'Pic2'
              DataBinding.FieldName = 'pic2'
              Visible = False
              Options.Sorting = False
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1airport: TcxGridDBBandedColumn
              DataBinding.FieldName = 'airport'
              Visible = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1railway: TcxGridDBBandedColumn
              DataBinding.FieldName = 'railway'
              Visible = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1Display: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Display'
              Width = 48
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1WebCityCode: TcxGridDBBandedColumn
              Caption = 'Web Code'
              DataBinding.FieldName = 'WebCityCode'
              Width = 43
              Position.BandIndex = 0
              Position.ColIndex = 12
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
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1ModifiedOn: TcxGridDBBandedColumn
              Caption = 'Modified On'
              DataBinding.FieldName = 'ModifiedOn'
              Visible = False
              Options.Editing = False
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
          end
        end
        object Panel5: TPanel
          Left = 613
          Top = 0
          Width = 257
          Height = 396
          Align = alClient
          TabOrder = 1
          object cxImage1: TcxImage
            Left = 1
            Top = 57
            Properties.Stretch = True
            TabOrder = 0
            Height = 155
            Width = 255
          end
          object cxImage2: TcxImage
            Left = 1
            Top = 240
            Align = alBottom
            Properties.Stretch = True
            TabOrder = 1
            Height = 155
            Width = 255
          end
          object cxDisplayPicturesCkb: TcxCheckBox
            Left = 8
            Top = 8
            Caption = 'Display Pictures'
            Properties.OnEditValueChanged = cxDisplayPicturesCkbPropertiesEditValueChanged
            State = cbsChecked
            TabOrder = 2
            Transparent = True
            Width = 121
          end
        end
      end
    end
  end
  inherited Panel4: TPanel
    Top = 479
    Width = 881
    Height = 158
    object Splitter3: TSplitter [0]
      Left = 137
      Top = 1
      Height = 156
    end
    inherited cxPageControl2: TcxPageControl
      Width = 136
      Height = 156
      Align = alLeft
      ClientRectBottom = 150
      ClientRectRight = 130
      inherited cxTabSheet2: TcxTabSheet
        Caption = 'Alias'
        inherited cxGrid2: TcxGrid
          Width = 127
          Height = 124
          inherited cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
            object cxGrid2DBBandedTableView1cityalias_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'cityalias_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'cities_id'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid2DBBandedTableView1alias: TcxGridDBBandedColumn
              Caption = 'Alias'
              DataBinding.FieldName = 'alias'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
        end
      end
    end
    object cxPageControl3: TcxPageControl
      Left = 140
      Top = 1
      Width = 740
      Height = 156
      ActivePage = cxTabSheet7
      Align = alClient
      TabOrder = 1
      ClientRectBottom = 150
      ClientRectLeft = 3
      ClientRectRight = 734
      ClientRectTop = 26
      object cxTabSheet3: TcxTabSheet
        Caption = 'City Info'
        ImageIndex = 0
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'writeup'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 124
          Width = 731
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'General Info'
        ImageIndex = 1
        object cxDBMemo2: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'generalinfo'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 124
          Width = 731
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'Web Writeup'
        ImageIndex = 2
        object cxDBMemo3: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'WebWriteUp'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 124
          Width = 731
        end
      end
      object cxTabSheet6: TcxTabSheet
        Caption = 'One Liner'
        ImageIndex = 3
        object cxDBMemo4: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'oneliner'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Height = 124
          Width = 731
        end
      end
      object cxTabSheet7: TcxTabSheet
        Caption = 'Keywords'
        ImageIndex = 4
        object Label1: TLabel
          Left = 8
          Top = 8
          Width = 17
          Height = 13
          Caption = 'Url'
        end
        object Label2: TLabel
          Left = 8
          Top = 33
          Width = 58
          Height = 13
          Caption = 'Meta Title'
        end
        object Label3: TLabel
          Left = 8
          Top = 58
          Width = 87
          Height = 13
          Caption = 'Meta Keywords'
        end
        object Label4: TLabel
          Left = 344
          Top = 8
          Width = 97
          Height = 13
          Caption = 'Meta Description'
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 100
          Top = 5
          DataBinding.DataField = 'url'
          DataBinding.DataSource = MasterDs
          TabOrder = 0
          Width = 233
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 100
          Top = 30
          DataBinding.DataField = 'Meta_Title'
          DataBinding.DataSource = MasterDs
          TabOrder = 1
          Width = 233
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 100
          Top = 55
          DataBinding.DataField = 'Meta_Keywords'
          DataBinding.DataSource = MasterDs
          TabOrder = 2
          Width = 233
        end
        object cxDBMemo5: TcxDBMemo
          Left = 346
          Top = 27
          DataBinding.DataField = 'Meta_Descr'
          DataBinding.DataSource = MasterDs
          TabOrder = 3
          Height = 94
          Width = 351
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM Cities'#13#10'ORDER BY City'
    CommandType = ctQuery
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    object MasterCdscitycode: TStringField
      FieldName = 'citycode'
      FixedChar = True
      Size = 4
    end
    object MasterCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object MasterCdscountries_id: TIntegerField
      FieldName = 'countries_id'
    end
    object MasterCdsoneliner: TStringField
      FieldName = 'oneliner'
      Size = 250
    end
    object MasterCdsgeneralinfo: TMemoField
      FieldName = 'generalinfo'
      BlobType = ftMemo
    end
    object MasterCdsgettingthere: TMemoField
      FieldName = 'gettingthere'
      BlobType = ftMemo
    end
    object MasterCdswhattosee: TMemoField
      FieldName = 'whattosee'
      BlobType = ftMemo
    end
    object MasterCdsexcursions: TMemoField
      FieldName = 'excursions'
      BlobType = ftMemo
    end
    object MasterCdscourier: TBooleanField
      FieldName = 'courier'
    end
    object MasterCdswriteup: TMemoField
      FieldName = 'writeup'
      BlobType = ftMemo
    end
    object MasterCdsnighthalt: TBooleanField
      FieldName = 'nighthalt'
    end
    object MasterCdspic1: TStringField
      FieldName = 'pic1'
      Size = 255
    end
    object MasterCdspic2: TStringField
      FieldName = 'pic2'
      Size = 255
    end
    object MasterCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCdsstates_id: TIntegerField
      FieldName = 'states_id'
    end
    object MasterCdsairport: TBooleanField
      FieldName = 'airport'
    end
    object MasterCdsrailway: TBooleanField
      FieldName = 'railway'
    end
    object MasterCdsDefaultDays: TIntegerField
      FieldName = 'DefaultDays'
    end
    object MasterCdsWebWriteUp: TMemoField
      FieldName = 'WebWriteUp'
      BlobType = ftMemo
    end
    object MasterCdsurl: TStringField
      FieldName = 'url'
      Size = 100
    end
    object MasterCdsDisplay: TBooleanField
      FieldName = 'Display'
    end
    object MasterCdsWebCityCode: TStringField
      FieldName = 'WebCityCode'
      Size = 3
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
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited DetailSds: TSQLDataSet
    CommandText = 'SELECT * FROM CityAlias'#13#10'WHERE Cities_id = :Cities_id'#13#10
    CommandType = ctQuery
    DataSource = MasterDs
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
  end
  inherited DetailCds: TClientDataSet
    IndexFieldNames = 'cities_id'
    MasterFields = 'cities_id'
    MasterSource = MasterDs
    PacketRecords = 0
    object DetailCdscityalias_id: TIntegerField
      FieldName = 'cityalias_id'
    end
    object DetailCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object DetailCdsalias: TStringField
      FieldName = 'alias'
      Size = 50
    end
  end
  object StatesSds: TSQLDataSet
    CommandText = 'SELECT States_id, State FROM States'#13#10'ORDER BY State'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 88
    Top = 136
  end
  object StatesDsp: TDataSetProvider
    DataSet = StatesSds
    UpdateMode = upWhereKeyOnly
    Left = 118
    Top = 136
  end
  object StatesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'StatesDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 151
    Top = 136
    object StatesCdsStates_id: TIntegerField
      FieldName = 'States_id'
    end
    object StatesCdsState: TStringField
      FieldName = 'State'
      Size = 50
    end
  end
  object StatesDs: TDataSource
    DataSet = StatesCds
    Left = 181
    Top = 136
  end
  object CountriesSds: TSQLDataSet
    CommandText = 'SELECT Countries_id, Country FROM Countries'#13#10'ORDER BY Country'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 88
    Top = 176
  end
  object CountriesDsp: TDataSetProvider
    DataSet = CountriesSds
    UpdateMode = upWhereKeyOnly
    Left = 118
    Top = 176
  end
  object CountriesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CountriesDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 151
    Top = 176
    object CountriesCdsCountries_id: TIntegerField
      FieldName = 'Countries_id'
    end
    object CountriesCdsCountry: TStringField
      FieldName = 'Country'
      Size = 50
    end
  end
  object CountriesDs: TDataSource
    DataSet = CountriesCds
    Left = 181
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 641
    object NearCities1: TMenuItem
      Caption = 'Near Cities'
      OnClick = NearCities1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AirlineCityMapping1: TMenuItem
      Caption = 'Airline City Mapping'
      OnClick = AirlineCityMapping1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Itineraries1: TMenuItem
      Caption = 'Itineraries'
      OnClick = Itineraries1Click
    end
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 440
    Top = 130
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 454
    Top = 131
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 472
    Top = 130
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
    Left = 484
    Top = 130
  end
end
