inherited FixedItinCityForm: TFixedItinCityForm
  Left = 323
  Top = 31
  Width = 1029
  Height = 651
  Caption = 'Fixed Itin Cities'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1013
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object cxDateEdit: TcxDateEdit
      Left = 49
      Top = 14
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = cxDateEditPropertiesEditValueChanged
      TabOrder = 0
      Width = 121
    end
    object cxModuleDetailsCkb: TcxCheckBox
      Left = 208
      Top = 16
      Caption = 'Display Module Details'
      TabOrder = 1
      Transparent = True
      OnClick = cxModuleDetailsCkbClick
      Width = 177
    end
  end
  inherited Panel2: TPanel
    Top = 568
    Width = 1013
    object KeyIdDbText: TDBText [0]
      Left = 848
      Top = 13
      Width = 69
      Height = 16
      DataField = 'FixedItin_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited cxCloseBtn: TcxButton
      Left = 934
    end
  end
  object cxGroupBox1: TcxGroupBox [2]
    Left = 0
    Top = 41
    Align = alTop
    TabOrder = 2
    Height = 512
    Width = 1013
    object Panel3: TPanel
      Left = 3
      Top = 18
      Width = 406
      Height = 271
      TabOrder = 0
      object CustomMasterCxGrid: TcxGrid
        Left = 1
        Top = 1
        Width = 404
        Height = 269
        Align = alClient
        TabOrder = 0
        object CustomMasterCxGridDBTableView1: TcxGridDBTableView
          PopupMenu = PopupMenu1
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = MasterDS
          DataController.KeyFieldNames = 'FixedItin_id'
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
          object CustomMasterCxGridDBTableView1OrderNo: TcxGridDBColumn
            Caption = 'Sr No'
            DataBinding.FieldName = 'OrderNo'
            Options.Filtering = False
            Options.Grouping = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 37
          end
          object CustomMasterCxGridDBTableView1FixedItin_id: TcxGridDBColumn
            DataBinding.FieldName = 'FixedItin_id'
            Visible = False
            Options.Editing = False
            VisibleForCustomization = False
          end
          object CustomMasterCxGridDBTableView1Title: TcxGridDBColumn
            DataBinding.FieldName = 'Title'
            SortIndex = 1
            SortOrder = soAscending
            Width = 138
          end
          object CustomMasterCxGridDBTableView1Regions_id: TcxGridDBColumn
            Caption = 'Region'
            DataBinding.FieldName = 'Regions_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'Regions_id'
            Properties.ListColumns = <
              item
                FieldName = 'Title'
              end>
            Properties.ListSource = RegionDs
            Width = 120
          end
          object CustomMasterCxGridDBTableView1InactiveWef: TcxGridDBColumn
            Caption = 'Inactive Wef'
            DataBinding.FieldName = 'InactiveWef'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Visible = False
            Width = 120
          end
          object CustomMasterCxGridDBTableView1FixedItinCode: TcxGridDBColumn
            Caption = 'Code'
            DataBinding.FieldName = 'FixedItinCode'
            Visible = False
            Options.Filtering = False
            Options.Grouping = False
            VisibleForCustomization = False
          end
          object CustomMasterCxGridDBTableView1StartCities_id: TcxGridDBColumn
            Caption = 'Starts In'
            DataBinding.FieldName = 'StartCities_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'Cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'City'
              end>
            Properties.ListSource = CityDs
            Visible = False
            Options.Grouping = False
            VisibleForCustomization = False
          end
          object CustomMasterCxGridDBTableView1EndCities_id: TcxGridDBColumn
            Caption = 'Ends In'
            DataBinding.FieldName = 'EndCities_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownWidth = 200
            Properties.KeyFieldNames = 'Cities_id'
            Properties.ListColumns = <
              item
                FieldName = 'City'
              end>
            Properties.ListSource = CityDs
            Visible = False
            Options.Grouping = False
            VisibleForCustomization = False
          end
          object CustomMasterCxGridDBTableView1Days: TcxGridDBColumn
            DataBinding.FieldName = 'Days'
            Visible = False
            Options.Filtering = False
            Options.Grouping = False
            VisibleForCustomization = False
          end
          object CustomMasterCxGridDBTableView1Nights: TcxGridDBColumn
            DataBinding.FieldName = 'Nights'
            Visible = False
            Options.Filtering = False
            Options.Grouping = False
            VisibleForCustomization = False
          end
          object CustomMasterCxGridDBTableView1DaysName: TcxGridDBColumn
            Caption = 'Operates On'
            DataBinding.FieldName = 'DaysName'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = CustomMasterCxGridDBTableView1DaysNamePropertiesButtonClick
            Visible = False
            VisibleForCustomization = False
          end
          object CustomMasterCxGridDBTableView1QuotationRef: TcxGridDBColumn
            Caption = 'Quotation Code'
            DataBinding.FieldName = 'QuotationRef'
            Width = 64
          end
          object CustomMasterCxGridDBTableView1Display: TcxGridDBColumn
            DataBinding.FieldName = 'Display'
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
    end
    object Panel4: TPanel
      Left = 0
      Top = 289
      Width = 409
      Height = 222
      TabOrder = 1
      object cxPageControl2: TcxPageControl
        Left = 1
        Top = 1
        Width = 407
        Height = 220
        ActivePage = cxTabSheet2
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 214
        ClientRectLeft = 3
        ClientRectRight = 401
        ClientRectTop = 26
        object cxTabSheet2: TcxTabSheet
          Caption = 'Day wise'
          ImageIndex = 0
          object cxDBMemo12: TcxDBMemo
            Left = 0
            Top = 127
            Align = alBottom
            DataBinding.DataField = 'DayItinerary'
            DataBinding.DataSource = Detail2Ds
            TabOrder = 0
            Height = 61
            Width = 398
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 398
            Height = 127
            Align = alClient
            TabOrder = 1
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = Detail2Ds
              DataController.KeyFieldNames = 'CityDayFixedItin_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object cxGridDBTableView1CityDayFixedItin_id: TcxGridDBColumn
                DataBinding.FieldName = 'CityDayFixedItin_id'
                Visible = False
                Options.Editing = False
              end
              object cxGridDBTableView1FixedItin_id: TcxGridDBColumn
                DataBinding.FieldName = 'FixedItin_id'
                Visible = False
                Options.Editing = False
              end
              object cxGridDBTableView1DayNo: TcxGridDBColumn
                Caption = 'Day No'
                DataBinding.FieldName = 'DayNo'
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
                Properties.ListSource = BackOfficeDataModule.CitiesDS
                Width = 228
              end
              object cxGridDBTableView1EndOfTour: TcxGridDBColumn
                Caption = 'End'
                DataBinding.FieldName = 'EndOfTour'
                PropertiesClassName = 'TcxCheckBoxProperties'
              end
              object cxGridDBTableView1ModifiedByUsers_id: TcxGridDBColumn
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
              object cxGridDBTableView1ModifiedOn: TcxGridDBColumn
                Caption = 'Modified On'
                DataBinding.FieldName = 'ModifiedOn'
                Visible = False
                Options.Editing = False
                Width = 80
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = 'Nearby Cities'
          ImageIndex = 1
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 398
            Height = 188
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = Detail1DS
              DataController.KeyFieldNames = 'CityFixedItin_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
              Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
              object cxGridDBTableView2CityFixedItin_id: TcxGridDBColumn
                DataBinding.FieldName = 'CityFixedItin_id'
                Visible = False
                Options.Editing = False
              end
              object cxGridDBTableView2Cities_id: TcxGridDBColumn
                Caption = 'City'
                DataBinding.FieldName = 'Cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'City'
                  end>
                Properties.ListSource = CityDs
                Width = 225
              end
              object cxGridDBTableView2FixedItin_id: TcxGridDBColumn
                DataBinding.FieldName = 'FixedItin_id'
                Visible = False
                Options.Editing = False
              end
              object cxGridDBTableView2ModifiedByUsers_id: TcxGridDBColumn
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
              object cxGridDBTableView2ModifiedOn: TcxGridDBColumn
                Caption = 'Modified On'
                DataBinding.FieldName = 'ModifiedOn'
                Visible = False
                Options.Editing = False
                Width = 80
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
        end
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 408
      Top = 18
      Width = 602
      Height = 495
      ActivePage = cxTabSheet1
      TabOrder = 2
      ClientRectBottom = 489
      ClientRectLeft = 3
      ClientRectRight = 596
      ClientRectTop = 26
      object cxTabSheetOneLiner: TcxTabSheet
        Caption = 'One Liner'
        ImageIndex = 3
        object cxDBMemo4: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'OneLiner'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 463
          Width = 593
        end
      end
      object cxTabSheetIntro: TcxTabSheet
        Caption = 'Introduction'
        ImageIndex = 1
        object cxDBMemo1: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'Introduction'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 463
          Width = 593
        end
      end
      object cxTabSheetQuote: TcxTabSheet
        Caption = 'Quote'
        ImageIndex = 4
        object cxDBMemo5: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'Quotes'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 463
          Width = 593
        end
      end
      object cxTabSheetItin: TcxTabSheet
        Caption = 'Itinerary'
        ImageIndex = 1
        object cxDBMemo2: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'Itinerary'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 463
          Width = 593
        end
      end
      object cxTabSheetAdvert: TcxTabSheet
        Caption = 'Advert'
        ImageIndex = 5
        object cxDBMemo6: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'Adv'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 463
          Width = 593
        end
      end
      object cxTabSheetHigh: TcxTabSheet
        Caption = 'Highlights'
        ImageIndex = 3
        object cxDBMemo3: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'TripHighlights'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 463
          Width = 593
        end
      end
      object cxTabSheetDuration: TcxTabSheet
        Caption = 'Duration'
        ImageIndex = 9
        object cxDBMemo10: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'Duration'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 463
          Width = 593
        end
      end
      object cxTabSheetDeparture: TcxTabSheet
        Caption = 'Departure'
        ImageIndex = 6
        object cxDBMemo7: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'ItinDates'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 463
          Width = 593
        end
      end
      object cxTabSheetPrice: TcxTabSheet
        Caption = 'Price'
        ImageIndex = 8
        object cxDBMemo9: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'Prices'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 463
          Width = 593
        end
      end
      object cxTabSheetIncl: TcxTabSheet
        Caption = 'Inclusions'
        ImageIndex = 7
        object cxDBMemo8: TcxDBMemo
          Left = 0
          Top = 0
          Align = alClient
          DataBinding.DataField = 'Inclusions'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Height = 463
          Width = 593
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = 'Keywords'
        ImageIndex = 10
        object Label2: TLabel
          Left = 0
          Top = 9
          Width = 17
          Height = 13
          Caption = 'Url'
          Transparent = True
        end
        object Label3: TLabel
          Left = 1
          Top = 33
          Width = 58
          Height = 13
          Caption = 'Meta Title'
          Transparent = True
        end
        object Label4: TLabel
          Left = 1
          Top = 57
          Width = 87
          Height = 13
          Caption = 'Meta Keywords'
          Transparent = True
        end
        object Label5: TLabel
          Left = 0
          Top = 128
          Width = 97
          Height = 13
          Caption = 'Meta Description'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 96
          Top = 8
          DataBinding.DataField = 'url'
          DataBinding.DataSource = MasterDS
          TabOrder = 0
          Width = 407
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 95
          Top = 32
          DataBinding.DataField = 'Meta_Title'
          DataBinding.DataSource = MasterDS
          TabOrder = 1
          Width = 408
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 95
          Top = 56
          DataBinding.DataField = 'Meta_Keywords'
          DataBinding.DataSource = MasterDS
          TabOrder = 2
          Width = 408
        end
        object cxDBMemo11: TcxDBMemo
          Left = 0
          Top = 144
          DataBinding.DataField = 'Meta_Descr'
          DataBinding.DataSource = MasterDS
          TabOrder = 3
          Height = 185
          Width = 489
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM FixedItin '#13#10'WHERE ReadyTours = :ReadyTours'#13#10'AND Ad' +
      'dressbook_id = :Addressbook_id'#13#10'AND ((InactiveWef IS NULL) OR (I' +
      'nactiveWef >= :wef))'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftBoolean
        Name = 'ReadyTours'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'wef'
        ParamType = ptInput
      end>
    Left = 600
    Top = 32
  end
  inherited MasterDataSetProvider: TDataSetProvider
    Left = 632
    Top = 32
  end
  inherited MasterDS: TDataSource
    Left = 696
    Top = 32
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    OnCalcFields = MasterCdsCalcFields
    Left = 664
    Top = 32
    object MasterCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object MasterCdsItinerary: TMemoField
      FieldName = 'Itinerary'
      BlobType = ftMemo
    end
    object MasterCdsTripHighlights: TMemoField
      FieldName = 'TripHighlights'
      BlobType = ftMemo
    end
    object MasterCdsQuotes: TMemoField
      FieldName = 'Quotes'
      BlobType = ftMemo
    end
    object MasterCdsAdv: TMemoField
      FieldName = 'Adv'
      BlobType = ftMemo
    end
    object MasterCdsRegions_id: TIntegerField
      FieldName = 'Regions_id'
    end
    object MasterCdsReadyTours: TBooleanField
      FieldName = 'ReadyTours'
    end
    object MasterCdsItinDates: TMemoField
      FieldName = 'ItinDates'
      BlobType = ftMemo
    end
    object MasterCdsInclusions: TMemoField
      FieldName = 'Inclusions'
      BlobType = ftMemo
    end
    object MasterCdsPrices: TMemoField
      FieldName = 'Prices'
      BlobType = ftMemo
    end
    object MasterCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
    object MasterCdsDuration: TMemoField
      FieldName = 'Duration'
      BlobType = ftMemo
    end
    object MasterCdsInactiveWef: TSQLTimeStampField
      FieldName = 'InactiveWef'
    end
    object MasterCdsFixedItinCode: TStringField
      FieldName = 'FixedItinCode'
      Size = 10
    end
    object MasterCdsStartCities_id: TIntegerField
      FieldName = 'StartCities_id'
    end
    object MasterCdsEndCities_id: TIntegerField
      FieldName = 'EndCities_id'
    end
    object MasterCdsDays: TIntegerField
      FieldName = 'Days'
    end
    object MasterCdsNights: TIntegerField
      FieldName = 'Nights'
    end
    object MasterCdsDepartureDays: TIntegerField
      FieldName = 'DepartureDays'
    end
    object MasterCdsDaysName: TStringField
      FieldKind = fkCalculated
      FieldName = 'DaysName'
      Calculated = True
    end
    object MasterCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object MasterCdsurl: TStringField
      FieldName = 'url'
      Size = 100
    end
    object MasterCdsQuotationRef: TStringField
      FieldName = 'QuotationRef'
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
    object MasterCdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object MasterCdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'SELECT * FROM CityFixedItin WHERE FixedItin_id = :FixedItin_id'
    CommandType = ctQuery
    DataSource = MasterDS
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
        Value = 0
      end>
    Left = 600
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    Left = 632
  end
  inherited Detail1DS: TDataSource
    Left = 704
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'FixedItin_id'
    MasterFields = 'FixedItin_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 664
    object Detail1CdsCityFixedItin_id: TIntegerField
      FieldName = 'CityFixedItin_id'
    end
    object Detail1CdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object Detail1CdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object Detail1CdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object Detail1CdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  object RegionSds: TSQLDataSet
    CommandText = 'SELECT Regions_id, Title '#13#10'FROM Regions '#13#10'ORDER BY Title'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 160
  end
  object RegionDsp: TDataSetProvider
    DataSet = RegionSds
    Left = 80
    Top = 160
  end
  object RegionDs: TDataSource
    DataSet = RegionCds
    Left = 120
    Top = 160
  end
  object RegionCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'RegionDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 152
    Top = 160
    object RegionCdsRegions_id: TIntegerField
      FieldName = 'Regions_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object RegionCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
  end
  object CitySds: TSQLDataSet
    CommandText = 'SELECT Cities_id, City'#13#10'FROM Cities'#13#10'ORDER BY City'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 48
    Top = 192
  end
  object CityDsp: TDataSetProvider
    DataSet = CitySds
    Left = 80
    Top = 192
  end
  object CityDs: TDataSource
    DataSet = CityCds
    Left = 120
    Top = 192
  end
  object CityCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CityDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 152
    Top = 192
    object CityCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CityCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 580
    object hemes1: TMenuItem
      Caption = 'Themes'
      OnClick = hemes1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ailormadeTips1: TMenuItem
      Caption = 'Tailormade Tips'
      OnClick = ailormadeTips1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CloseDate1: TMenuItem
      Caption = 'Close Dates'
      OnClick = CloseDate1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Costing1: TMenuItem
      Caption = 'Costing'
      OnClick = Costing1Click
    end
  end
  object Detail2Sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM CityDayFixedItin WHERE FixedItin_id = :FixedItin_i' +
      'd'
    DataSource = MasterDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FixedItin_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 600
    Top = 96
  end
  object Detail2Dsp: TDataSetProvider
    DataSet = Detail2Sds
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 96
  end
  object Detail2Cds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'FixedItin_id'
    MasterFields = 'FixedItin_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'Detail2Dsp'
    BeforeInsert = Detail2CdsBeforeInsert
    AfterInsert = Detail2CdsAfterInsert
    BeforeEdit = Detail2CdsBeforeEdit
    BeforePost = Detail2CdsBeforePost
    AfterPost = Detail2CdsAfterPost
    BeforeDelete = Detail2CdsBeforeDelete
    AfterDelete = Detail2CdsAfterDelete
    Left = 664
    Top = 96
    object Detail2CdsCityDayFixedItin_id: TIntegerField
      FieldName = 'CityDayFixedItin_id'
    end
    object Detail2CdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
    end
    object Detail2CdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object Detail2CdsDayNo: TIntegerField
      FieldName = 'DayNo'
    end
    object Detail2CdsDayItinerary: TMemoField
      FieldName = 'DayItinerary'
      BlobType = ftMemo
    end
    object Detail2CdsEndOfTour: TBooleanField
      FieldName = 'EndOfTour'
    end
    object Detail2CdsModifiedByUsers_id: TIntegerField
      FieldName = 'ModifiedByUsers_id'
    end
    object Detail2CdsModifiedOn: TSQLTimeStampField
      FieldName = 'ModifiedOn'
    end
  end
  object Detail2Ds: TDataSource
    DataSet = Detail2Cds
    Left = 704
    Top = 96
  end
  object UsersSds: TSQLDataSet
    CommandText = 'SELECT AdmUsers_id, uid'#13#10'FROM AdmUsers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 384
    Top = 2
  end
  object UsersDsp: TDataSetProvider
    DataSet = UsersSds
    Left = 398
    Top = 3
  end
  object UsersCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'UsersDsp'
    Left = 416
    Top = 2
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
    Left = 428
    Top = 2
  end
end
