inherited VouPackagesForm: TVouPackagesForm
  Left = 381
  Top = 60
  Width = 505
  Height = 345
  BorderIcons = [biSystemMenu]
  Caption = 'VouPackagesForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 497
    Height = 36
    BorderStyle = bsNone
    TabOrder = 2
  end
  inherited Panel2: TPanel
    Top = 262
    Width = 497
    BorderStyle = bsNone
    inherited KeyIdDBText: TDBText
      Left = 20
      Top = 2
      Transparent = True
    end
    object CancelBtn: TcxButton
      Left = 414
      Top = 14
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
    object OkBtn: TcxButton
      Left = 341
      Top = 14
      Width = 66
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
    object cxButton3: TcxButton
      Left = 9
      Top = 15
      Width = 110
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
      Left = 125
      Top = 15
      Width = 116
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
      Left = 247
      Top = 15
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
    Top = 36
    Width = 497
    Height = 226
    Align = alClient
    Color = 15451300
    TabOrder = 0
    object Label7: TLabel
      Left = 267
      Top = 176
      Width = 23
      Height = 13
      Caption = 'A/C'
      Transparent = True
    end
    object Label9: TLabel
      Left = 17
      Top = 10
      Width = 51
      Height = 13
      Caption = 'Package'
      Transparent = True
    end
    object Label10: TLabel
      Left = 17
      Top = 119
      Width = 34
      Height = 13
      Caption = 'Agent'
      Transparent = True
    end
    object Label11: TLabel
      Left = 17
      Top = 68
      Width = 59
      Height = 13
      Caption = 'From Time'
      Transparent = True
    end
    object Label12: TLabel
      Left = 267
      Top = 67
      Width = 47
      Height = 13
      Caption = 'To Time'
      Transparent = True
    end
    object Label1: TLabel
      Left = 17
      Top = 96
      Width = 64
      Height = 13
      Caption = 'From Place'
      Transparent = True
    end
    object Label4: TLabel
      Left = 267
      Top = 96
      Width = 52
      Height = 13
      Caption = 'To Place'
      Transparent = True
    end
    object Label25: TLabel
      Left = 17
      Top = 146
      Width = 71
      Height = 27
      AutoSize = False
      Caption = 'Single Supplement'
      Transparent = True
      WordWrap = True
    end
    object Label26: TLabel
      Left = 17
      Top = 177
      Width = 55
      Height = 13
      Caption = 'Transport'
      Transparent = True
    end
    object PkgAgentLbl: TLabel
      Left = 107
      Top = 118
      Width = 84
      Height = 13
      Caption = 'PackageAgent'
      Color = 15451300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label19: TLabel
      Left = 267
      Top = 146
      Width = 64
      Height = 27
      AutoSize = False
      Caption = 'Actual No. Pax'
      Transparent = True
      WordWrap = True
    end
    object Label17: TLabel
      Left = 267
      Top = 206
      Width = 69
      Height = 13
      Caption = 'Automobiles'
      Transparent = True
    end
    object Label20: TLabel
      Left = 17
      Top = 206
      Width = 88
      Height = 13
      Caption = 'No. of Vehicles'
      Transparent = True
    end
    object Label2: TLabel
      Left = 17
      Top = 38
      Width = 59
      Height = 13
      Caption = 'From Date'
      Transparent = True
    end
    object PackagesLcmb: TcxDBLookupComboBox
      Left = 107
      Top = 6
      DataBinding.DataField = 'packages_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'packages_id'
      Properties.ListColumns = <
        item
          FieldName = 'package'
        end>
      Properties.ListSource = PackagesDs
      Properties.OnEditValueChanged = PackagesLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 0
      Width = 373
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 338
      Top = 173
      DataBinding.DataField = 'ac'
      DataBinding.DataSource = MasterDS
      TabOrder = 9
      Width = 21
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 107
      Top = 62
      DataBinding.DataField = 'from_time'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Style.Color = 16247513
      TabOrder = 2
      Width = 134
    end
    object cxDBTimeEdit2: TcxDBTimeEdit
      Left = 338
      Top = 63
      DataBinding.DataField = 'to_time'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Style.Color = 16247513
      TabOrder = 3
      Width = 134
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 107
      Top = 174
      DataBinding.DataField = 'transport'
      DataBinding.DataSource = MasterDS
      TabOrder = 8
      Width = 23
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 107
      Top = 90
      DataBinding.DataField = 'from_place'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 4
      Width = 134
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 338
      Top = 92
      DataBinding.DataField = 'to_place'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 5
      Width = 134
    end
    object cxDBTextEdit15: TcxDBTextEdit
      Left = 107
      Top = 146
      DataBinding.DataField = 'singlesupplement'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 6
      Width = 134
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 338
      Top = 141
      DataBinding.DataField = 'noofpax'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 7
      Width = 103
    end
    object AutomobileLcmb: TcxDBLookupComboBox
      Left = 338
      Top = 203
      DataBinding.DataField = 'vehicles_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'vehicles_id'
      Properties.ListColumns = <
        item
          FieldName = 'vehicle'
        end>
      Properties.ListSource = AutomobileDs
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 11
      Width = 151
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 107
      Top = 202
      DataBinding.DataField = 'noofvehicles'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 10
      Width = 103
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 107
      Top = 34
      DataBinding.DataField = 'from_date'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 1
      Width = 134
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'voucherspackages'
    Left = 40
    Top = 3
  end
  inherited MasterDsp: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 134
    Top = 3
  end
  inherited MasterDS: TDataSource
    Left = 72
    Top = 3
  end
  inherited MasterCDS: TClientDataSet
    IndexFieldNames = 'vouchers_id'
    MasterFields = 'vouchers_id'
    MasterSource = VouBillForm.VoucherDs
    PacketRecords = 0
    AfterScroll = MasterCdsAfterScroll
    Left = 102
    Top = 3
    object MasterCDSvoucherspackages_id: TIntegerField
      FieldName = 'voucherspackages_id'
    end
    object MasterCDSvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCDSpackages_id: TIntegerField
      FieldName = 'packages_id'
    end
    object MasterCDSfrom_date: TSQLTimeStampField
      FieldName = 'from_date'
    end
    object MasterCDSfrom_time: TSQLTimeStampField
      FieldName = 'from_time'
    end
    object MasterCDShotel_addressbook_id: TIntegerField
      FieldName = 'hotel_addressbook_id'
    end
    object MasterCDSto_time: TSQLTimeStampField
      FieldName = 'to_time'
    end
    object MasterCDSto_place: TStringField
      FieldName = 'to_place'
      Size = 30
    end
    object MasterCDSfrom_place: TStringField
      FieldName = 'from_place'
      Size = 30
    end
    object MasterCDStransport: TBooleanField
      FieldName = 'transport'
    end
    object MasterCDSac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCDSnoofpax: TIntegerField
      FieldName = 'noofpax'
    end
    object MasterCDSsinglesupplement: TIntegerField
      FieldName = 'singlesupplement'
    end
    object MasterCDSvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object MasterCDSnoofvehicles: TIntegerField
      FieldName = 'noofvehicles'
    end
    object MasterCDSsinglesupplement_resident: TIntegerField
      FieldName = 'singlesupplement_resident'
    end
    object MasterCDSnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object MasterCDSAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object AutomobileSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT Vehicle, v.Vehicles_id, AddressBook_id'#13#10'FROM Veh' +
      'icles v LEFT JOIN CostServicesTransport st ON v.Vehicles_id = st' +
      '.Vehicles_id'#13#10'LEFT JOIN CostServices cs ON cs.CostServices_id = ' +
      'st.CostService_id'#13#10'WHERE Addressbook_id = :Addressbook_id'#13#10'AND L' +
      'EN(Vehicle) <> 0 '#13#10'ORDER BY Vehicle'#13#10
    DataSource = PackagesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'AddressBook_id'
        ParamType = ptInput
        Value = 360
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 376
    Top = 226
  end
  object AutomobileDsp: TDataSetProvider
    DataSet = AutomobileSds
    Left = 392
    Top = 226
  end
  object AutomobileCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AddressBook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = PackagesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AutomobileDsp'
    Left = 408
    Top = 226
    object AutomobileCdsVehicle: TStringField
      FieldName = 'Vehicle'
      Size = 35
    end
    object AutomobileCdsVehicles_id: TIntegerField
      FieldName = 'Vehicles_id'
    end
    object AutomobileCdsAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
  end
  object AutomobileDs: TDataSource
    DataSet = AutomobileCds
    Left = 424
    Top = 226
  end
  object PackagesSds: TSQLDataSet
    CommandText = 
      'SELECT package, packages_id, Addressbook_id from packages'#13#10'ORDER' +
      ' by package'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 408
    Top = 40
  end
  object PackagesDsp: TDataSetProvider
    DataSet = PackagesSds
    Left = 424
    Top = 40
  end
  object PackagesCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'PackagesDsp'
    BeforeInsert = MasterCDSBeforeInsert
    BeforeEdit = MasterCDSBeforeEdit
    BeforePost = MasterCDSBeforePost
    AfterPost = MasterCDSAfterPost
    BeforeDelete = MasterCDSBeforeDelete
    AfterScroll = PackagesCdsAfterScroll
    Left = 440
    Top = 41
    object PackagesCdspackage: TStringField
      FieldName = 'package'
      Size = 50
    end
    object PackagesCdspackages_id: TIntegerField
      FieldName = 'packages_id'
    end
    object PackagesCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
  end
  object PackagesDs: TDataSource
    DataSet = PackagesCds
    Left = 458
    Top = 40
  end
end
