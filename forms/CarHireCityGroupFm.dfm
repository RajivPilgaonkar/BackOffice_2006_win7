object CarHireCityGroupForm: TCarHireCityGroupForm
  Left = 237
  Top = 282
  Width = 996
  Height = 627
  Caption = 'Car Hire Form'
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
        Top = 20
        Caption = 'City'
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 174
        Top = 20
        Caption = 'Agent'
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 656
        Top = 23
        Caption = 'Effective'
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 145
        Top = 43
        Caption = 'City Group'
        Transparent = True
      end
      object CityLcmb: TcxLookupComboBox
        Left = 26
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
        Width = 143
      end
      object AgentLcmb: TcxLookupComboBox
        Left = 209
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
        Width = 190
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
        TabOrder = 3
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
        TabOrder = 4
        OnClick = cxButtonFilterClick
      end
      object cxButtonUpdate: TcxButton
        Left = 844
        Top = 18
        Width = 27
        Height = 21
        Caption = 'Upd'
        TabOrder = 5
        OnClick = cxButtonUpdateClick
      end
      object cxCityGroupLCMB: TcxLookupComboBox
        Left = 209
        Top = 42
        Properties.KeyFieldNames = 'CarHireGroups_id'
        Properties.ListColumns = <
          item
            FieldName = 'CarHireGroup'
          end>
        Properties.ListSource = CityGroupDs
        Properties.OnEditValueChanged = cxServiceCityLCMBPropertiesEditValueChanged
        Style.Color = 16247513
        TabOrder = 2
        Width = 364
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
      object CostGrid: TcxGrid
        Left = 3
        Top = 18
        Width = 972
        Height = 410
        Align = alClient
        TabOrder = 0
        object CostGridDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = CarHireDs
          DataController.KeyFieldNames = 'CarHireGroupCosts_id'
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
          object CostGridDBTableView1vehicles_id: TcxGridDBColumn
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
            Width = 99
          end
          object CostGridDBTableView1frompax: TcxGridDBColumn
            Caption = 'From Pax'
            DataBinding.FieldName = 'FromPax'
            Options.Filtering = False
            Width = 69
          end
          object CostGridDBTableView1topax: TcxGridDBColumn
            Caption = 'To Pax'
            DataBinding.FieldName = 'ToPax'
            Options.Filtering = False
            Width = 52
          end
          object CostGridDBTableView1wef: TcxGridDBColumn
            DataBinding.FieldName = 'Wef'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ShowTime = False
            Options.Filtering = False
            Width = 83
          end
          object CostGridDBTableView1wet: TcxGridDBColumn
            DataBinding.FieldName = 'Wet'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ShowTime = False
            Options.Filtering = False
            Width = 85
          end
          object CostGridDBTableView1costnonac: TcxGridDBColumn
            Caption = 'Cost Non AC'
            DataBinding.FieldName = 'CostNonAc'
            Options.Filtering = False
            Width = 83
          end
          object CostGridDBTableView1costac: TcxGridDBColumn
            Caption = 'Cost AC'
            DataBinding.FieldName = 'CostAc'
            Options.Filtering = False
            Width = 65
          end
          object CostGridDBTableView1ParkingFee: TcxGridDBColumn
            Caption = 'Parking Fee'
            DataBinding.FieldName = 'ParkingFee'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object CostGridDBTableView1CostNightHalt: TcxGridDBColumn
            Caption = 'Cost Night Halt '
            DataBinding.FieldName = 'CostNightHalt'
            Options.Filtering = False
            Options.Grouping = False
            Width = 97
          end
          object CostGridDBTableView1TollTax: TcxGridDBColumn
            Caption = 'Toll Tax'
            DataBinding.FieldName = 'TollTax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
          end
          object CostGridDBTableView1CostEscort: TcxGridDBColumn
            Caption = 'Cost Escort'
            DataBinding.FieldName = 'CostEscort'
            Options.Filtering = False
            Options.Grouping = False
            Width = 81
          end
          object CostGridDBTableView1currencies_id: TcxGridDBColumn
            Caption = 'Currency'
            DataBinding.FieldName = 'Currencies_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'currencies_id'
            Properties.ListColumns = <
              item
                FieldName = 'currency'
              end>
            Properties.ListSource = BackOfficeDataModule.CurrenciesDS
          end
          object CostGridDBTableView1Commission: TcxGridDBColumn
            Caption = 'Commission (%)'
            DataBinding.FieldName = 'commission'
            Options.Filtering = False
            Options.Grouping = False
          end
        end
        object CostGridLevel1: TcxGridLevel
          GridView = CostGridDBTableView1
        end
      end
    end
    object cxDBMemo1: TcxDBMemo
      Left = 1
      Top = 432
      Align = alBottom
      DataBinding.DataField = 'remarks'
      DataBinding.DataSource = CarHireDs
      TabOrder = 1
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
    Left = 256
    Top = 8
  end
  object AgentDSP: TDataSetProvider
    DataSet = AgentSDS
    Left = 272
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
    Left = 288
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
    Left = 304
    Top = 8
  end
  object CarHireSds: TSQLDataSet
    CommandText = 'CarHireGroupCosts'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 536
    Top = 432
  end
  object CarHireDsp: TDataSetProvider
    DataSet = CarHireSds
    Left = 552
    Top = 432
  end
  object CarHireCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CarHireDsp'
    BeforeInsert = CarHireCdsBeforeInsert
    AfterInsert = CarHireCdsAfterInsert
    BeforeEdit = CarHireCdsBeforeEdit
    BeforePost = CarHireCdsBeforePost
    AfterPost = CarHireCdsAfterPost
    BeforeDelete = CarHireCdsBeforeDelete
    AfterDelete = CarHireCdsAfterDelete
    Left = 568
    Top = 432
    object CarHireCdsCarHireGroupCosts_id: TIntegerField
      FieldName = 'CarHireGroupCosts_id'
    end
    object CarHireCdsCarHireGroups_id: TIntegerField
      FieldName = 'CarHireGroups_id'
    end
    object CarHireCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object CarHireCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object CarHireCdsFromPax: TIntegerField
      FieldName = 'FromPax'
    end
    object CarHireCdsToPax: TIntegerField
      FieldName = 'ToPax'
    end
    object CarHireCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CarHireCdsWet: TSQLTimeStampField
      FieldName = 'Wet'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CarHireCdsCostNonAc: TFMTBCDField
      FieldName = 'CostNonAc'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object CarHireCdsCostAc: TFMTBCDField
      FieldName = 'CostAc'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object CarHireCdsCurrencies_id: TIntegerField
      FieldName = 'Currencies_id'
    end
    object CarHireCdsRemarks: TStringField
      FieldName = 'Remarks'
      Size = 254
    end
    object CarHireCdsParkingFee: TFMTBCDField
      FieldName = 'ParkingFee'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object CarHireCdsCostNightHalt: TFMTBCDField
      FieldName = 'CostNightHalt'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object CarHireCdsTollTax: TFMTBCDField
      FieldName = 'TollTax'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object CarHireCdsCostEscort: TFMTBCDField
      FieldName = 'CostEscort'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object CarHireCdscommission: TFMTBCDField
      FieldName = 'commission'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object CarHireDs: TDataSource
    DataSet = CarHireCds
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
    AfterInsert = CarHireCdsAfterInsert
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
    CommandText = 'select distinct wef from carHireGroupCosts order by wef desc'
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
  object CityGroupSds: TSQLDataSet
    CommandText = 
      'SELECT CarHireGroups_id, CarHireGroup'#13#10'FROM CarHireGroups'#13#10'ORDER' +
      ' BY CarHireGroup'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 249
    Top = 41
  end
  object CityGroupDsp: TDataSetProvider
    DataSet = CityGroupSds
    Left = 264
    Top = 40
  end
  object CityGroupCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CityGroupDsp'
    Left = 280
    Top = 40
    object CityGroupCdsCarHireGroups_id: TIntegerField
      FieldName = 'CarHireGroups_id'
    end
    object CityGroupCdsCarHireGroup: TStringField
      FieldName = 'CarHireGroup'
      Size = 200
    end
  end
  object CityGroupDs: TDataSource
    DataSet = CityGroupCds
    Left = 297
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
