object CarHireForm: TCarHireForm
  Left = 268
  Top = 66
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
        Top = 22
        Caption = 'City'
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 174
        Top = 22
        Caption = 'Agent'
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 481
        Top = 22
        Caption = 'Master'
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 656
        Top = 22
        Caption = 'Effective'
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 138
        Top = 43
        Caption = 'Service City'
        Transparent = True
      end
      object CityLcmb: TcxLookupComboBox
        Left = 26
        Top = 20
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
      object PerTourChk: TcxCheckBox
        Left = 400
        Top = 21
        Caption = 'Per Tour'
        ParentColor = False
        Style.Color = clBtnFace
        TabOrder = 4
        Transparent = True
        OnClick = PerTourChkClick
        Width = 73
      end
      object MasterLcmb: TcxLookupComboBox
        Left = 524
        Top = 20
        Properties.KeyFieldNames = 'MASTERS_ID'
        Properties.ListColumns = <
          item
            FieldName = 'MASTERCODE'
          end>
        Properties.ListSource = MasterDS
        Properties.OnEditValueChanged = MasterLcmbPropertiesEditValueChanged
        Style.Color = 16247513
        TabOrder = 5
        OnExit = MasterLcmbExit
        OnKeyPress = MasterLcmbKeyPress
        Width = 122
      end
      object AgentLcmb: TcxLookupComboBox
        Left = 209
        Top = 20
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
        TabOrder = 6
        OnEnter = cxWefLCMBEnter
        OnExit = cxWefLCMBExit
        OnKeyPress = cxWefLCMBKeyPress
        Width = 126
      end
      object cxButtonFilter: TcxButton
        Left = 909
        Top = 19
        Width = 70
        Height = 21
        Caption = 'Filter'
        TabOrder = 7
        OnClick = cxButtonFilterClick
      end
      object cxButtonUpdate: TcxButton
        Left = 844
        Top = 19
        Width = 27
        Height = 21
        Caption = 'Upd'
        TabOrder = 8
        OnClick = cxButtonUpdateClick
      end
      object cxServiceCityLCMB: TcxLookupComboBox
        Left = 209
        Top = 41
        Properties.KeyFieldNames = 'cities_id'
        Properties.ListColumns = <
          item
            FieldName = 'City'
          end>
        Properties.ListSource = ServiceCityDs
        Properties.OnEditValueChanged = cxServiceCityLCMBPropertiesEditValueChanged
        Style.Color = 16247513
        TabOrder = 2
        Width = 190
      end
      object cxSelectedCitiesCkb: TcxCheckBox
        Left = 400
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
      Left = 141
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
          DataController.DataSource = CarHireDs
          DataController.KeyFieldNames = 'carhire_id'
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
            Width = 99
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
            Caption = 'Wef'
            DataBinding.FieldName = 'wef'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ShowTime = False
            Options.Filtering = False
            Width = 98
          end
          object FerriesGridDBTableView1wet: TcxGridDBColumn
            Caption = 'Wet'
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
          object FerriesGridDBTableView1costperkmnonac: TcxGridDBColumn
            Caption = 'Cost Per Km. Non AC'
            DataBinding.FieldName = 'costperkmnonac'
            Options.Filtering = False
            Width = 138
          end
          object FerriesGridDBTableView1costperkmac: TcxGridDBColumn
            Caption = 'Cost Per Km. AC'
            DataBinding.FieldName = 'costperkmac'
            Options.Filtering = False
            Width = 109
          end
          object FerriesGridDBTableView1fit: TcxGridDBColumn
            Caption = 'FIT'
            DataBinding.FieldName = 'fit'
            Width = 46
          end
          object FerriesGridDBTableView1minimumkm: TcxGridDBColumn
            Caption = 'Min. Km.'
            DataBinding.FieldName = 'minimumkm'
            Options.Filtering = False
            Width = 75
          end
          object FerriesGridDBTableView1costnighthalt: TcxGridDBColumn
            Caption = 'Cost Night Halt'
            DataBinding.FieldName = 'costnighthalt'
            Options.Filtering = False
          end
          object FerriesGridDBTableView1TollTax: TcxGridDBColumn
            Caption = 'Toll Tax'
            DataBinding.FieldName = 'TollTax'
            Options.Filtering = False
            Options.Grouping = False
            Width = 75
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
          object FerriesGridDBTableView1commission: TcxGridDBColumn
            Caption = 'Commission'
            DataBinding.FieldName = 'commission'
            Options.Filtering = False
          end
          object FerriesGridDBTableView1Escort: TcxGridDBColumn
            Caption = 'Cost Escort'
            DataBinding.FieldName = 'CostEscort'
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
  object MasterSds: TSQLDataSet
    CommandText = 
      'SELECT 1 AS COLUMN1,MASTERCODE, FIT, MASTERS_ID FROM MASTERS'#13#10'UN' +
      'ION'#13#10'SELECT 2 AS COLUMN1,'#39'<None>'#39' AS MASTERCODE , CAST (0 AS BIT' +
      ') AS FIT, null AS MASTERS_ID'#13#10'ORDER BY 1,MASTERCODE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 528
    Top = 8
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    Left = 544
    Top = 8
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDsp'
    Left = 560
    Top = 8
    object MasterCdsCOLUMN1: TIntegerField
      FieldName = 'COLUMN1'
    end
    object MasterCdsMASTERCODE: TStringField
      FieldName = 'MASTERCODE'
      Size = 50
    end
    object MasterCdsFIT: TBooleanField
      FieldName = 'FIT'
    end
    object MasterCdsMASTERS_ID: TIntegerField
      FieldName = 'MASTERS_ID'
    end
  end
  object MasterDS: TDataSource
    DataSet = MasterCds
    Left = 576
    Top = 8
  end
  object CarHireSds: TSQLDataSet
    CommandText = 'carhire'
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
    object CarHireCdscarhire_id: TIntegerField
      FieldName = 'carhire_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CarHireCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object CarHireCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object CarHireCdsfrompax: TIntegerField
      FieldName = 'frompax'
    end
    object CarHireCdstopax: TIntegerField
      FieldName = 'topax'
    end
    object CarHireCdswef: TSQLTimeStampField
      FieldName = 'wef'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object CarHireCdswet: TSQLTimeStampField
      FieldName = 'wet'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object CarHireCdscostnonac: TBCDField
      FieldName = 'costnonac'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object CarHireCdscostac: TIntegerField
      FieldName = 'costac'
      DisplayFormat = '#,##0.00'
    end
    object CarHireCdsfit: TBooleanField
      FieldName = 'fit'
    end
    object CarHireCdsremarks: TMemoField
      FieldName = 'remarks'
      BlobType = ftMemo
    end
    object CarHireCdscostpertour: TBooleanField
      FieldName = 'costpertour'
    end
    object CarHireCdscostperkmac: TBCDField
      FieldName = 'costperkmac'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object CarHireCdscostperkmnonac: TBCDField
      FieldName = 'costperkmnonac'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object CarHireCdsminimumkm: TIntegerField
      FieldName = 'minimumkm'
    end
    object CarHireCdscostinterstate: TBCDField
      FieldName = 'costinterstate'
      Precision = 10
      Size = 2
    end
    object CarHireCdscostnighthalt: TBCDField
      FieldName = 'costnighthalt'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object CarHireCdscoststatetax: TBCDField
      FieldName = 'coststatetax'
      Precision = 10
      Size = 2
    end
    object CarHireCdscommission: TBCDField
      FieldName = 'commission'
      DisplayFormat = '#,##0.00'
      Precision = 10
      Size = 2
    end
    object CarHireCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object CarHireCdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object CarHireCdsTollTax: TFMTBCDField
      FieldName = 'TollTax'
      DisplayFormat = '#,##0.00'
      Precision = 18
    end
    object CarHireCdsServiceCities_id: TIntegerField
      FieldName = 'ServiceCities_id'
    end
    object CarHireCdsCostEscort: TFMTBCDField
      FieldName = 'CostEscort'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 2
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
    BeforeInsert = AutoCdsBeforeInsert
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
  object ServiceCitySds: TSQLDataSet
    CommandText = 'SELECT Cities_id, City FROM Cities'#13#10'ORDER BY Cities_id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 249
    Top = 41
  end
  object ServiceCityDsp: TDataSetProvider
    DataSet = ServiceCitySds
    Left = 264
    Top = 40
  end
  object ServiceCityCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ServiceCityDsp'
    Left = 280
    Top = 40
    object ServiceCityCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object ServiceCityCdsCity: TStringField
      FieldName = 'City'
      Size = 50
    end
  end
  object ServiceCityDs: TDataSource
    DataSet = ServiceCityCds
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
