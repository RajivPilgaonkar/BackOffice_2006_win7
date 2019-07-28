object CarHireP2PForm: TCarHireP2PForm
  Left = 227
  Top = 79
  Width = 996
  Height = 627
  Caption = 'Car Hire - Point to Point'
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
  object TopPnl: TPanel
    Left = 0
    Top = 0
    Width = 980
    Height = 64
    Align = alTop
    TabOrder = 0
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      TabOrder = 0
      Height = 62
      Width = 978
      object Label1: TcxLabel
        Left = 3
        Top = 21
        Caption = 'Agent City'
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 250
        Top = 21
        Caption = 'Agent'
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 656
        Top = 22
        Caption = 'Effective'
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 7
        Top = 44
        Caption = 'From City'
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 243
        Top = 45
        Caption = 'To City'
        Transparent = True
      end
      object CityLcmb: TcxLookupComboBox
        Left = 69
        Top = 19
        Properties.KeyFieldNames = 'cities_id'
        Properties.ListColumns = <
          item
            FieldName = 'city'
          end>
        Properties.ListSource = BackOfficeDataModule.CitiesDS
        Properties.OnEditValueChanged = CityLcmbPropertiesEditValueChanged
        Style.Color = 16247513
        TabOrder = 0
        OnExit = CityLcmbExit
        OnKeyPress = CityLcmbKeyPress
        Width = 161
      end
      object AgentLcmb: TcxLookupComboBox
        Left = 292
        Top = 19
        Properties.KeyFieldNames = 'Addressbook_id'
        Properties.ListColumns = <
          item
            FieldName = 'Organisation'
          end>
        Properties.ListSource = AgentDS
        Properties.OnEditValueChanged = CityLcmbPropertiesEditValueChanged
        Style.Color = 16247513
        TabOrder = 1
        OnExit = AgentLcmbExit
        OnKeyPress = AgentLcmbKeyPress
        Width = 188
      end
      object cxWefLCMB: TcxLookupComboBox
        Left = 713
        Top = 20
        Properties.DropDownListStyle = lsEditList
        Properties.KeyFieldNames = 'wef'
        Properties.ListColumns = <
          item
            FieldName = 'wef'
          end>
        Properties.ListSource = WefDS
        Properties.ValidateOnEnter = False
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 4
        OnEnter = cxWefLCMBEnter
        OnExit = cxWefLCMBExit
        OnKeyPress = cxWefLCMBKeyPress
        Width = 126
      end
      object cxButtonFilter: TcxButton
        Left = 909
        Top = 20
        Width = 70
        Height = 21
        Caption = 'Filter'
        TabOrder = 5
        OnClick = cxButtonFilterClick
      end
      object cxButtonUpdate: TcxButton
        Left = 844
        Top = 19
        Width = 27
        Height = 21
        Caption = 'Upd'
        TabOrder = 6
        OnClick = cxButtonUpdateClick
      end
      object cxFromCityLCMB: TcxLookupComboBox
        Left = 68
        Top = 41
        Properties.KeyFieldNames = 'cities_id'
        Properties.ListColumns = <
          item
            FieldName = 'City'
          end>
        Properties.ListSource = FromCityDs
        Properties.OnEditValueChanged = cxFromCityLCMBPropertiesEditValueChanged
        Style.Color = 16247513
        TabOrder = 2
        Width = 163
      end
      object cxSelectedCitiesCkb: TcxCheckBox
        Left = 490
        Top = 42
        Caption = 'Selected  Cities'
        ParentColor = False
        State = cbsChecked
        Style.Color = clBtnFace
        TabOrder = 3
        Transparent = True
        OnClick = cxSelectedCitiesCkbClick
        Width = 121
      end
      object cxToCityLCMB: TcxLookupComboBox
        Left = 292
        Top = 41
        Properties.KeyFieldNames = 'cities_id'
        Properties.ListColumns = <
          item
            FieldName = 'City'
          end>
        Properties.ListSource = ToCityDs
        Properties.OnEditValueChanged = cxToCityLCMBPropertiesEditValueChanged
        Style.Color = 16247513
        TabOrder = 7
        Width = 188
      end
    end
  end
  object BottomPnl: TPanel
    Left = 0
    Top = 554
    Width = 980
    Height = 35
    Align = alBottom
    TabOrder = 1
    object CloseBtn: TcxButton
      Left = 896
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = CloseBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
        77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333333333333370F8888888888
        88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object cxButton1: TcxButton
      Left = 7
      Top = 4
      Width = 106
      Height = 25
      Caption = 'Copy Costing'
      TabOrder = 1
      OnClick = cxButton1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
        77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333333333333370F8888888888
        88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object cxButton2: TcxButton
      Left = 125
      Top = 5
      Width = 124
      Height = 25
      Caption = 'Utilities'
      TabOrder = 2
      DropDownMenu = PopupMenu1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770F7777777777
        77707F3F3333333333370F988888888888707F733FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333FFFFFFFF3370F8800000000
        88707F337777777733370F888888888888707F333333333333370F8888888888
        88707F333333333333370FFFFFFFFFFFFFF07FFFFFFFFFFFFFF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Kind = cxbkDropDownButton
      NumGlyphs = 2
    end
  end
  object GridPnl: TPanel
    Left = 0
    Top = 64
    Width = 980
    Height = 490
    Align = alClient
    TabOrder = 2
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      TabOrder = 0
      Height = 431
      Width = 978
      object FerriesGrid: TcxGrid
        Left = 3
        Top = 18
        Width = 972
        Height = 410
        Align = alClient
        TabOrder = 0
        object FerriesGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = True
          NavigatorButtons.PriorPage.Visible = True
          NavigatorButtons.Prior.Visible = True
          NavigatorButtons.Next.Visible = True
          NavigatorButtons.NextPage.Visible = True
          NavigatorButtons.Last.Visible = True
          NavigatorButtons.Insert.Visible = True
          NavigatorButtons.Delete.Visible = True
          NavigatorButtons.Edit.Visible = True
          NavigatorButtons.Post.Visible = True
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.Refresh.Visible = True
          NavigatorButtons.SaveBookmark.Visible = True
          NavigatorButtons.GotoBookmark.Visible = True
          NavigatorButtons.Filter.Visible = True
          DataController.DataSource = CarHireP2PDs
          DataController.KeyFieldNames = 'CarHireP2P_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Appending = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = BackOfficeDataModule.cxStyleEvenRow
          Styles.ContentOdd = BackOfficeDataModule.cxStyleOddRow
          object FerriesGridDBTableView1vehicles_id: TcxGridDBColumn
            Caption = 'Automobile'
            DataBinding.FieldName = 'vehicles_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'Automobiles_id'
            Properties.ListColumns = <
              item
                FieldName = 'Automobile'
              end>
            Properties.ListSource = AutoDS
            Options.Filtering = False
            Width = 158
          end
          object FerriesGridDBTableView1frompax: TcxGridDBColumn
            Caption = 'From Pax'
            DataBinding.FieldName = 'frompax'
            Options.Filtering = False
          end
          object FerriesGridDBTableView1topax: TcxGridDBColumn
            Caption = 'To Pax'
            DataBinding.FieldName = 'topax'
            Options.Filtering = False
            Width = 77
          end
          object FerriesGridDBTableView1wef: TcxGridDBColumn
            DataBinding.FieldName = 'wef'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ShowTime = False
            Options.Filtering = False
            Width = 98
          end
          object FerriesGridDBTableView1wet: TcxGridDBColumn
            DataBinding.FieldName = 'wet'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ShowTime = False
            Options.Filtering = False
            Width = 86
          end
          object FerriesGridDBTableView1costnonac: TcxGridDBColumn
            Caption = 'Cost Non AC'
            DataBinding.FieldName = 'costnonac'
            Options.Filtering = False
            Width = 93
          end
          object FerriesGridDBTableView1costac: TcxGridDBColumn
            Caption = 'Cost AC'
            DataBinding.FieldName = 'costac'
            Options.Filtering = False
            Width = 75
          end
          object FerriesGridDBTableView1Rep: TcxGridDBColumn
            DataBinding.FieldName = 'Rep'
            Options.Filtering = False
            Options.Grouping = False
            Options.Sorting = False
            Width = 73
          end
          object FerriesGridDBTableView1Guide: TcxGridDBColumn
            DataBinding.FieldName = 'Guide'
            Options.Filtering = False
            Options.Grouping = False
            Width = 73
          end
          object FerriesGridDBTableView1Commission: TcxGridDBColumn
            Caption = 'Commission(%)'
            DataBinding.FieldName = 'commission'
            Options.Filtering = False
            Options.Grouping = False
          end
          object FerriesGridDBTableView1currencies_id: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'currencies_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'currencies_id'
            Properties.ListColumns = <
              item
                FieldName = 'currency'
              end>
            Properties.ListSource = BackOfficeDataModule.CurrenciesDS
          end
        end
        object FerriesGridLevel1: TcxGridLevel
          GridView = FerriesGridDBTableView1
        end
      end
    end
    object cxDBMemo1: TcxDBMemo
      Left = 1
      Top = 432
      Align = alBottom
      DataBinding.DataSource = CarHireP2PDs
      TabOrder = 1
      Visible = False
      Height = 57
      Width = 978
    end
  end
  object AgentSDS: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_addressbook(2,'#39'A'#39') where cities_id = :Citie' +
      's_id'
    DataSource = BackOfficeDataModule.CitiesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 352
    Top = 8
  end
  object AgentDSP: TDataSetProvider
    DataSet = AgentSDS
    Left = 368
    Top = 8
  end
  object AgentCDS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.CitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDSP'
    Left = 384
    Top = 8
    object AgentCDSAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AgentCDSOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object AgentCDSCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object AgentCDSCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object AgentCDSContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object AgentDS: TDataSource
    DataSet = AgentCDS
    Left = 400
    Top = 8
  end
  object CarHireP2PSds: TSQLDataSet
    CommandText = 'CarHireP2P'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 536
    Top = 432
  end
  object CarHireP2PDsp: TDataSetProvider
    DataSet = CarHireP2PSds
    Left = 552
    Top = 432
  end
  object CarHireP2PCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CarHireP2PDsp'
    BeforeInsert = CarHireP2PCdsBeforeInsert
    AfterInsert = CarHireP2PCdsAfterInsert
    BeforeEdit = CarHireP2PCdsBeforeEdit
    BeforePost = CarHireP2PCdsBeforePost
    AfterPost = CarHireP2PCdsAfterPost
    BeforeDelete = CarHireP2PCdsBeforeDelete
    AfterDelete = CarHireP2PCdsAfterDelete
    Left = 568
    Top = 432
    object CarHireP2PCdsCarHireP2P_id: TIntegerField
      FieldName = 'CarHireP2P_id'
    end
    object CarHireP2PCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object CarHireP2PCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object CarHireP2PCdsFromPax: TIntegerField
      FieldName = 'FromPax'
    end
    object CarHireP2PCdsToPax: TIntegerField
      FieldName = 'ToPax'
    end
    object CarHireP2PCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
    object CarHireP2PCdsWet: TSQLTimeStampField
      FieldName = 'Wet'
    end
    object CarHireP2PCdsCostNonAc: TFMTBCDField
      FieldName = 'CostNonAc'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 2
    end
    object CarHireP2PCdsCostAc: TFMTBCDField
      FieldName = 'CostAc'
      DisplayFormat = '#,##0'
      Precision = 15
      Size = 2
    end
    object CarHireP2PCdsFit: TBooleanField
      FieldName = 'Fit'
    end
    object CarHireP2PCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CarHireP2PCdsFromCities_id: TIntegerField
      FieldName = 'FromCities_id'
    end
    object CarHireP2PCdsToCities_id: TIntegerField
      FieldName = 'ToCities_id'
    end
    object CarHireP2PCdscommission: TFMTBCDField
      FieldName = 'commission'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object CarHireP2PCdsRep: TFMTBCDField
      FieldName = 'Rep'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object CarHireP2PCdsGuide: TFMTBCDField
      FieldName = 'Guide'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
  end
  object CarHireP2PDs: TDataSource
    DataSet = CarHireP2PCds
    Left = 584
    Top = 432
  end
  object AutoSds: TSQLDataSet
    CommandText = 
      'SELECT Vehicles_id AS Automobiles_id, Vehicle AS Automobile'#13#10'FRO' +
      'M Vehicles'#13#10'ORDER BY Vehicle'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 16
    Top = 104
  end
  object AutoDsp: TDataSetProvider
    DataSet = AutoSds
    Left = 32
    Top = 104
  end
  object AutoCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AutoDsp'
    BeforeInsert = AutoCdsBeforeInsert
    AfterInsert = CarHireP2PCdsAfterInsert
    BeforeEdit = AutoCdsBeforeEdit
    BeforeDelete = AutoCdsBeforeDelete
    AfterDelete = AutoCdsAfterDelete
    Left = 48
    Top = 104
    object AutoCdsAutomobiles_id: TIntegerField
      FieldName = 'Automobiles_id'
    end
    object AutoCdsAutomobile: TStringField
      FieldName = 'Automobile'
      Size = 35
    end
  end
  object AutoDS: TDataSource
    DataSet = AutoCds
    Left = 64
    Top = 104
  end
  object WefSds: TSQLDataSet
    CommandText = 'select distinct wef from carHire order by wef desc'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 736
    Top = 11
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 752
    Top = 11
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'WefDsp'
    Left = 768
    Top = 11
    object WefCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 784
    Top = 11
  end
  object FromCitySds: TSQLDataSet
    CommandText = 'SELECT Cities_id, City FROM Cities'#13#10'ORDER BY Cities_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 129
    Top = 41
  end
  object FromCityDsp: TDataSetProvider
    DataSet = FromCitySds
    Left = 144
    Top = 40
  end
  object FromCityCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'FromCityDsp'
    Left = 160
    Top = 40
    object FromCityCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object FromCityCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object FromCityDs: TDataSource
    DataSet = FromCityCds
    Left = 177
    Top = 41
  end
  object ToCitySds: TSQLDataSet
    CommandText = 'SELECT Cities_id, City FROM Cities'#13#10'ORDER BY Cities_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 329
    Top = 41
  end
  object ToCityDsp: TDataSetProvider
    DataSet = ToCitySds
    Left = 344
    Top = 40
  end
  object ToCityCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ToCityDsp'
    Left = 360
    Top = 40
    object IntegerField1: TIntegerField
      FieldName = 'Cities_id'
    end
    object StringField1: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object ToCityDs: TDataSource
    DataSet = ToCityCds
    Left = 377
    Top = 41
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 512
    object CarHirePerKmPriceList1: TMenuItem
      Caption = 'Car Hire Price List'
      OnClick = CarHirePerKmPriceList1Click
    end
  end
end
