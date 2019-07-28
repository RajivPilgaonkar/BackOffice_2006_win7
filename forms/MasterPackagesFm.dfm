inherited MasterPackagesForm: TMasterPackagesForm
  Left = 405
  Top = 157
  Width = 675
  Height = 483
  Caption = 'MasterPackagesForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 667
    Height = 20
    TabOrder = 3
  end
  inherited Panel2: TPanel
    Top = 409
    Width = 667
    Height = 40
    TabOrder = 2
    object KeyIdDbText: TDBText
      Left = 479
      Top = 13
      Width = 65
      Height = 17
      DataField = 'masterpackages_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 132
      Top = 9
      Width = 288
      Height = 25
      Buttons.PriorPage.Enabled = False
      Buttons.PriorPage.Visible = False
      Buttons.NextPage.Enabled = False
      Buttons.NextPage.Visible = False
      Buttons.SaveBookmark.Visible = True
      Buttons.GotoBookmark.Visible = True
      Buttons.Filter.Visible = False
      DataSource = MasterDS
      TabOrder = 0
    end
    object cxButton1: TcxButton
      Left = 560
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Close'
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
  end
  object GroupBox2: TcxGroupBox [2]
    Left = 0
    Top = 20
    Align = alTop
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 0
    Height = 257
    Width = 667
    object Label3: TLabel
      Left = 16
      Top = 119
      Width = 54
      Height = 13
      Caption = 'From Day'
      Transparent = True
    end
    object Label4: TLabel
      Left = 16
      Top = 167
      Width = 64
      Height = 13
      Caption = 'From Place'
      Transparent = True
    end
    object Label5: TLabel
      Left = 16
      Top = 143
      Width = 59
      Height = 13
      Caption = 'From Time'
      Transparent = True
    end
    object Label6: TLabel
      Left = 341
      Top = 143
      Width = 47
      Height = 13
      Caption = 'To Time'
      Transparent = True
    end
    object Label8: TLabel
      Left = 16
      Top = 93
      Width = 53
      Height = 13
      Caption = 'From City'
      Transparent = True
    end
    object Label12: TLabel
      Left = 341
      Top = 93
      Width = 41
      Height = 13
      Caption = 'To City'
      Transparent = True
    end
    object Label9: TLabel
      Left = 341
      Top = 117
      Width = 42
      Height = 13
      Caption = 'To Day'
      Transparent = True
    end
    object Label11: TLabel
      Left = 16
      Top = 23
      Width = 22
      Height = 13
      Caption = 'City'
      Transparent = True
    end
    object Label13: TLabel
      Left = 341
      Top = 23
      Width = 88
      Height = 13
      Caption = 'Package Agent'
      Transparent = True
    end
    object Label2: TLabel
      Left = 16
      Top = 191
      Width = 50
      Height = 13
      Caption = 'Remarks'
      Transparent = True
    end
    object Label15: TLabel
      Left = 341
      Top = 167
      Width = 52
      Height = 13
      Caption = 'To Place'
      Transparent = True
    end
    object Label17: TLabel
      Left = 16
      Top = 47
      Width = 51
      Height = 13
      Caption = 'Package'
      Transparent = True
    end
    object Label18: TLabel
      Left = 341
      Top = 47
      Width = 31
      Height = 13
      Caption = 'Hotel'
      Transparent = True
    end
    object Label7: TLabel
      Left = 16
      Top = 69
      Width = 49
      Height = 13
      Caption = 'Duration'
      Transparent = True
    end
    object Label10: TLabel
      Left = 341
      Top = 69
      Width = 103
      Height = 13
      Caption = 'Days of Operation'
      Transparent = True
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 81
      Top = 165
      DataBinding.DataField = 'from_place'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 6
      Width = 226
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 448
      Top = 165
      DataBinding.DataField = 'to_place'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 7
      Width = 210
    end
    object cxDBMemo1: TcxDBMemo
      Left = 81
      Top = 189
      DataBinding.DataField = 'remarks'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 8
      Height = 63
      Width = 577
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 81
      Top = 141
      DataBinding.DataField = 'from_time'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Properties.TimeFormat = tfHourMin
      Properties.UseCtrlIncrement = True
      Style.Color = 16247513
      TabOrder = 4
      Width = 75
    end
    object cxDBTimeEdit2: TcxDBTimeEdit
      Left = 448
      Top = 141
      DataBinding.DataField = 'to_time'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Properties.TimeFormat = tfHourMin
      Properties.UseCtrlIncrement = True
      Style.Color = 16247513
      TabOrder = 5
      Width = 75
    end
    object PackagesLCmb: TcxDBLookupComboBox
      Left = 81
      Top = 45
      DataBinding.DataField = 'packages_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'packages_id'
      Properties.ListColumns = <
        item
          MinWidth = 150
          FieldName = 'package'
        end
        item
          MinWidth = 150
          FieldName = 'organisation'
        end>
      Properties.ListSource = PackagesDs
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = PackagesLCmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 1
      OnClick = PackagesLCmbClick
      Width = 226
    end
    object CityLCmb: TcxLookupComboBox
      Left = 81
      Top = 21
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.OnEditValueChanged = CityLCmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 0
      Width = 226
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 81
      Top = 117
      DataBinding.DataField = 'from_day'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 3
      Width = 75
    end
    object cxDBLabel1: TcxDBLabel
      Left = 448
      Top = 23
      DataBinding.DataField = 'PackageAgentLookup'
      DataBinding.DataSource = MasterDS
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 17
      Width = 201
    end
    object HotelLcmb: TcxDBLookupComboBox
      Left = 448
      Top = 45
      DataBinding.DataField = 'from_addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 250
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          MinWidth = 150
          FieldName = 'Organisation'
        end
        item
          MinWidth = 100
          FieldName = 'City'
        end>
      Properties.ListSource = HotelDS
      Style.Color = 16247513
      TabOrder = 2
      Width = 210
    end
    object cxDurationLabel: TcxLabel
      Left = 81
      Top = 69
      AutoSize = False
      Caption = 'cxDurationLabel'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 17
      Width = 226
    end
    object cxDaysOfOperationLabel: TcxLabel
      Left = 448
      Top = 69
      AutoSize = False
      Caption = 'cxDaysOfOperationLabel'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 17
      Width = 201
    end
    object cxFromCityLabel: TcxLabel
      Left = 81
      Top = 93
      AutoSize = False
      Caption = 'cxFromCityLabel'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 17
      Width = 226
    end
    object cxToCityLabel: TcxLabel
      Left = 448
      Top = 93
      AutoSize = False
      Caption = 'cxToCityLabel'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 19
      Width = 201
    end
    object cxToDayLabel: TcxLabel
      Left = 448
      Top = 117
      AutoSize = False
      Caption = 'cxToDayLabel'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      Height = 19
      Width = 75
    end
  end
  object GroupBox1: TcxGroupBox [3]
    Left = 0
    Top = 277
    Align = alClient
    Caption = 'Tour Details'
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 1
    Height = 132
    Width = 667
    object Label1: TLabel
      Left = 388
      Top = 21
      Width = 183
      Height = 13
      Caption = 'Applicable to the following tours'
    end
    object CustomMasterCxGrid: TcxGrid
      Left = 3
      Top = 18
      Width = 367
      Height = 111
      Align = alLeft
      TabOrder = 0
      object CustomMasterCxGridDBTableView1: TcxGridDBTableView
        OnDblClick = CustomMasterCxGridDBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = Detail1DS
        DataController.KeyFieldNames = 'masterpackagestours_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
        Styles.Background = BackOfficeDataModule.cxStyleBackground
        object CustomMasterCxGridDBTableView1tourcodes_id: TcxGridDBColumn
          Caption = 'Tour Code'
          DataBinding.FieldName = 'tourcodes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'TourCodes_id'
          Properties.ListColumns = <
            item
              FieldName = 'Tourcode'
            end>
          Properties.ListSource = TourCodeDs
          Width = 200
        end
      end
      object CustomMasterCxGridLevel1: TcxGridLevel
        GridView = CustomMasterCxGridDBTableView1
      end
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 389
      Top = 47
      DataBinding.DataField = 'tours'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = True
      Style.Color = 16247513
      TabOrder = 1
      Width = 268
    end
    object UpdateBtn: TcxButton
      Left = 581
      Top = 74
      Width = 75
      Height = 20
      Caption = 'Update'
      TabOrder = 2
      OnClick = UpdateBtnClick
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'masterpackages'
    CommandType = ctTable
    Left = 40
    Top = 0
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 56
    Top = 0
  end
  inherited MasterDS: TDataSource
    Left = 82
    Top = 0
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'masters_id;from_day;from_time;to_time'
    MasterFields = 'masters_id'
    MasterSource = MasterForm.MasterDs
    PacketRecords = 0
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 72
    Top = 1
    object MasterCdsmasterpackages_id: TIntegerField
      FieldName = 'masterpackages_id'
    end
    object MasterCdspackages_id: TIntegerField
      FieldName = 'packages_id'
      OnChange = MasterCdspackages_idChange
    end
    object MasterCdsfrom_day: TIntegerField
      FieldName = 'from_day'
      OnChange = MasterCdsfrom_dayChange
    end
    object MasterCdsfrom_time: TSQLTimeStampField
      FieldName = 'from_time'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdsfrom_addressbook_id: TIntegerField
      FieldName = 'from_addressbook_id'
    end
    object MasterCdsto_time: TSQLTimeStampField
      FieldName = 'to_time'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdsto_place: TStringField
      FieldName = 'to_place'
      Size = 30
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 250
    end
    object MasterCdstours: TStringField
      FieldName = 'tours'
    end
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCdsfrom_place: TStringField
      FieldName = 'from_place'
      Size = 30
    end
    object MasterCdsPackageAgentLookup: TStringField
      FieldKind = fkLookup
      FieldName = 'PackageAgentLookup'
      LookupDataSet = BackOfficeDataModule.AgentCds
      LookupKeyFields = 'Addressbook_id'
      LookupResultField = 'Organisation'
      KeyFields = 'addressbook_id'
      Size = 100
      Lookup = True
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'masterpackagestours'
    CommandType = ctTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 256
    Top = 296
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 272
    Top = 296
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 304
    Top = 296
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'masterpackages_id'
    MasterFields = 'masterpackages_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 288
    Top = 296
    object Detail1Cdsmasterpackagestours_id: TIntegerField
      FieldName = 'masterpackagestours_id'
    end
    object Detail1Cdsmasterpackages_id: TIntegerField
      FieldName = 'masterpackages_id'
    end
    object Detail1Cdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
      LookupDataSet = TourCodeCds
      LookupKeyFields = 'TourCodes_id'
      LookupResultField = 'Tourcode'
      KeyFields = 'tourcodes_id'
    end
  end
  object PackagesSds: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT distinct package , p.packages_id, p.addressbook_id, p.fro' +
      'm_cities_id, a.organisation'#13#10'from packages p LEFT JOIN addressbo' +
      'ok a '#13#10'    ON p.addressbook_id = a.addressbook_id'#13#10'WHERE from_ci' +
      'ties_id = :cities_id '#13#10'ORDER by  p.package'#13#10
    DataSource = BackOfficeDataModule.CitiesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 184
    Top = 56
  end
  object PackagesDsp: TDataSetProvider
    DataSet = PackagesSds
    Left = 200
    Top = 56
  end
  object PackagesCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'from_cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.CitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'PackagesDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    Left = 216
    Top = 57
    object PackagesCdspackage: TStringField
      FieldName = 'package'
      Size = 50
    end
    object PackagesCdspackages_id: TIntegerField
      FieldName = 'packages_id'
    end
    object PackagesCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object PackagesCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object PackagesCdsorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
  end
  object PackagesDs: TDataSource
    DataSet = PackagesCds
    Left = 234
    Top = 56
  end
  object TourCodeSds: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT b.TourCodes_id, b.Tourcode , A.Masters_id'#13#10'FROM TourCalen' +
      'dar A, TourCodes B'#13#10'WHERE A.MASTERS_ID = :Masters_id'#13#10'AND A.TOUR' +
      'CODES_ID = B.TOURCODES_ID'#13#10'ORDER BY B.TOURCODE'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Masters_id'
        ParamType = ptInput
        Value = 452
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 256
    Top = 336
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 272
    Top = 336
  end
  object TourCodeCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Masters_id'
    MasterFields = 'masters_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 288
    Top = 336
    object TourCodeCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCodeCdsTourcode: TStringField
      FieldName = 'Tourcode'
      Size = 10
    end
    object TourCodeCdsMasters_id: TIntegerField
      FieldName = 'Masters_id'
    end
  end
  object TourCodeDs: TDataSource
    DataSet = TourCodeCds
    Left = 304
    Top = 336
  end
  object HotelSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_addressbook(2,'#39'H'#39')'#13#10'order by organisation'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 600
    Top = 48
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 608
    Top = 48
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 624
    Top = 48
    object HotelCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelCdsOrganisation: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object HotelCdsCity: TStringField
      FieldName = 'City'
      Size = 100
    end
    object HotelCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object HotelCdsContact: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object HotelDS: TDataSource
    DataSet = HotelCds
    Left = 632
    Top = 48
  end
end
