inherited FixedItinForm: TFixedItinForm
  Left = 11
  Top = 94
  Width = 1048
  Height = 598
  Caption = 'Fixed Itineraries'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Align = alLeft
    Height = 478
    Width = 377
    inherited CustomMasterCxGrid: TcxGrid
      Width = 371
      Height = 457
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'FixedItin_id'
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
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
          Width = 186
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
          Width = 119
        end
        object CustomMasterCxGridDBTableView1QuotationRef: TcxGridDBColumn
          Caption = 'Code'
          DataBinding.FieldName = 'QuotationRef'
          Width = 87
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 519
    Width = 1032
    inherited KeyIdDbText: TDBText
      Left = 836
      Top = 13
      Width = 69
      Height = 16
      DataField = 'FixedItin_id'
    end
    inherited SearchLbl: TcxLabel
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 923
      Width = 70
    end
  end
  inherited Panel2: TPanel
    Width = 1032
  end
  object cxPageControl1: TcxPageControl [3]
    Left = 377
    Top = 41
    Width = 655
    Height = 478
    ActivePage = cxTabSheetOneLiner
    Align = alClient
    TabOrder = 3
    ClientRectBottom = 472
    ClientRectLeft = 3
    ClientRectRight = 649
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
        Height = 446
        Width = 646
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
        Height = 446
        Width = 646
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
        Height = 446
        Width = 646
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
        Height = 446
        Width = 646
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
        Height = 446
        Width = 646
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
        Height = 446
        Width = 646
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
        Height = 446
        Width = 646
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
        Height = 446
        Width = 646
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
        Height = 446
        Width = 646
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
        Height = 446
        Width = 646
      end
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'SELECT * FROM FixedItin WHERE ReadyTours = :ReadyTours'
    CommandType = ctQuery
    Params = <
      item
        DataType = ftBoolean
        Name = 'ReadyTours'
        ParamType = ptInput
      end>
  end
  inherited MasterCds: TClientDataSet
    object MasterCdsFixedItin_id: TIntegerField
      FieldName = 'FixedItin_id'
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
    object MasterCdsQuotes: TMemoField
      FieldName = 'Quotes'
      BlobType = ftMemo
    end
    object MasterCdsAdv: TMemoField
      FieldName = 'Adv'
      BlobType = ftMemo
    end
    object MasterCdsTripHighlights: TMemoField
      FieldName = 'TripHighlights'
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
    object MasterCdsQuotationRef: TStringField
      FieldName = 'QuotationRef'
    end
  end
  object RegionSds: TSQLDataSet
    CommandText = 'SELECT Regions_id, Title FROM Regions ORDER BY Title'
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
    end
    object RegionCdsTitle: TStringField
      FieldName = 'Title'
      Size = 254
    end
  end
end
