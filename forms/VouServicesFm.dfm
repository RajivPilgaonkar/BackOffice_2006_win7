inherited VouServicesForm: TVouServicesForm
  Left = 224
  Top = 137
  Width = 750
  Height = 350
  BorderIcons = [biSystemMenu]
  Caption = 'Services Voucher'
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 734
    Height = 31
    BorderStyle = bsNone
    TabOrder = 2
  end
  inherited Panel2: TPanel
    Top = 267
    Width = 734
    Height = 45
    BorderStyle = bsNone
    inherited KeyIdDBText: TDBText
      Left = 6
      Top = 18
      DataField = 'vouchersservices_id'
      DataSource = MasterDS
      Transparent = True
    end
    object OkBtn: TcxButton
      Left = 576
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = OkBtnClick
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
    object CancelBtn: TcxButton
      Left = 660
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancel'
      TabOrder = 1
      OnClick = CancelBtnClick
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
    object cxButton3: TcxButton
      Left = 67
      Top = 8
      Width = 118
      Height = 25
      Caption = 'View Pax List'
      TabOrder = 2
      OnClick = cxButton3Click
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
      Left = 208
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Cost Breakup'
      TabOrder = 3
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
    object cxButton4: TcxButton
      Left = 381
      Top = 8
      Width = 86
      Height = 25
      Caption = 'Old Costings'
      TabOrder = 4
      OnClick = cxButton4Click
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 31
    Width = 734
    Height = 236
    Align = alClient
    Color = 15451300
    TabOrder = 0
    object Label1: TLabel
      Left = 275
      Top = 10
      Width = 69
      Height = 13
      Caption = 'Service City'
    end
    object Label2: TLabel
      Left = 275
      Top = 54
      Width = 31
      Height = 13
      Caption = 'Hotel'
    end
    object Label4: TLabel
      Left = 17
      Top = 10
      Width = 28
      Height = 13
      Caption = 'Date'
    end
    object Label6: TLabel
      Left = 17
      Top = 32
      Width = 44
      Height = 13
      Caption = 'Service'
    end
    object Label10: TLabel
      Left = 275
      Top = 32
      Width = 34
      Height = 13
      Caption = 'Agent'
    end
    object Label26: TLabel
      Left = 18
      Top = 56
      Width = 22
      Height = 13
      Caption = 'City'
    end
    object HotelLcmb: TcxDBLookupComboBox
      Left = 350
      Top = 52
      DataBinding.DataField = 'Hotel_Addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.DropDownWidth = 250
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          MinWidth = 250
          FieldName = 'Organisation'
        end
        item
          MinWidth = 100
          FieldName = 'City'
        end>
      Properties.ListSource = HotelDs
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 6
      Width = 178
    end
    object ServiceLcmb: TcxDBLookupComboBox
      Left = 69
      Top = 31
      DataBinding.DataField = 'services_id'
      DataBinding.DataSource = MasterDS
      Properties.DropDownWidth = 680
      Properties.KeyFieldNames = 'services_id'
      Properties.ListColumns = <
        item
          Width = 600
          FieldName = 'description'
        end
        item
          Width = 80
          FieldName = 'Active'
        end>
      Properties.ListSource = ServicesDs
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = ServiceLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 3
      Width = 178
    end
    object AgentLcmb: TcxDBLookupComboBox
      Left = 350
      Top = 29
      DataBinding.DataField = 'Addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.DropDownWidth = 500
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          Width = 400
          FieldName = 'Organisation'
        end
        item
          Width = 100
          FieldName = 'City'
        end>
      Properties.ListSource = AgentDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 4
      Width = 178
    end
    object CityLcmb: TcxLookupComboBox
      Left = 350
      Top = 7
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = BackOfficeDataModule.ServiceCitiesDS
      Properties.OnEditValueChanged = CityLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 1
      Width = 178
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 69
      Top = 8
      DataBinding.DataField = 'TransferDate'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 0
      Width = 178
    end
    object SightseeingRBG: TcxDBRadioGroup
      Left = 549
      Top = 7
      DataBinding.DataField = 'sightseeing'
      DataBinding.DataSource = MasterDS
      Properties.Columns = 2
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
      Height = 36
      Width = 177
    end
    object HotelCityLCmb: TcxLookupComboBox
      Left = 69
      Top = 54
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.OnEditValueChanged = HotelCityLCmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 5
      Width = 178
    end
    object Panel4: TPanel
      Left = 1
      Top = 79
      Width = 732
      Height = 156
      Align = alBottom
      ParentBackground = False
      ParentColor = True
      TabOrder = 7
      object TransferGB: TcxGroupBox
        Left = 1
        Top = 1
        Align = alLeft
        Caption = ' Transfers '
        ParentColor = False
        Style.Color = 15451300
        TabOrder = 0
        Height = 105
        Width = 446
        object Label5: TLabel
          Left = 16
          Top = 24
          Width = 80
          Height = 13
          Caption = 'Transfer Type'
          Transparent = True
        end
        object Label7: TLabel
          Left = 16
          Top = 48
          Width = 71
          Height = 13
          Caption = 'Airline/Train'
          Transparent = True
        end
        object Label9: TLabel
          Left = 16
          Top = 71
          Width = 33
          Height = 13
          Caption = 'Place'
          Transparent = True
        end
        object Label13: TLabel
          Left = 15
          Top = 94
          Width = 72
          Height = 13
          Caption = 'Travel Mode'
          Transparent = True
          Visible = False
        end
        object Label14: TLabel
          Left = 263
          Top = 69
          Width = 44
          Height = 13
          Caption = 'Timings'
          Transparent = True
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 99
          Top = 44
          DataBinding.DataField = 'flightno'
          DataBinding.DataSource = MasterDS
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 3
          Width = 334
        end
        object cxDBLookupComboBox4: TcxDBLookupComboBox
          Left = 99
          Top = 21
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
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 0
          Width = 158
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 99
          Top = 67
          DataBinding.DataField = 'place'
          DataBinding.DataSource = MasterDS
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 4
          Width = 158
        end
        object TravelSchBtn: TcxButton
          Left = 264
          Top = 19
          Width = 133
          Height = 21
          Caption = 'Travel Schedule'
          TabOrder = 2
          OnClick = TravelSchBtnClick
          NumGlyphs = 2
        end
        object ModeLcmb: TcxDBLookupComboBox
          Left = 98
          Top = 91
          DataBinding.DataField = 'tickets_id'
          DataBinding.DataSource = MasterDS
          Properties.ClearKey = 46
          Properties.DropDownWidth = 300
          Properties.KeyFieldNames = 'tickets_id'
          Properties.ListColumns = <
            item
              FieldName = 'details'
            end>
          Properties.ListSource = BackOfficeDataModule.TicketsDS
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 1
          Visible = False
          Width = 158
        end
        object cxDBTimeEdit2: TcxDBTimeEdit
          Left = 312
          Top = 66
          DataBinding.DataField = 'timing'
          DataBinding.DataSource = MasterDS
          Properties.TimeFormat = tfHourMin
          Style.Color = 16247513
          TabOrder = 5
          Width = 121
        end
      end
      object SightSeeingGB: TcxGroupBox
        Left = 440
        Top = 1
        Align = alRight
        ParentColor = False
        Style.Color = 15451300
        TabOrder = 1
        Height = 105
        Width = 291
        object Label11: TLabel
          Left = 43
          Top = 50
          Width = 34
          Height = 13
          Caption = 'Guide'
          Transparent = True
        end
        object Label12: TLabel
          Left = 43
          Top = 25
          Width = 55
          Height = 13
          Caption = 'Transport'
          Transparent = True
        end
        object Label21: TLabel
          Left = 182
          Top = 26
          Width = 83
          Height = 13
          Caption = 'Entrance Fees'
          Transparent = True
        end
        object Label22: TLabel
          Left = 182
          Top = 51
          Width = 81
          Height = 13
          Caption = 'A/C Transport'
          Transparent = True
        end
        object Label23: TLabel
          Left = 17
          Top = 77
          Width = 44
          Height = 13
          Caption = 'Timings'
          Transparent = True
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 15
          Top = 24
          DataBinding.DataField = 'transport'
          DataBinding.DataSource = MasterDS
          ParentColor = False
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 0
          Transparent = True
          Width = 22
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 154
          Top = 24
          DataBinding.DataField = 'entrancefees'
          DataBinding.DataSource = MasterDS
          ParentColor = False
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 1
          Transparent = True
          Width = 22
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 154
          Top = 49
          DataBinding.DataField = 'ac'
          DataBinding.DataSource = MasterDS
          ParentColor = False
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 3
          Transparent = True
          Width = 22
        end
        object cxDBTimeEdit1: TcxDBTimeEdit
          Left = 72
          Top = 74
          DataBinding.DataField = 'timing'
          DataBinding.DataSource = MasterDS
          Properties.TimeFormat = tfHourMin
          Style.Color = 16247513
          TabOrder = 4
          Width = 121
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 16
          Top = 47
          DataBinding.DataField = 'guide'
          DataBinding.DataSource = MasterDS
          ParentColor = False
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 2
          Transparent = True
          Width = 22
        end
      end
      object GroupBox2: TcxGroupBox
        Left = 1
        Top = 106
        Align = alBottom
        TabOrder = 2
        Height = 49
        Width = 730
        object Label19: TLabel
          Left = 468
          Top = 26
          Width = 76
          Height = 13
          Caption = 'Resident Pax'
          Transparent = True
        end
        object Label3: TLabel
          Left = 229
          Top = 26
          Width = 69
          Height = 13
          Caption = 'Automobiles'
          Transparent = True
        end
        object Label8: TLabel
          Left = 8
          Top = 27
          Width = 84
          Height = 13
          Caption = 'No.of Vehicles'
          Transparent = True
        end
        object NoofVehiclesEdit: TcxDBTextEdit
          Left = 97
          Top = 24
          DataBinding.DataField = 'noofvehicles'
          DataBinding.DataSource = MasterDS
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 0
          OnExit = NoofVehiclesEditExit
          Width = 114
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 552
          Top = 22
          DataBinding.DataField = 'noofpax_resident'
          DataBinding.DataSource = MasterDS
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 2
          Width = 114
        end
        object VehicleLCMB: TcxDBLookupComboBox
          Left = 306
          Top = 22
          DataBinding.DataField = 'vehicles_id'
          DataBinding.DataSource = MasterDS
          Properties.KeyFieldNames = 'vehicles_id'
          Properties.ListColumns = <
            item
              Caption = 'Vehicle'
              FieldName = 'vehicle'
            end
            item
              Caption = 'Pax'
              FieldName = 'pax'
            end>
          Properties.ListSource = VehicleDs
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 1
          Width = 145
        end
      end
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'vouchersservices'
    Left = 40
    Top = 0
  end
  inherited MasterDsp: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 0
  end
  inherited MasterDS: TDataSource
    Left = 136
    Top = 0
  end
  inherited MasterCDS: TClientDataSet
    IndexFieldNames = 'vouchers_id'
    MasterFields = 'vouchers_id'
    AfterEdit = MasterCDSAfterEdit
    AfterScroll = MasterCdsAfterScroll
    Left = 104
    Top = 0
    object MasterCDSvouchersservices_id: TIntegerField
      FieldName = 'vouchersservices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCDSvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCDSguide: TBooleanField
      FieldName = 'guide'
    end
    object MasterCDSservices_id: TIntegerField
      FieldName = 'services_id'
      OnChange = MasterCDSservices_idChange
    end
    object MasterCDStransport: TBooleanField
      FieldName = 'transport'
    end
    object MasterCDSac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCDSvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object MasterCDSnoofvehicles: TIntegerField
      FieldName = 'noofvehicles'
    end
    object MasterCDSplace: TStringField
      FieldName = 'place'
      Size = 30
    end
    object MasterCDSflightno: TStringField
      FieldName = 'flightno'
      Size = 30
    end
    object MasterCDStiming: TSQLTimeStampField
      FieldName = 'timing'
      DisplayFormat = 'HH:mm'
    end
    object MasterCDSsightseeing: TBooleanField
      FieldName = 'sightseeing'
    end
    object MasterCDStransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object MasterCDStickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object MasterCDSentrancefees: TBooleanField
      FieldName = 'entrancefees'
    end
    object MasterCDSnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object MasterCDSHotel_Addressbook_id: TIntegerField
      FieldName = 'Hotel_Addressbook_id'
    end
    object MasterCDSTransferDate: TSQLTimeStampField
      FieldName = 'TransferDate'
    end
    object MasterCDSAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
      OnChange = MasterCDSAddressbook_idChange
    end
  end
  object ServicesSds: TSQLDataSet
    CommandText = 
      'SELECT services_id, description, addressbook_id, cities_id, Acti' +
      've'#13#10'FROM services'#13#10'WHERE Cities_id = :Cities_id'
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
    Left = 136
    Top = 56
  end
  object ServicesDsp: TDataSetProvider
    DataSet = ServicesSds
    Left = 152
    Top = 56
  end
  object ServicesCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.ServiceCitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ServicesDsp'
    BeforeInsert = MasterCDSBeforeInsert
    BeforeEdit = MasterCDSBeforeEdit
    BeforePost = MasterCDSBeforePost
    AfterPost = MasterCDSAfterPost
    BeforeDelete = MasterCDSBeforeDelete
    Left = 168
    Top = 56
    object ServicesCdsservices_id: TIntegerField
      FieldName = 'services_id'
    end
    object ServicesCdsdescription: TStringField
      FieldName = 'description'
      Size = 100
    end
    object ServicesCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object ServicesCdscities_id: TIntegerField
      FieldName = 'cities_id'
    end
    object ServicesCdsActive: TBooleanField
      FieldName = 'Active'
    end
  end
  object ServicesDs: TDataSource
    DataSet = ServicesCds
    Left = 184
    Top = 56
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT f.Addressbook_id, f.Organisation, f.Cities_id, f' +
      '.City FROM fn_Addressbook (2,'#39'A'#39') f'#13#10'       INNER JOIN CostServi' +
      'ces cs ON f.Addressbook_id = cs.Addressbook_id'#13#10'WHERE cs.Cities_' +
      'id = :Cities_id'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 432
    Top = 55
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 448
    Top = 55
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 464
    Top = 55
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
  end
  object AgentDS: TDataSource
    DataSet = AgentCds
    Left = 480
    Top = 55
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'Select * from fn_addressbook(2,'#39'H'#39')'#13#10'Where Cities_id = :Cities_i' +
      'd'#13#10'Order By Organisation'
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
    Left = 432
    Top = 81
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 448
    Top = 81
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.CitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 464
    Top = 81
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
  object HotelDs: TDataSource
    DataSet = HotelCds
    Left = 480
    Top = 81
  end
  object VehicleSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_GetAgentVehicles (0,0,1)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 342
    Top = 226
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 358
    Top = 226
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 374
    Top = 226
    object VehicleCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object VehicleCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 100
    end
    object VehicleCdsPax: TIntegerField
      FieldName = 'Pax'
    end
  end
  object VehicleDs: TDataSource
    DataSet = VehicleCds
    Left = 390
    Top = 226
  end
end
