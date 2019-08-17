inherited MasterServicesForm: TMasterServicesForm
  Left = 230
  Top = 63
  Width = 715
  Height = 513
  Caption = 'MasterServicesForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 699
    Height = 20
    TabOrder = 4
  end
  inherited Panel2: TPanel
    Top = 435
    Width = 699
    Height = 40
    TabOrder = 3
    object KeyIdDbText: TDBText
      Left = 514
      Top = 12
      Width = 65
      Height = 17
      DataField = 'masterservices_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 244
      Top = 9
      Width = 276
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
      Left = 592
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
    Height = 159
    Width = 699
    object Label3: TLabel
      Left = 20
      Top = 24
      Width = 23
      Height = 13
      Caption = 'Day'
      Transparent = True
    end
    object Label4: TLabel
      Left = 20
      Top = 72
      Width = 22
      Height = 13
      Caption = 'City'
      Transparent = True
    end
    object Label5: TLabel
      Left = 286
      Top = 71
      Width = 31
      Height = 13
      Caption = 'Hotel'
      Transparent = True
    end
    object Label8: TLabel
      Left = 286
      Top = 24
      Width = 69
      Height = 13
      Caption = 'Service City'
      Transparent = True
    end
    object Label12: TLabel
      Left = 20
      Top = 47
      Width = 44
      Height = 13
      Caption = 'Service'
      Transparent = True
    end
    object Label9: TLabel
      Left = 286
      Top = 46
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label2: TLabel
      Left = 20
      Top = 95
      Width = 50
      Height = 13
      Caption = 'Remarks'
      Transparent = True
    end
    object AgentLcmb: TcxDBLookupComboBox
      Left = 364
      Top = 44
      DataBinding.DataField = 'addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'organisation'
        end>
      Properties.ListSource = AgentDS
      Style.Color = 16247513
      TabOrder = 4
      Width = 179
    end
    object ServiceLcmb: TcxDBLookupComboBox
      Left = 77
      Top = 44
      DataBinding.DataField = 'services_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Services_id'
      Properties.ListColumns = <
        item
          MinWidth = 250
          FieldName = 'Description'
        end
        item
          MinWidth = 50
          FieldName = 'Active'
        end>
      Properties.ListSource = ServiceDs
      Properties.OnEditValueChanged = ServiceLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 3
      Width = 179
    end
    object cxDBMemo1: TcxDBMemo
      Left = 77
      Top = 94
      DataBinding.DataField = 'remarks'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 7
      Height = 63
      Width = 619
    end
    object SightseeingRBG: TcxDBRadioGroup
      Left = 560
      Top = 19
      DataBinding.DataField = 'sightseeing'
      DataBinding.DataSource = MasterDS
      Properties.DefaultValue = False
      Properties.Items = <
        item
          Caption = 'Transfers'
          Value = False
        end
        item
          Caption = 'Services'
          Value = True
        end>
      Properties.ReadOnly = False
      TabOrder = 2
      OnClick = SightseeingRBGClick
      Height = 52
      Width = 137
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 77
      Top = 20
      DataBinding.DataField = 'day'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 0
      Width = 179
    end
    object ServiceCityLcmb: TcxLookupComboBox
      Left = 364
      Top = 20
      Properties.ClearKey = 46
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = BackOfficeDataModule.ServiceCitiesDS
      Properties.OnEditValueChanged = ServiceCityLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 1
      Width = 179
    end
    object CityLCMB: TcxLookupComboBox
      Left = 77
      Top = 69
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.OnEditValueChanged = CityLCMBPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 5
      Width = 179
    end
    object HotelLcmb: TcxDBLookupComboBox
      Left = 364
      Top = 68
      DataBinding.DataField = 'hotel_addressbook_id'
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
      TabOrder = 6
      Width = 179
    end
    object cxDisplayActiveCkb: TcxCheckBox
      Left = 591
      Top = 76
      Caption = 'Display Active'
      State = cbsChecked
      TabOrder = 8
      Transparent = True
      OnClick = cxDisplayActiveCkbClick
      Width = 111
    end
  end
  object GroupBox1: TcxGroupBox [3]
    Left = 0
    Top = 306
    Align = alClient
    Caption = 'Tour Details'
    ParentColor = False
    Style.Color = 15451300
    TabOrder = 2
    Height = 129
    Width = 699
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
      Height = 108
      Align = alLeft
      TabOrder = 0
      object CustomMasterCxGridDBTableView1: TcxGridDBTableView
        OnDblClick = CustomMasterCxGridDBTableView1DblClick
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = Detail1DS
        DataController.KeyFieldNames = 'masterservicestours_id'
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
      Left = 389
      Top = 37
      DataBinding.DataField = 'tours'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = True
      Style.Color = 16247513
      TabOrder = 1
      Width = 220
    end
    object UpdateBtn: TcxButton
      Left = 618
      Top = 38
      Width = 75
      Height = 20
      Caption = 'Update'
      TabOrder = 2
      OnClick = UpdateBtnClick
    end
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 179
    Width = 699
    Height = 127
    Align = alTop
    Color = 15451300
    TabOrder = 1
    object TransferGB: TcxGroupBox
      Left = 8
      Top = 3
      Caption = ' Transfers '
      ParentColor = False
      Style.Color = 15451300
      TabOrder = 0
      Height = 118
      Width = 405
      object Label10: TLabel
        Left = 16
        Top = 22
        Width = 80
        Height = 13
        Caption = 'Transfer Type'
        Transparent = True
      end
      object Label15: TLabel
        Left = 16
        Top = 44
        Width = 71
        Height = 13
        Caption = 'Airline/Train'
        Transparent = True
      end
      object Label16: TLabel
        Left = 16
        Top = 67
        Width = 33
        Height = 13
        Caption = 'Place'
        Transparent = True
      end
      object Label17: TLabel
        Left = 265
        Top = 69
        Width = 44
        Height = 13
        Caption = 'Timings'
        Transparent = True
      end
      object Label18: TLabel
        Left = 43
        Top = 92
        Width = 55
        Height = 13
        Caption = 'Transport'
        Transparent = True
      end
      object Label19: TLabel
        Left = 147
        Top = 94
        Width = 81
        Height = 13
        Caption = 'A/C Transport'
        Transparent = True
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 99
        Top = 43
        DataBinding.DataField = 'flight'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 2
        Width = 294
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 99
        Top = 20
        DataBinding.DataField = 'transfertypes_id'
        DataBinding.DataSource = MasterDS
        Properties.ClearKey = 46
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'transfertypes_id'
        Properties.ListColumns = <
          item
            FieldName = 'transfer'
          end>
        Properties.ListSource = BackOfficeDataModule.TransferTypesDS
        Style.Color = 16247513
        TabOrder = 0
        Width = 158
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 99
        Top = 67
        DataBinding.DataField = 'place'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 3
        Width = 158
      end
      object cxButton2: TcxButton
        Left = 263
        Top = 19
        Width = 129
        Height = 20
        Hint = 'Displays only when Tickets are entered'
        Caption = 'Travel Schedule'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = cxButton2Click
      end
      object cxDBTimeEdit2: TcxDBTimeEdit
        Left = 320
        Top = 66
        DataBinding.DataField = 'startingtime'
        DataBinding.DataSource = MasterDS
        Properties.TimeFormat = tfHourMin
        Properties.UseCtrlIncrement = True
        Style.Color = 16247513
        TabOrder = 4
        Width = 65
      end
      object cxDBCheckBox5: TcxDBCheckBox
        Left = 15
        Top = 90
        DataBinding.DataField = 'transport'
        DataBinding.DataSource = MasterDS
        ParentColor = False
        Style.Color = 16247513
        TabOrder = 5
        Width = 22
      end
      object cxDBCheckBox6: TcxDBCheckBox
        Left = 119
        Top = 92
        DataBinding.DataField = 'ac'
        DataBinding.DataSource = MasterDS
        ParentColor = False
        Style.Color = 16247513
        TabOrder = 6
        Width = 22
      end
    end
    object SightSeeingGB: TcxGroupBox
      Left = 416
      Top = 3
      ParentColor = False
      Style.Color = 15451300
      TabOrder = 1
      Height = 117
      Width = 291
      object Label6: TLabel
        Left = 43
        Top = 46
        Width = 34
        Height = 13
        Caption = 'Guide'
        Transparent = True
      end
      object Label7: TLabel
        Left = 43
        Top = 22
        Width = 55
        Height = 13
        Caption = 'Transport'
        Transparent = True
      end
      object Label11: TLabel
        Left = 182
        Top = 22
        Width = 83
        Height = 13
        Caption = 'Entrance Fees'
        Transparent = True
      end
      object Label13: TLabel
        Left = 182
        Top = 46
        Width = 81
        Height = 13
        Caption = 'A/C Transport'
        Transparent = True
      end
      object Label14: TLabel
        Left = 17
        Top = 71
        Width = 44
        Height = 13
        Caption = 'Timings'
        Transparent = True
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 15
        Top = 20
        DataBinding.DataField = 'transport'
        DataBinding.DataSource = MasterDS
        ParentColor = False
        Style.Color = 16247513
        TabOrder = 0
        Width = 22
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 154
        Top = 20
        DataBinding.DataField = 'entrancefees'
        DataBinding.DataSource = MasterDS
        ParentColor = False
        Style.Color = 16247513
        TabOrder = 1
        Width = 22
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 154
        Top = 44
        DataBinding.DataField = 'ac'
        DataBinding.DataSource = MasterDS
        ParentColor = False
        Style.Color = 16247513
        TabOrder = 3
        Width = 22
      end
      object cxDBTimeEdit1: TcxDBTimeEdit
        Left = 72
        Top = 67
        DataBinding.DataField = 'startingtime'
        DataBinding.DataSource = MasterDS
        Properties.TimeFormat = tfHourMin
        Properties.UseCtrlIncrement = True
        Style.Color = 16247513
        TabOrder = 4
        Width = 65
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 16
        Top = 44
        DataBinding.DataField = 'guide'
        DataBinding.DataSource = MasterDS
        ParentColor = False
        Style.Color = 16247513
        TabOrder = 2
        Width = 22
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    Active = True
    CommandText = 'masterservices'
    CommandType = ctTable
    Params = <
      item
        DataType = ftInteger
        Name = 'masters_id'
        ParamType = ptInput
        Value = 452
      end>
    Left = 32
    Top = 0
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 0
  end
  inherited MasterDS: TDataSource
    Left = 72
    Top = 0
  end
  inherited MasterCds: TClientDataSet
    Active = True
    IndexFieldNames = 'masters_id;day;startingtime'
    MasterFields = 'masters_id'
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 56
    Top = 0
    object MasterCdsmasterservices_id: TIntegerField
      FieldName = 'masterservices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsday: TIntegerField
      FieldName = 'day'
    end
    object MasterCdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object MasterCdsstartingtime: TSQLTimeStampField
      FieldName = 'startingtime'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdstours: TStringField
      FieldName = 'tours'
    end
    object MasterCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 250
    end
    object MasterCdstransport: TBooleanField
      FieldName = 'transport'
    end
    object MasterCdsac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCdsguide: TBooleanField
      FieldName = 'guide'
    end
    object MasterCdshotel_addressbook_id: TIntegerField
      FieldName = 'hotel_addressbook_id'
    end
    object MasterCdsflight: TStringField
      FieldName = 'flight'
      Size = 30
    end
    object MasterCdssightseeing: TBooleanField
      FieldName = 'sightseeing'
      Required = True
      OnChange = MasterCdssightseeingChange
    end
    object MasterCdsplace: TStringField
      FieldName = 'place'
      Size = 50
    end
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCdstransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object MasterCdsentrancefees: TBooleanField
      FieldName = 'entrancefees'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'masterservicestours'
    CommandType = ctTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 240
    Top = 312
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 248
    Top = 312
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 272
    Top = 312
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'masterservices_id'
    MasterFields = 'masterservices_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 256
    Top = 313
    object Detail1Cdsmasterservicestours_id: TIntegerField
      FieldName = 'masterservicestours_id'
    end
    object Detail1Cdsmasterservices_id: TIntegerField
      FieldName = 'masterservices_id'
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
    Left = 240
    Top = 368
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 256
    Top = 368
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
    Left = 272
    Top = 368
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
    Left = 288
    Top = 368
  end
  object ServiceSds: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT Services_id, Description, Addressbook_id, Cities_id, Acti' +
      've FROM Services'#13#10'WHERE Cities_id = :Cities_id'#13#10'ORDER BY Descrip' +
      'tion'
    DataSource = BackOfficeDataModule.ServiceCitiesDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 120
    Top = 52
  end
  object ServiceDsp: TDataSetProvider
    DataSet = ServiceSds
    Left = 128
    Top = 52
  end
  object ServiceCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.ServiceCitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ServiceDsp'
    Left = 144
    Top = 52
    object ServiceCdsServices_id: TIntegerField
      FieldName = 'Services_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ServiceCdsDescription: TStringField
      FieldName = 'Description'
      Size = 100
    end
    object ServiceCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object ServiceCdsCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
    object ServiceCdsActive: TBooleanField
      FieldName = 'Active'
    end
  end
  object ServiceDs: TDataSource
    DataSet = ServiceCds
    Left = 160
    Top = 52
  end
  object AgentSds: TSQLDataSet
    Active = True
    CommandText = 
      'select /*coalesce((select case when s.addressbook_id = ds.addres' +
      'sbook_id then 0 else 1 end'#13#10'          from services s where s.se' +
      'rvices_id = ds.services_id),0) */ 0 as orderNo,'#13#10'       cast((a.' +
      'organisation + coalesce(('#39', '#39' + c.city), '#39#39')) as varchar(100))  ' +
      'as organisation,'#13#10'       ds.addressbook_id, ds.services_id'#13#10'from' +
      ' costservicesdistinct ds'#13#10'       left join fn_addressbook(2,'#39'A'#39')' +
      ' a  on ds.addressbook_id = a.addressbook_id'#13#10'       left join ci' +
      'ties c on c.cities_id = a.cities_id'#13#10'where services_id = :servic' +
      'es_id'#13#10'and organisation is not null'#13#10'and services_id is not null' +
      #13#10'order by 1,2'#13#10
    DataSource = ServiceDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Services_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 480
    Top = 56
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 496
    Top = 56
  end
  object AgentCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'services_id'
    MasterFields = 'Services_id'
    MasterSource = ServiceDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 512
    Top = 56
    object AgentCdsorderNo: TIntegerField
      FieldName = 'orderNo'
    end
    object AgentCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object AgentCdsservices_id: TIntegerField
      FieldName = 'services_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object AgentCdsorganisation: TStringField
      FieldName = 'organisation'
      Size = 100
    end
  end
  object AgentDS: TDataSource
    DataSet = AgentCds
    Left = 528
    Top = 56
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
    Left = 536
    Top = 88
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 544
    Top = 88
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = BackOfficeDataModule.CitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 560
    Top = 88
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
    Left = 568
    Top = 88
  end
end
