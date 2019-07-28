object Custom_CostSrv_Form: TCustom_CostSrv_Form
  Left = 89
  Top = 5
  Width = 1096
  Height = 723
  Caption = 'Custom_CostSrv_Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 514
    Width = 1080
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 223
    Width = 1080
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter5: TSplitter
    Left = 0
    Top = 329
    Width = 1080
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1080
    Height = 33
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 855
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Wef'
      Transparent = True
    end
    object SpeedButton1: TSpeedButton
      Left = 1037
      Top = 4
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 8
      Caption = 'City'
      Transparent = True
    end
    object cxCityLcmb: TcxLookupComboBox
      Left = 37
      Top = 6
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          Width = 150
          FieldName = 'city'
        end
        item
          Width = 150
          FieldName = 'state'
        end>
      Style.Color = clWindow
      TabOrder = 1
      Width = 150
    end
    object cxLabel2: TcxLabel
      Left = 204
      Top = 8
      Caption = 'Agent'
      Transparent = True
    end
    object cxAgentLcmb: TcxLookupComboBox
      Left = 241
      Top = 6
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = AgentDs
      Properties.ValidateOnEnter = False
      EditValue = 0
      Style.Color = clWhite
      TabOrder = 3
      Width = 312
    end
    object cxWefLCMB: TcxLookupComboBox
      Left = 884
      Top = 6
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'wef'
      Properties.ListColumns = <
        item
          FieldName = 'wef'
        end>
      Properties.ListSource = WefDS
      TabOrder = 4
      Width = 148
    end
    object cxLabel3: TcxLabel
      Left = 584
      Top = 8
      Caption = 'Service City'
      Transparent = True
    end
    object cxServiceCityLcmb: TcxLookupComboBox
      Left = 662
      Top = 6
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          Width = 150
          FieldName = 'city'
        end
        item
          Width = 150
          FieldName = 'state'
        end>
      Style.Color = clWindow
      TabOrder = 6
      Width = 150
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 637
    Width = 1080
    Height = 48
    Align = alBottom
    TabOrder = 1
    object cxButtonUtilities: TcxButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      Kind = cxbkDropDownButton
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 423
      Top = 8
      Width = 260
      Height = 33
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      Buttons.Insert.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = MasterDs
      TabOrder = 1
    end
    object cxDBLabelKeyId_Master: TcxDBLabel
      Left = 823
      Top = 3
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
    object cxDBLabelKeyId_Detail2: TcxDBLabel
      Left = 824
      Top = 19
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 62
    end
    object cxButtonClose: TcxButton
      Left = 1003
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 4
      OnClick = cxButtonCloseClick
    end
    object cxDBLabelKeyId_Detail1: TcxDBLabel
      Left = 903
      Top = 3
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 517
    Width = 1080
    Height = 120
    Align = alBottom
    TabOrder = 2
    object cxPageControl4: TcxPageControl
      Left = 1
      Top = 1
      Width = 1078
      Height = 118
      ActivePage = cxTabSheetTransport
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 112
      ClientRectLeft = 3
      ClientRectRight = 1072
      ClientRectTop = 26
      object cxTabSheetTransport: TcxTabSheet
        Caption = 'Transport Costs'
        ImageIndex = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 332
    Width = 1080
    Height = 182
    Align = alClient
    TabOrder = 3
    object Splitter1: TSplitter
      Left = 633
      Top = 1
      Height = 180
    end
    object Panel10: TPanel
      Left = 1
      Top = 1
      Width = 632
      Height = 180
      Align = alLeft
      Caption = 'Panel10'
      TabOrder = 0
      object cxPageControl3: TcxPageControl
        Left = 1
        Top = 1
        Width = 630
        Height = 178
        ActivePage = cxTabSheet3
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 172
        ClientRectLeft = 3
        ClientRectRight = 624
        ClientRectTop = 26
        object cxTabSheet3: TcxTabSheet
          Caption = 'Guide Costs'
          ImageIndex = 0
        end
      end
    end
    object Panel11: TPanel
      Left = 636
      Top = 1
      Width = 443
      Height = 180
      Align = alClient
      TabOrder = 1
      object cxPageControl6: TcxPageControl
        Left = 1
        Top = 1
        Width = 441
        Height = 178
        ActivePage = cxTabSheet5
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 172
        ClientRectLeft = 3
        ClientRectRight = 435
        ClientRectTop = 26
        object cxTabSheet5: TcxTabSheet
          Caption = 'Entrance Costs'
          ImageIndex = 0
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 33
    Width = 1080
    Height = 190
    Align = alTop
    TabOrder = 4
    object Splitter4: TSplitter
      Left = 617
      Top = 1
      Height = 138
    end
    object Panel6: TPanel
      Left = 1
      Top = 139
      Width = 1078
      Height = 50
      Align = alBottom
      TabOrder = 0
    end
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 616
      Height = 138
      Align = alLeft
      TabOrder = 1
      object cxPageControl1: TcxPageControl
        Left = 1
        Top = 1
        Width = 614
        Height = 136
        ActivePage = cxTabSheet1
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 130
        ClientRectLeft = 3
        ClientRectRight = 608
        ClientRectTop = 26
        object cxTabSheet1: TcxTabSheet
          Caption = 'Service'
          ImageIndex = 0
        end
      end
    end
    object Panel9: TPanel
      Left = 620
      Top = 1
      Width = 459
      Height = 138
      Align = alClient
      TabOrder = 2
      object cxPageControl5: TcxPageControl
        Left = 1
        Top = 1
        Width = 457
        Height = 136
        ActivePage = cxTabSheet4
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 130
        ClientRectLeft = 3
        ClientRectRight = 451
        ClientRectTop = 26
        object cxTabSheet4: TcxTabSheet
          Caption = 'Closed'
          ImageIndex = 0
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 226
    Width = 1080
    Height = 103
    Align = alTop
    TabOrder = 5
    object cxPageControl2: TcxPageControl
      Left = 1
      Top = 1
      Width = 1078
      Height = 101
      ActivePage = cxTabSheet2
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 95
      ClientRectLeft = 3
      ClientRectRight = 1072
      ClientRectTop = 26
      object cxTabSheet2: TcxTabSheet
        Caption = 'Misc Costs'
        ImageIndex = 0
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 36
    Top = 596
    object CopyTrains1: TMenuItem
      Caption = 'Search By Categories'
    end
  end
  object Detail1Sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM CostServicesClose'#13#10'WHERE CostServices_id = :CostSe' +
      'rvices_id'#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'costservices_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 522
    Top = 24
  end
  object Detail1Dsp: TDataSetProvider
    DataSet = Detail1Sds
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 24
  end
  object Detail1Cds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CostServices_id'
    MasterFields = 'costservices_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'Detail1Dsp'
    BeforeInsert = Detail1CdsBeforeInsert
    BeforeEdit = Detail1CdsBeforeEdit
    BeforePost = Detail1CdsBeforePost
    AfterPost = Detail1CdsAfterPost
    BeforeDelete = Detail1CdsBeforeDelete
    AfterDelete = Detail1CdsAfterDelete
    Left = 561
    Top = 24
    object Detail1CdsCostServicesClose_id: TIntegerField
      FieldName = 'CostServicesClose_id'
    end
    object Detail1CdsCostServices_id: TIntegerField
      FieldName = 'CostServices_id'
    end
    object Detail1CdsFromDate: TSQLTimeStampField
      FieldName = 'FromDate'
    end
    object Detail1CdsToDate: TSQLTimeStampField
      FieldName = 'ToDate'
    end
  end
  object Detail1Ds: TDataSource
    DataSet = Detail1Cds
    Left = 583
    Top = 24
  end
  object Detail2Sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM costservicesothers'#13#10'WHERE CostServices_id = :CostS' +
      'ervices_id'#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'costservices_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 680
    Top = 24
  end
  object Detail2Dsp: TDataSetProvider
    DataSet = Detail2Sds
    UpdateMode = upWhereKeyOnly
    Left = 702
    Top = 24
  end
  object Detail2Cds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'costservices_id'
    MasterFields = 'costservices_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'Detail2Dsp'
    BeforeInsert = Detail2CdsBeforeInsert
    BeforeEdit = Detail2CdsBeforeEdit
    BeforePost = Detail2CdsBeforePost
    AfterPost = Detail2CdsAfterPost
    BeforeDelete = Detail2CdsBeforeDelete
    AfterDelete = Detail2CdsAfterDelete
    Left = 719
    Top = 24
    object Detail2Cdscostservicesothers_id: TIntegerField
      FieldName = 'costservicesothers_id'
    end
    object Detail2Cdscostservices_id: TIntegerField
      FieldName = 'costservices_id'
    end
    object Detail2Cdsfrompax: TIntegerField
      FieldName = 'frompax'
    end
    object Detail2Cdstopax: TIntegerField
      FieldName = 'topax'
    end
    object Detail2Cdscostperperson: TBCDField
      FieldName = 'costperperson'
      Precision = 10
      Size = 2
    end
    object Detail2Cdscostpergroup: TBCDField
      FieldName = 'costpergroup'
      Precision = 10
      Size = 2
    end
    object Detail2Cdsremarks: TStringField
      FieldName = 'remarks'
      Size = 100
    end
    object Detail2Cdstourleaderfree: TBooleanField
      FieldName = 'tourleaderfree'
    end
    object Detail2Cdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object Detail2Cdsresident: TSmallintField
      FieldName = 'resident'
    end
    object Detail2Cdstourleader: TIntegerField
      FieldName = 'tourleader'
    end
  end
  object Detail2Ds: TDataSource
    DataSet = Detail2Cds
    Left = 741
    Top = 24
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM fn_Addressbook(2,'#39'A'#39') '#13#10'WHERE Cities_id = :Cities_' +
      'id'
    DataSource = CitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 267
    Top = 3
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 279
    Top = 3
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 300
    Top = 3
    object AgentCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AgentCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object AgentCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object AgentCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object AgentCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 314
    Top = 3
  end
  object WefSds: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT DISTINCT Addressbook_id, Wef, cities_id '#13#10'FROM CostServic' +
      'es'#13#10'WHERE Addressbook_id = :Addressbook_id'#13#10'ORDER BY Wef DESC'#13#10
    DataSource = ServiceCitiesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 913
    Top = 3
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 929
    Top = 3
  end
  object WefCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = AgentDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'WefDsp'
    Left = 945
    Top = 3
    object WefCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object WefCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object WefCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 961
    Top = 3
  end
  object CitiesSds: TSQLDataSet
    CommandText = 
      'select cities_id, city, state'#13#10'from cities c '#13#10'left join states ' +
      's on c.states_id = s.states_id'#13#10'order by city'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 72
  end
  object CitiesDsp: TDataSetProvider
    DataSet = CitiesSds
    Left = 88
  end
  object CitiesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'CitiesDsp'
    Left = 104
    object CitiesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object CitiesCdscity: TStringField
      FieldName = 'city'
      Size = 50
    end
    object CitiesCdsstate: TStringField
      FieldName = 'state'
      Size = 50
    end
  end
  object CitiesDs: TDataSource
    DataSet = CitiesCds
    Left = 120
  end
  object MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM CostServices cs'#13#10'WHERE addressbook_id = :addressbo' +
      'ok_id'#13#10'AND cities_id = :Cities_id'#13#10'AND Wef = :Wef'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'addressbook_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'Wef'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 216
    Top = 32
  end
  object MasterDsp: TDataSetProvider
    DataSet = MasterSds
    UpdateMode = upWhereKeyOnly
    Left = 238
    Top = 32
  end
  object MasterCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'MasterDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 263
    Top = 32
    object MasterCdscostservices_id: TIntegerField
      FieldName = 'costservices_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object MasterCdsremarks: TMemoField
      FieldName = 'remarks'
      BlobType = ftMemo
    end
    object MasterCdstourleaderfree: TBooleanField
      FieldName = 'tourleaderfree'
    end
    object MasterCdsservicecharges: TBCDField
      FieldName = 'servicecharges'
      Precision = 2
      Size = 0
    end
    object MasterCdsagentcharges: TBCDField
      FieldName = 'agentcharges'
      Precision = 2
      Size = 0
    end
    object MasterCdscommissionontransport: TBCDField
      FieldName = 'commissionontransport'
      Precision = 2
      Size = 0
    end
    object MasterCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object MasterCdscostservicesdistinct_id: TIntegerField
      FieldName = 'costservicesdistinct_id'
    end
  end
  object MasterDs: TDataSource
    DataSet = MasterCds
    Left = 285
    Top = 32
  end
  object ServiceCitiesSds: TSQLDataSet
    CommandText = 
      'select DISTINCT cs.Addressbook_id, cs.cities_id, c.City from Cos' +
      'tServices cs'#13#10'LEFT JOIN Cities c ON cs.Cities_id = c.Cities_id'#13#10 +
      'WHERE cs.addressbook_id = :Addressbook_id'#13#10'order by c.city'
    DataSource = AgentDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 688
  end
  object ServiceCitiesDsp: TDataSetProvider
    DataSet = ServiceCitiesSds
    Left = 704
  end
  object ServiceCitiesCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = AgentDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'ServiceCitiesDsp'
    Left = 720
    object IntegerField8: TIntegerField
      FieldName = 'cities_id'
    end
    object StringField2: TStringField
      FieldName = 'city'
      Size = 50
    end
    object ServiceCitiesCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object ServiceCitiesDs: TDataSource
    DataSet = ServiceCitiesCds
    Left = 736
  end
  object Detail3Sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM costservicesguides'#13#10'WHERE CostServices_id = :CostS' +
      'ervices_id'#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CostServices_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 680
    Top = 64
  end
  object Detail3Dsp: TDataSetProvider
    DataSet = Detail3Sds
    UpdateMode = upWhereKeyOnly
    Left = 702
    Top = 64
  end
  object Detail3Cds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'costservices_id'
    MasterFields = 'costservices_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'Detail3Dsp'
    BeforeInsert = Detail3CdsBeforeInsert
    BeforeEdit = Detail3CdsBeforeEdit
    BeforePost = Detail3CdsBeforePost
    AfterPost = Detail3CdsAfterPost
    BeforeDelete = Detail3CdsBeforeDelete
    AfterDelete = Detail3CdsAfterDelete
    Left = 719
    Top = 64
    object Detail3Cdscostservicesguides_id: TIntegerField
      FieldName = 'costservicesguides_id'
    end
    object Detail3Cdscostservices_id: TIntegerField
      FieldName = 'costservices_id'
    end
    object Detail3Cdsfrompax: TIntegerField
      FieldName = 'frompax'
    end
    object Detail3Cdstopax: TIntegerField
      FieldName = 'topax'
    end
    object Detail3Cdscost: TBCDField
      FieldName = 'cost'
      Precision = 10
      Size = 2
    end
    object Detail3Cdstourleaderfree: TBooleanField
      FieldName = 'tourleaderfree'
    end
    object Detail3Cdsremarks: TStringField
      FieldName = 'remarks'
      Size = 100
    end
    object Detail3Cdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object Detail3Cdsresident: TSmallintField
      FieldName = 'resident'
    end
  end
  object Detail3Ds: TDataSource
    DataSet = Detail3Cds
    Left = 741
    Top = 64
  end
  object Detail4Sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM costservicesentrancefees'#13#10'WHERE CostServices_id = ' +
      ':CostServices_id'#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CostServices_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 680
    Top = 96
  end
  object Detail4Dsp: TDataSetProvider
    DataSet = Detail4Sds
    UpdateMode = upWhereKeyOnly
    Left = 702
    Top = 96
  end
  object Detail4Cds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'costservices_id'
    MasterFields = 'costservices_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'Detail4Dsp'
    BeforeInsert = Detail4CdsBeforeInsert
    BeforeEdit = Detail4CdsBeforeEdit
    BeforePost = Detail4CdsBeforePost
    AfterPost = Detail4CdsAfterPost
    BeforeDelete = Detail4CdsBeforeDelete
    AfterDelete = Detail4CdsAfterDelete
    Left = 719
    Top = 96
    object Detail4Cdscostservicesentrancefees_id: TIntegerField
      FieldName = 'costservicesentrancefees_id'
    end
    object Detail4Cdscostservices_id: TIntegerField
      FieldName = 'costservices_id'
    end
    object Detail4Cdsfrompax: TIntegerField
      FieldName = 'frompax'
    end
    object Detail4Cdstopax: TIntegerField
      FieldName = 'topax'
    end
    object Detail4Cdscost: TBCDField
      FieldName = 'cost'
      Precision = 10
      Size = 2
    end
    object Detail4Cdstourleaderfree: TBooleanField
      FieldName = 'tourleaderfree'
    end
    object Detail4Cdsremarks: TStringField
      FieldName = 'remarks'
      Size = 100
    end
    object Detail4Cdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object Detail4Cdsresident: TSmallintField
      FieldName = 'resident'
    end
  end
  object Detail4Ds: TDataSource
    DataSet = Detail4Cds
    Left = 741
    Top = 96
  end
  object Detail5Sds: TSQLDataSet
    CommandText = 
      'SELECT * FROM costservicestransport'#13#10'WHERE CostService_id = :Cos' +
      'tServices_id'#13#10
    DataSource = MasterDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'costservices_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 680
    Top = 128
  end
  object Detail5Dsp: TDataSetProvider
    DataSet = Detail5Sds
    UpdateMode = upWhereKeyOnly
    Left = 702
    Top = 128
  end
  object Detail5Cds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'costservice_id'
    MasterFields = 'costservices_id'
    MasterSource = MasterDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'Detail5Dsp'
    BeforeInsert = Detail5CdsBeforeInsert
    BeforeEdit = Detail5CdsBeforeEdit
    BeforePost = Detail5CdsBeforePost
    AfterPost = Detail5CdsAfterPost
    BeforeDelete = Detail5CdsBeforeDelete
    AfterDelete = Detail5CdsAfterDelete
    Left = 719
    Top = 128
    object Detail5Cdscostservicestransport_id: TIntegerField
      FieldName = 'costservicestransport_id'
    end
    object Detail5Cdscostservice_id: TIntegerField
      FieldName = 'costservice_id'
    end
    object Detail5Cdsfrompax: TIntegerField
      FieldName = 'frompax'
    end
    object Detail5Cdstopax: TIntegerField
      FieldName = 'topax'
    end
    object Detail5Cdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object Detail5Cdsfit: TBooleanField
      FieldName = 'fit'
    end
    object Detail5Cdscostnonac: TBCDField
      FieldName = 'costnonac'
      Precision = 10
      Size = 2
    end
    object Detail5Cdscostac: TBCDField
      FieldName = 'costac'
      Precision = 10
      Size = 2
    end
    object Detail5Cdsparkingfee: TBCDField
      FieldName = 'parkingfee'
      Precision = 10
      Size = 2
    end
    object Detail5Cdscurrencies_id: TIntegerField
      FieldName = 'currencies_id'
    end
    object Detail5Cdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object Detail5Cdsobsolete: TSmallintField
      FieldName = 'obsolete'
    end
    object Detail5CdsRoadTaxPerDay: TFMTBCDField
      FieldName = 'RoadTaxPerDay'
      Precision = 18
      Size = 4
    end
    object Detail5CdsMeetAndAssist: TBCDField
      FieldName = 'MeetAndAssist'
      Precision = 10
      Size = 2
    end
    object Detail5CdsEntryAp: TBCDField
      FieldName = 'EntryAp'
      Precision = 10
      Size = 2
    end
  end
  object Detail5Ds: TDataSource
    DataSet = Detail5Cds
    Left = 741
    Top = 128
  end
end
