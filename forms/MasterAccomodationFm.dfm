inherited MasterAccommodationForm: TMasterAccommodationForm
  Left = 504
  Top = 294
  Width = 581
  Height = 427
  Caption = 'MasterAccommodationForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 573
    Height = 20
    TabOrder = 3
  end
  inherited Panel2: TPanel
    Top = 353
    Width = 573
    Height = 40
    TabOrder = 2
    object KeyIdDbText: TDBText
      Left = 407
      Top = 13
      Width = 65
      Height = 17
      DataField = 'masteraccommodation_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 148
      Top = 9
      Width = 252
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
      Left = 480
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
    Height = 205
    Width = 573
    object Label3: TLabel
      Left = 20
      Top = 22
      Width = 22
      Height = 13
      Caption = 'City'
      Transparent = True
    end
    object Label4: TLabel
      Left = 20
      Top = 70
      Width = 65
      Height = 13
      Caption = 'Room Type'
      Transparent = True
    end
    object Label5: TLabel
      Left = 289
      Top = 70
      Width = 23
      Height = 13
      Caption = 'A/C'
      Transparent = True
    end
    object Label6: TLabel
      Left = 20
      Top = 118
      Width = 57
      Height = 13
      Caption = 'Meal Plan'
      Transparent = True
    end
    object Label8: TLabel
      Left = 289
      Top = 22
      Width = 31
      Height = 13
      Caption = 'Hotel'
      Transparent = True
    end
    object Label12: TLabel
      Left = 20
      Top = 46
      Width = 38
      Height = 13
      Caption = 'Day In'
      Transparent = True
    end
    object Label9: TLabel
      Left = 289
      Top = 46
      Width = 47
      Height = 13
      Caption = 'Day Out'
      Transparent = True
    end
    object Label11: TLabel
      Left = 20
      Top = 94
      Width = 59
      Height = 13
      Caption = 'Agent City'
      Transparent = True
    end
    object Label13: TLabel
      Left = 289
      Top = 94
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label2: TLabel
      Left = 20
      Top = 142
      Width = 50
      Height = 13
      Caption = 'Remarks'
      Transparent = True
    end
    object cxDBMemo1: TcxDBMemo
      Left = 92
      Top = 140
      DataBinding.DataField = 'remarks'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 9
      Height = 63
      Width = 464
    end
    object RoomTypeLcmb: TcxDBLookupComboBox
      Left = 92
      Top = 68
      DataBinding.DataField = 'roomtypes_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 200
      Properties.KeyFieldNames = 'roomtypes_id'
      Properties.ListColumns = <
        item
          MinWidth = 150
          FieldName = 'roomtype'
        end
        item
          MinWidth = 50
          FieldName = 'AC'
        end>
      Properties.ListSource = RoomTypeDs
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = RoomTypeLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 4
      Width = 161
    end
    object AgentLcmb: TcxDBLookupComboBox
      Left = 340
      Top = 92
      DataBinding.DataField = 'agent_addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          MinWidth = 200
          FieldName = 'Organisation'
        end
        item
          MinWidth = 100
          FieldName = 'City'
        end>
      Properties.ListSource = AgentDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 7
      Width = 213
    end
    object MealPlanLcmb: TcxDBLookupComboBox
      Left = 92
      Top = 116
      DataBinding.DataField = 'mealplans_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 200
      Properties.KeyFieldNames = 'mealplans_id'
      Properties.ListColumns = <
        item
          MinWidth = 50
          FieldName = 'plan'
        end
        item
          MinWidth = 150
          FieldName = 'mealplan'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = MealPlanDs
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 8
      Width = 161
    end
    object ACchkbox: TcxDBCheckBox
      Left = 340
      Top = 68
      DataBinding.DataField = 'ac'
      DataBinding.DataSource = MasterDS
      ParentColor = False
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 5
      Width = 21
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 92
      Top = 44
      DataBinding.DataField = 'dayin'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 2
      Width = 159
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 340
      Top = 44
      DataBinding.DataField = 'dayout'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 3
      Width = 159
    end
    object AgentCityLcmb: TcxLookupComboBox
      Left = 92
      Top = 92
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = BackOfficeDataModule.AgentCityDs
      Properties.OnEditValueChanged = AgentCityLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 6
      Width = 161
    end
    object CityLCMB: TcxLookupComboBox
      Left = 92
      Top = 20
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.OnEditValueChanged = CityLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 0
      Width = 159
    end
    object HotelLcmb: TcxDBLookupComboBox
      Left = 340
      Top = 20
      DataBinding.DataField = 'addressbook_id'
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
      Properties.OnEditValueChanged = HotelLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 1
      Width = 158
    end
  end
  object GroupBox1: TcxGroupBox [3]
    Left = 0
    Top = 225
    Align = alClient
    Caption = 'Tour Details'
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 1
    Height = 128
    Width = 573
    object Label1: TLabel
      Left = 340
      Top = 21
      Width = 183
      Height = 13
      Caption = 'Applicable to the following tours'
    end
    object CustomMasterCxGrid: TcxGrid
      Left = 3
      Top = 18
      Width = 322
      Height = 107
      Align = alLeft
      TabOrder = 0
      object CustomMasterCxGridDBTableView1: TcxGridDBTableView
        OnDblClick = CustomMasterCxGridDBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = Detail1DS
        DataController.KeyFieldNames = 'masteraccommodationtours_id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsData.Appending = True
        OptionsView.GroupByBox = False
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
      Left = 341
      Top = 42
      DataBinding.DataField = 'tours'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = True
      Style.Color = 16247513
      TabOrder = 1
      Width = 220
    end
    object UpdateBtn: TcxButton
      Left = 484
      Top = 67
      Width = 75
      Height = 20
      Caption = 'Update'
      TabOrder = 2
      OnClick = UpdateBtnClick
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'masteraccommodation'
    CommandType = ctTable
    Params = <
      item
        DataType = ftInteger
        Name = 'masters_id'
        ParamType = ptInput
        Value = 452
      end>
    Left = 16
    Top = 0
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 32
    Top = 0
  end
  inherited MasterDS: TDataSource
    Left = 56
    Top = 0
  end
  inherited MasterCds: TClientDataSet
    Active = True
    IndexFieldNames = 'masters_id;dayin;dayout'
    MasterFields = 'masters_id'
    MasterSource = MasterForm.MasterDs
    PacketRecords = 0
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 48
    Top = 0
    object MasterCdsmasteraccommodation_id: TIntegerField
      FieldName = 'masteraccommodation_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
      OnChange = MasterCdsaddressbook_idChange
    end
    object MasterCdsdayin: TIntegerField
      FieldName = 'dayin'
    end
    object MasterCdsdayout: TIntegerField
      FieldName = 'dayout'
    end
    object MasterCdstours: TStringField
      FieldName = 'tours'
      Size = 50
    end
    object MasterCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object MasterCdsac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object MasterCdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object MasterCdsagent_addressbook_id: TIntegerField
      FieldName = 'agent_addressbook_id'
    end
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'masteraccommodationtours'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'masteraccommodation_id'
        ParamType = ptInput
        Value = 3008
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 280
    Top = 288
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 296
    Top = 288
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 328
    Top = 288
  end
  inherited Detail1Cds: TClientDataSet
    Active = True
    IndexFieldNames = 'masteraccommodation_id'
    MasterFields = 'masteraccommodation_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 312
    Top = 288
    object Detail1Cdsmasteraccommodationtours_id: TIntegerField
      FieldName = 'masteraccommodationtours_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdsmasteraccommodation_id: TIntegerField
      FieldName = 'masteraccommodation_id'
    end
    object Detail1Cdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
      LookupDataSet = TourCodeCds
      LookupKeyFields = 'TourCodes_id'
      LookupResultField = 'Tourcode'
      KeyFields = 'tourcodes_id'
    end
  end
  object TourCodeSds: TSQLDataSet
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
    Left = 280
    Top = 320
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 296
    Top = 320
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
    Left = 312
    Top = 320
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
    Left = 328
    Top = 320
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_addressbook(2,'#39'A'#39') where cities_id = :citie' +
      's_id'#13#10
    DataSource = BackOfficeDataModule.AgentCityDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 448
    Top = 104
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 464
    Top = 104
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = BackOfficeDataModule.AgentCityDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 480
    Top = 104
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
  object AgentDS: TDataSource
    DataSet = AgentCds
    Left = 496
    Top = 104
  end
  object RoomTypeSds: TSQLDataSet
    CommandText = 'select * from dbo.fn_GetHotelRoomTypes  (:Addressbook_id)'
    DataSource = HotelDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Addressbook_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 160
    Top = 72
  end
  object RoomTypeDsp: TDataSetProvider
    DataSet = RoomTypeSds
    Left = 176
    Top = 72
  end
  object RoomTypeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'addressbook_id'
    MasterSource = HotelDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'RoomTypeDsp'
    Left = 192
    Top = 72
    object RoomTypeCdsRoomTypes_id: TIntegerField
      FieldName = 'RoomTypes_id'
    end
    object RoomTypeCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 100
    end
    object RoomTypeCdsAC: TBooleanField
      FieldName = 'AC'
    end
    object RoomTypeCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object RoomTypeDs: TDataSource
    DataSet = RoomTypeCds
    Left = 208
    Top = 72
  end
  object MealPlanSds: TSQLDataSet
    CommandText = 
      'SELECT MealPlans_id, MealPlan, [Plan], Addressbook_id FROM dbo.f' +
      'n_GetHotelMealPlans(:Addressbook_id,2)'
    DataSource = HotelDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 136
    Top = 128
  end
  object MealPlanDsp: TDataSetProvider
    DataSet = MealPlanSds
    Left = 152
    Top = 128
  end
  object MealPlanCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = HotelDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'MealPlanDsp'
    Left = 168
    Top = 128
    object MealPlanCdsMealPlans_id: TIntegerField
      FieldName = 'MealPlans_id'
    end
    object MealPlanCdsMealPlan: TStringField
      FieldName = 'MealPlan'
      Size = 100
    end
    object MealPlanCdsPlan: TStringField
      FieldName = 'Plan'
      Size = 10
    end
    object MealPlanCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object MealPlanDs: TDataSource
    DataSet = MealPlanCds
    Left = 184
    Top = 128
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_addressbook(2,'#39'H'#39') where cities_id = :citie' +
      's_id'#13#10
    DataSource = BackOfficeDataModule.CitiesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 384
    Top = 32
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 392
    Top = 32
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = BackOfficeDataModule.CitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 408
    Top = 32
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
    Left = 416
    Top = 32
  end
end
