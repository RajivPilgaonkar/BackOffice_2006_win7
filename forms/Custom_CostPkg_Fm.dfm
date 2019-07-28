object Custom_CostPkg_Form: TCustom_CostPkg_Form
  Left = 167
  Top = 135
  Width = 1098
  Height = 315
  Caption = 'Custom_CostPkg_Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1082
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
      Properties.ListSource = CitiesDs
      Style.Color = clWindow
      TabOrder = 1
      Width = 150
    end
    object cxLabel2: TcxLabel
      Left = 204
      Top = 8
      Caption = 'Package'
      Transparent = True
    end
    object cxPackageLcmb: TcxLookupComboBox
      Left = 260
      Top = 6
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
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
      Left = 593
      Top = 8
      Caption = 'Agent'
      Transparent = True
    end
    object cxAgentLcmb: TcxLookupComboBox
      Left = 637
      Top = 6
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Package'
        end>
      Properties.ListSource = PackageDs
      Style.Color = clWindow
      TabOrder = 6
      Width = 204
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 246
    Width = 1082
    Height = 31
    Align = alBottom
    TabOrder = 1
    object cxButtonUtilities: TcxButton
      Left = 8
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Utilities'
      TabOrder = 0
      Kind = cxbkDropDownButton
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 423
      Top = 0
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
      Top = 8
      DataBinding.DataField = 'costpackages_id'
      DataBinding.DataSource = MasterDs
      Style.TextStyle = []
      Transparent = True
      Height = 15
      Width = 61
    end
    object cxButtonClose: TcxButton
      Left = 1003
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 3
      OnClick = cxButtonCloseClick
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 33
    Width = 1082
    Height = 213
    Align = alClient
    TabOrder = 2
    object Splitter4: TSplitter
      Left = 901
      Top = 1
      Height = 211
    end
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 900
      Height = 211
      Align = alLeft
      TabOrder = 0
      object cxPageControl1: TcxPageControl
        Left = 1
        Top = 1
        Width = 898
        Height = 209
        ActivePage = cxTabSheet1
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 203
        ClientRectLeft = 3
        ClientRectRight = 892
        ClientRectTop = 26
        object cxTabSheet1: TcxTabSheet
          Caption = 'Package'
          ImageIndex = 0
        end
      end
    end
    object Panel9: TPanel
      Left = 904
      Top = 1
      Width = 177
      Height = 211
      Align = alClient
      TabOrder = 1
      object cxPageControl5: TcxPageControl
        Left = 1
        Top = 1
        Width = 175
        Height = 209
        ActivePage = cxTabSheet4
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 203
        ClientRectLeft = 3
        ClientRectRight = 169
        ClientRectTop = 26
        object cxTabSheet4: TcxTabSheet
          Caption = 'Closed'
          ImageIndex = 0
        end
      end
    end
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
  object PackageSds: TSQLDataSet
    CommandText = 
      'SELECT Packages_id, Package, From_Cities_id, Addressbook_id FROM' +
      ' Packages'#13#10'WHERE From_Cities_id = :Cities_id'
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
  object PackageDsp: TDataSetProvider
    DataSet = PackageSds
    Left = 279
    Top = 3
  end
  object PackageCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'From_Cities_id'
    MasterFields = 'cities_id'
    MasterSource = CitiesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'PackageDsp'
    Left = 300
    Top = 3
    object PackageCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object PackageCdsPackage: TStringField
      FieldName = 'Package'
      Size = 50
    end
    object PackageCdsFrom_Cities_id: TIntegerField
      FieldName = 'From_Cities_id'
    end
    object PackageCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object PackageDs: TDataSource
    DataSet = PackageCds
    Left = 314
    Top = 3
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM fn_Addressbook(2,'#39'A'#39')  f'#13#10'WHERE Addressbook_id = :' +
      'Addressbook_id'
    DataSource = PackageDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 683
    Top = 3
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 695
    Top = 3
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = PackageDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 716
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
    Left = 730
    Top = 3
  end
  object MasterSds: TSQLDataSet
    CommandText = 
      'SELECT * FROM CostPackages cp'#13#10'WHERE packages_id= :packages_id'#13#10 +
      'AND Wef = :Wef'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'packages_id'
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
    object MasterCdscostpackages_id: TIntegerField
      FieldName = 'costpackages_id'
    end
    object MasterCdspackages_id: TIntegerField
      FieldName = 'packages_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdswef: TSQLTimeStampField
      FieldName = 'wef'
    end
    object MasterCdswet: TSQLTimeStampField
      FieldName = 'wet'
    end
    object MasterCdscommission: TBCDField
      FieldName = 'commission'
      Precision = 2
      Size = 0
    end
    object MasterCdsavailable: TBooleanField
      FieldName = 'available'
    end
  end
  object MasterDs: TDataSource
    DataSet = MasterCds
    Left = 285
    Top = 32
  end
  object WefSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT Packages_id, Wef FROM CostPackages'#13#10'WHERE packag' +
      'es_id = :packages_id'#13#10'ORDER BY wef DESC'#13#10
    DataSource = PackageDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Packages_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 929
    Top = 11
  end
  object WefDsp: TDataSetProvider
    DataSet = WefSds
    Left = 945
    Top = 11
  end
  object WefCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Packages_id'
    MasterFields = 'Packages_id'
    MasterSource = PackageDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'WefDsp'
    Left = 961
    Top = 11
    object WefCdsPackages_id: TIntegerField
      FieldName = 'Packages_id'
    end
    object WefCdsWef: TSQLTimeStampField
      FieldName = 'Wef'
    end
  end
  object WefDS: TDataSource
    DataSet = WefCds
    Left = 977
    Top = 11
  end
end
