inherited PreferredRoutesForm: TPreferredRoutesForm
  Left = 463
  Top = 38
  Width = 768
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 63
    Caption = 'Preferred Routes'
    Height = 448
    Width = 752
    inherited CustomMasterCxGrid: TcxGrid
      Width = 746
      Height = 427
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'PreferredRoutes_id'
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1PreferredRoutes_id: TcxGridDBColumn
          DataBinding.FieldName = 'PreferredRoutes_id'
          Visible = False
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
        end
        object CustomMasterCxGridDBTableView1OrderNo: TcxGridDBColumn
          Caption = 'Order No'
          DataBinding.FieldName = 'OrderNo'
          SortIndex = 0
          SortOrder = soAscending
        end
        object CustomMasterCxGridDBTableView1FromCities_id: TcxGridDBColumn
          Caption = 'From City'
          DataBinding.FieldName = 'FromCities_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Width = 146
        end
        object CustomMasterCxGridDBTableView1ToCities_id: TcxGridDBColumn
          Caption = 'To City'
          DataBinding.FieldName = 'ToCities_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'cities_id'
          Properties.ListColumns = <
            item
              FieldName = 'city'
            end>
          Properties.ListSource = BackOfficeDataModule.CitiesDS
          Width = 178
        end
        object CustomMasterCxGridDBTableView1Mode: TcxGridDBColumn
          DataBinding.FieldName = 'Mode'
          Visible = False
        end
        object CustomMasterCxGridDBTableView1TrainNo: TcxGridDBColumn
          Caption = 'Train No'
          DataBinding.FieldName = 'TrainNo'
          Width = 95
        end
      end
    end
  end
  inherited Panel1: TPanel
    Width = 752
    inherited KeyIdDbText: TDBText
      Left = 584
      Top = 8
      DataField = 'PreferredRoutes_id'
    end
    inherited SearchLbl: TcxLabel
      Left = 207
      Top = 10
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Left = 256
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 672
    end
    object cxButton1: TcxButton
      Left = 9
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Reports'
      TabOrder = 3
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
    end
  end
  inherited Panel2: TPanel
    Width = 752
    Height = 63
    object GroupBox2: TcxGroupBox
      Left = 4
      Top = 6
      Caption = 'Select City Combination'
      TabOrder = 0
      Height = 49
      Width = 669
      object cxFromCityLCMB: TcxLookupComboBox
        Left = 84
        Top = 23
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'cities_id'
        Properties.ListColumns = <
          item
            FieldName = 'city'
          end>
        Properties.ListSource = CityDs
        Properties.ValidateOnEnter = False
        Properties.OnEditValueChanged = cxStateLCMBPropertiesEditValueChanged
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        Width = 219
      end
      object cxLabel1: TcxLabel
        Left = 16
        Top = 24
        Caption = 'From City'
        Style.TransparentBorder = True
      end
      object cxLabel2: TcxLabel
        Left = 312
        Top = 24
        Caption = 'To City'
        Style.TransparentBorder = True
      end
      object cxToCityLCMB: TcxLookupComboBox
        Left = 380
        Top = 22
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'cities_id'
        Properties.ListColumns = <
          item
            FieldName = 'city'
          end>
        Properties.ListSource = CityDs
        Properties.ValidateOnEnter = False
        Properties.OnEditValueChanged = cxLookupComboBox1PropertiesEditValueChanged
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 3
        Width = 219
      end
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'PreferredRoutes'
    Top = 96
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 64
    Top = 96
  end
  inherited MasterDS: TDataSource
    Left = 112
    Top = 96
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'FromCities_id'
    AfterInsert = MasterCdsAfterInsert
    Left = 88
    Top = 96
    object MasterCdsPreferredRoutes_id: TIntegerField
      FieldName = 'PreferredRoutes_id'
    end
    object MasterCdsRouteFromCities_id: TIntegerField
      FieldName = 'RouteFromCities_id'
    end
    object MasterCdsRouteToCities_id: TIntegerField
      FieldName = 'RouteToCities_id'
    end
    object MasterCdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object MasterCdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
    end
    object MasterCdsMode: TIntegerField
      FieldName = 'Mode'
    end
    object MasterCdsTrainNo: TStringField
      FieldName = 'TrainNo'
      Size = 10
    end
    object MasterCdsOrderNo: TIntegerField
      FieldName = 'OrderNo'
    end
  end
  object CitySds: TSQLDataSet
    CommandText = 
      'select cities_id, city'#13#10'from cities where nighthalt = 1 '#13#10'order ' +
      'by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 248
    Top = 40
  end
  object CityDsp: TDataSetProvider
    DataSet = CitySds
    Left = 264
    Top = 40
  end
  object CityCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CityDsp'
    Left = 280
    Top = 40
    object CityCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object CityCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
  end
  object CityDs: TDataSource
    DataSet = CityCds
    Left = 296
    Top = 40
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 520
    object Statewise1: TMenuItem
      Caption = 'Preferred Routes (Excel)'
      OnClick = Statewise1Click
    end
  end
  object scExcelExport: TscExcelExport
    DataPipe = dpDataSet
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = -11
    FontHeader.Name = 'MS Sans Serif'
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    FontHeader.Orientation = 0
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = -11
    FontTitles.Name = 'MS Sans Serif'
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    FontTitles.Orientation = 0
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = -11
    FontData.Name = 'MS Sans Serif'
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontData.Orientation = 0
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = -11
    FontSummary.Name = 'MS Sans Serif'
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    FontSummary.Orientation = 0
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = -11
    FontFooter.Name = 'MS Sans Serif'
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    FontFooter.Orientation = 0
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = -11
    FontGroup.Name = 'MS Sans Serif'
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    FontGroup.Orientation = 0
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 160
    Top = 184
  end
end
