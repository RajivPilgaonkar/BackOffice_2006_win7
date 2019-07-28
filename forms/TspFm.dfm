inherited TspForm: TTspForm
  Left = 426
  Top = 25
  Caption = 'Tsp'
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited cxDBLabelKeyId: TcxDBLabel
      DataBinding.DataField = 'tsp_cities_id'
    end
    object cxButton1: TcxButton
      Left = 328
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Shortest Route'
      TabOrder = 3
      OnClick = cxButton1Click
    end
  end
  inherited Panel3: TPanel
    inherited cxPageControl1: TcxPageControl
      Width = 256
      Align = alLeft
      ClientRectRight = 250
      inherited cxTabSheet1: TcxTabSheet
        inherited cxGrid1: TcxGrid
          Width = 247
          inherited cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            DataController.KeyFieldNames = 'tsp_cities_id'
            object cxGrid1DBBandedTableView1tsp_cities_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'tsp_cities_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1quotations_id: TcxGridDBBandedColumn
              DataBinding.FieldName = 'quotations_id'
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1cities_id: TcxGridDBBandedColumn
              Caption = 'City'
              DataBinding.FieldName = 'cities_id'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'Cities_id'
              Properties.ListColumns = <
                item
                  FieldName = 'City'
                end>
              Properties.ListSource = CitiesDs
              Options.Filtering = False
              Width = 152
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1StartCity: TcxGridDBBandedColumn
              Caption = 'Start City'
              DataBinding.FieldName = 'StartCity'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Width = 65
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 257
      Top = 1
      Width = 295
      Height = 435
      Align = alClient
      TabOrder = 1
      object cxPageControl2: TcxPageControl
        Left = 1
        Top = 1
        Width = 256
        Height = 433
        ActivePage = cxTabSheet2
        Align = alLeft
        TabOrder = 0
        ClientRectBottom = 427
        ClientRectLeft = 3
        ClientRectRight = 250
        ClientRectTop = 26
        object cxTabSheet2: TcxTabSheet
          Caption = 'Errors'
          ImageIndex = 0
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 247
            Height = 401
            Align = alClient
            TabOrder = 0
            object cxGridDBBandedTableView1: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = ErrorsDs
              DataController.KeyFieldNames = 'errors_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.BandHeaders = False
              Bands = <
                item
                end>
              object cxGridDBBandedTableView1errors_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'errors_id'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1fromCities_id: TcxGridDBBandedColumn
                Caption = 'From City'
                DataBinding.FieldName = 'fromCities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'City'
                  end>
                Properties.ListSource = CitiesDs
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 102
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView1toCities_id: TcxGridDBBandedColumn
                Caption = 'To City'
                DataBinding.FieldName = 'toCities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'City'
                  end>
                Properties.ListSource = CitiesDs
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 102
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBBandedTableView1
            end
          end
        end
      end
    end
    object Panel5: TPanel
      Left = 552
      Top = 1
      Width = 272
      Height = 435
      Align = alRight
      TabOrder = 2
      object cxPageControl3: TcxPageControl
        Left = 1
        Top = 1
        Width = 270
        Height = 433
        ActivePage = cxTabSheet3
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 427
        ClientRectLeft = 3
        ClientRectRight = 264
        ClientRectTop = 26
        object cxTabSheet3: TcxTabSheet
          Caption = 'Best Route'
          ImageIndex = 0
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 261
            Height = 401
            Align = alClient
            TabOrder = 0
            object cxGridDBBandedTableView2: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = TspDs
              DataController.KeyFieldNames = 'tsp_order_cities_id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.BandHeaders = False
              Bands = <
                item
                end>
              object cxGridDBBandedTableView2tsp_order_cities_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'tsp_order_cities_id'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView2quotations_id: TcxGridDBBandedColumn
                DataBinding.FieldName = 'quotations_id'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView2srNo: TcxGridDBBandedColumn
                DataBinding.FieldName = 'srNo'
                Visible = False
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedTableView2cities_id: TcxGridDBBandedColumn
                Caption = 'City'
                DataBinding.FieldName = 'cities_id'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'Cities_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'City'
                  end>
                Properties.ListSource = CitiesDs
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 215
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBBandedTableView2
            end
          end
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'SELECT * FROM tsp_cities'#13#10'WHERE Quotations_id = :Quotations_id'#13#10
    CommandType = ctQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'Quotations_id'
        ParamType = ptInput
      end>
    Left = 64
    Top = 168
  end
  inherited MasterDsp: TDataSetProvider
    Left = 94
    Top = 168
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 127
    Top = 168
    object MasterCdstsp_cities_id: TIntegerField
      FieldName = 'tsp_cities_id'
    end
    object MasterCdsquotations_id: TIntegerField
      FieldName = 'quotations_id'
    end
    object MasterCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCdsStartCity: TBooleanField
      FieldName = 'StartCity'
    end
  end
  inherited MasterDs: TDataSource
    Left = 157
    Top = 168
  end
  object CitiesSds: TSQLDataSet
    CommandText = 'SELECT c.Cities_id, c.City'#13#10'FROM Cities c'#13#10'WHERE NightHalt = 1'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 80
    Top = 314
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 94
    Top = 315
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 112
    Top = 314
    object CitiesCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object CitiesCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 124
    Top = 314
  end
  object TspSds: TSQLDataSet
    CommandText = 'exec [dbo].[p_Tsp2] :i_Quotations_id, :i_StartCities_id, 2'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'i_Quotations_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'i_StartCities_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 600
    Top = 176
  end
  object TspDsp: TDataSetProvider
    DataSet = TspSds
    UpdateMode = upWhereKeyOnly
    Left = 630
    Top = 176
  end
  object TspCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'TspDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 663
    Top = 176
    object TspCdstsp_order_cities_id: TIntegerField
      FieldName = 'tsp_order_cities_id'
    end
    object TspCdsquotations_id: TIntegerField
      FieldName = 'quotations_id'
    end
    object TspCdssrNo: TIntegerField
      FieldName = 'srNo'
    end
    object TspCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
  end
  object TspDs: TDataSource
    DataSet = TspCds
    Left = 693
    Top = 176
  end
  object ErrorsSds: TSQLDataSet
    CommandText = 'exec [dbo].[p_Tsp2] 0, 103, 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 296
    Top = 168
  end
  object ErrorsDsp: TDataSetProvider
    DataSet = ErrorsSds
    UpdateMode = upWhereKeyOnly
    Left = 326
    Top = 168
  end
  object ErrorsCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ErrorsDsp'
    BeforeInsert = MasterCdsBeforeInsert
    AfterInsert = MasterCdsAfterInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 359
    Top = 168
    object ErrorsCdserrors_id: TIntegerField
      FieldName = 'errors_id'
    end
    object ErrorsCdsfromCities_id: TIntegerField
      FieldName = 'fromCities_id'
    end
    object ErrorsCdstoCities_id: TIntegerField
      FieldName = 'toCities_id'
    end
  end
  object ErrorsDs: TDataSource
    DataSet = ErrorsCds
    Left = 389
    Top = 168
  end
end
