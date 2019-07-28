inherited ItinPackagesForm: TItinPackagesForm
  Left = 259
  Top = 31
  Width = 768
  Height = 463
  Caption = 'ItinPackagesForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 752
  end
  inherited Panel2: TPanel
    Top = 384
    Width = 752
    object KeyIdDbText: TDBText
      Left = 514
      Top = 12
      Width = 65
      Height = 17
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
      Left = 212
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
      LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object cxButton1: TcxButton
      Left = 645
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
    object cxButton3: TcxButton
      Left = 19
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
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 41
    Width = 752
    Height = 343
    Align = alClient
    Color = 15451300
    TabOrder = 2
    object Label7: TcxLabel
      Left = 388
      Top = 113
      Caption = 'A/C'
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 17
      Top = 8
      Caption = 'Package'
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 17
      Top = 82
      Caption = 'Agent'
      Transparent = True
    end
    object Label13: TcxLabel
      Left = 17
      Top = 141
      Caption = 'Remarks'
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 17
      Top = 32
      Caption = 'From Time'
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 267
      Top = 34
      Caption = 'To Time'
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 17
      Top = 56
      Caption = 'From Place'
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 267
      Top = 59
      Caption = 'To Place'
      Transparent = True
    end
    object Label25: TcxLabel
      Left = 17
      Top = 111
      AutoSize = False
      Caption = 'Single Supplement'
      Transparent = True
      Height = 27
      Width = 71
    end
    object Label26: TcxLabel
      Left = 257
      Top = 113
      Caption = 'Transport'
      Transparent = True
    end
    object PkgAgentLbl: TcxLabel
      Left = 93
      Top = 82
      Caption = 'PackageAgent'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object PackagesLcmb: TcxDBLookupComboBox
      Left = 91
      Top = 7
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
    object cxDBMemo1: TcxDBMemo
      Left = 91
      Top = 142
      DataBinding.DataField = 'remarks'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 8
      Height = 62
      Width = 376
    end
    object GroupBox1: TcxGroupBox
      Left = 482
      Top = 1
      Align = alRight
      Caption = 'Tour Details'
      TabOrder = 9
      Height = 201
      Width = 269
      object Label16: TcxLabel
        Left = 10
        Top = 125
        Caption = 'Applicable to the following Tours'
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 8
        Top = 143
        DataBinding.DataField = 'tours'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 1
        Width = 201
      end
      object cxGrid1: TcxGrid
        Left = 3
        Top = 18
        Width = 263
        Height = 100
        Align = alTop
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = Detail1DS
          DataController.KeyFieldNames = 'itinerarypackagestours_id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1tourcodes_id: TcxGridDBColumn
            Caption = 'Tour Code'
            DataBinding.FieldName = 'tourcodes_id'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'TourCodes_id'
            Properties.ListColumns = <
              item
                FieldName = 'Tourcode'
              end>
            Properties.ListSource = TourCodeDs
            Width = 142
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 417
      Top = 112
      DataBinding.DataField = 'ac'
      DataBinding.DataSource = MasterDS
      TabOrder = 7
      Transparent = True
      Width = 21
    end
    object GroupBox2: TcxGroupBox
      Left = 1
      Top = 202
      Align = alBottom
      TabOrder = 10
      Height = 94
      Width = 750
      object Label14: TcxLabel
        Left = 496
        Top = 21
        Caption = 'Voucher No.'
        Transparent = True
      end
      object Label15: TcxLabel
        Left = 496
        Top = 54
        Caption = 'Generate Voucher'
        Transparent = True
      end
      object Label18: TcxLabel
        Left = 8
        Top = 21
        AutoSize = False
        Caption = 'Estimated No. of Pax'
        Transparent = True
        Height = 28
        Width = 88
      end
      object Label17: TcxLabel
        Left = 8
        Top = 54
        Caption = 'Automobiles'
        Transparent = True
      end
      object Label19: TcxLabel
        Left = 280
        Top = 21
        Caption = 'Actual No. Pax'
        Transparent = True
      end
      object Label20: TcxLabel
        Left = 280
        Top = 54
        Caption = 'No. of Vehicles'
        Transparent = True
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 606
        Top = 20
        DataBinding.DataField = 'VoucherNoLookUp'
        DataBinding.DataSource = MasterDS
        Enabled = False
        Style.Color = 16247513
        TabOrder = 4
        Width = 51
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 604
        Top = 54
        DataBinding.DataField = 'generatevoucher'
        DataBinding.DataSource = MasterDS
        TabOrder = 5
        Transparent = True
        Width = 23
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 373
        Top = 54
        DataBinding.DataField = 'noofvehicles'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 3
        Width = 103
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 373
        Top = 20
        DataBinding.DataField = 'noofpax'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 1
        Width = 103
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 89
        Top = 21
        DataBinding.DataField = 'estimatednoofpax'
        DataBinding.DataSource = MasterDS
        Enabled = False
        Style.Color = 16247513
        TabOrder = 0
        Width = 103
      end
      object AutomobileLcmb: TcxDBLookupComboBox
        Left = 89
        Top = 54
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
        TabOrder = 2
        Width = 178
      end
    end
    object GroupBox3: TcxGroupBox
      Left = 1
      Top = 296
      Align = alBottom
      TabOrder = 11
      Height = 46
      Width = 750
      object Label21: TcxLabel
        Left = 8
        Top = 23
        Caption = 'Booked'
        Transparent = True
      end
      object Label22: TcxLabel
        Left = 187
        Top = 23
        Caption = 'Reminder'
        Transparent = True
      end
      object Label23: TcxLabel
        Left = 375
        Top = 23
        Caption = 'Confirmed'
        Transparent = True
      end
      object Label24: TcxLabel
        Left = 564
        Top = 23
        Caption = 'Cancelled'
        Transparent = True
      end
      object cxDBDateEdit4: TcxDBDateEdit
        Left = 59
        Top = 21
        DataBinding.DataField = 'booked'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 0
        Width = 121
      end
      object cxDBDateEdit1: TcxDBDateEdit
        Left = 246
        Top = 22
        DataBinding.DataField = 'reminder'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 1
        Width = 121
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 437
        Top = 22
        DataBinding.DataField = 'confirmed'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 2
        Width = 121
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 630
        Top = 21
        DataBinding.DataField = 'cancelled'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 3
        Width = 121
      end
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 91
      Top = 31
      DataBinding.DataField = 'from_time'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Style.Color = 16247513
      TabOrder = 1
      Width = 134
    end
    object cxDBTimeEdit2: TcxDBTimeEdit
      Left = 330
      Top = 31
      DataBinding.DataField = 'to_time'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Style.Color = 16247513
      TabOrder = 2
      Width = 134
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 313
      Top = 114
      DataBinding.DataField = 'transport'
      DataBinding.DataSource = MasterDS
      TabOrder = 6
      Transparent = True
      Width = 23
    end
    object cxDBTextEdit13: TcxDBTextEdit
      Left = 91
      Top = 55
      DataBinding.DataField = 'from_place'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 3
      Width = 134
    end
    object cxDBTextEdit14: TcxDBTextEdit
      Left = 330
      Top = 57
      DataBinding.DataField = 'to_place'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 4
      Width = 134
    end
    object cxDBTextEdit15: TcxDBTextEdit
      Left = 91
      Top = 111
      DataBinding.DataField = 'singlesupplement'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 5
      Width = 134
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'itinerarypackages'
    CommandType = ctTable
    Left = 40
    Top = 8
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 136
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'itineraries_id'
    MasterFields = 'itineraries_id'
    MasterSource = ItineraryForm.Itinerariesds
    PacketRecords = 0
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 104
    Top = 8
    object MasterCdsitinerarypackages_id: TIntegerField
      FieldName = 'itinerarypackages_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsitineraries_id: TIntegerField
      FieldName = 'itineraries_id'
    end
    object MasterCdspackages_id: TIntegerField
      FieldName = 'packages_id'
    end
    object MasterCdsfrom_date: TSQLTimeStampField
      FieldName = 'from_date'
    end
    object MasterCdsfrom_time: TSQLTimeStampField
      FieldName = 'from_time'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdshotel_addressbook_id: TIntegerField
      FieldName = 'hotel_addressbook_id'
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
    object MasterCdsestimatednoofpax: TIntegerField
      FieldName = 'estimatednoofpax'
    end
    object MasterCdsnoofpax: TIntegerField
      FieldName = 'noofpax'
    end
    object MasterCdssinglesupplement: TIntegerField
      FieldName = 'singlesupplement'
    end
    object MasterCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object MasterCdstransport: TBooleanField
      FieldName = 'transport'
    end
    object MasterCdsac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object MasterCdsnoofvehicles: TIntegerField
      FieldName = 'noofvehicles'
    end
    object MasterCdsbooked: TSQLTimeStampField
      FieldName = 'booked'
    end
    object MasterCdsreminder: TSQLTimeStampField
      FieldName = 'reminder'
    end
    object MasterCdsconfirmed: TSQLTimeStampField
      FieldName = 'confirmed'
    end
    object MasterCdscancelled: TSQLTimeStampField
      FieldName = 'cancelled'
    end
    object MasterCdsexpectedamount: TFMTBCDField
      FieldName = 'expectedamount'
      Precision = 18
      Size = 0
    end
    object MasterCdsmasterpackages_id: TIntegerField
      FieldName = 'masterpackages_id'
    end
    object MasterCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCdssinglesupplement_resident: TIntegerField
      FieldName = 'singlesupplement_resident'
    end
    object MasterCdsnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object MasterCdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object MasterCdsVoucherNoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'VoucherNoLookUp'
      LookupDataSet = VoucherNoCds
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      ReadOnly = True
      Size = 80
      Lookup = True
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'itinerarypackagestours'
    CommandType = ctTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 8
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 240
    Top = 8
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 304
    Top = 8
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'itinerarypackages_id'
    MasterFields = 'itinerarypackages_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 272
    Top = 8
    object Detail1Cdsitinerarypackagestours_id: TIntegerField
      FieldName = 'itinerarypackagestours_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdsitinerarypackages_id: TIntegerField
      FieldName = 'itinerarypackages_id'
    end
    object Detail1Cdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
  end
  object TourCodeSds: TSQLDataSet
    CommandText = 
      'SELECT b.TourCodes_id, b.Tourcode , I.Itineraries_id'#13#10'FROM TourC' +
      'alendar A, TourCodes B, Itineraries I'#13#10'WHERE I.Itineraries_id = ' +
      ':Itineraries_id'#13#10'AND A.MASTERS_ID = I.Masters_id'#13#10'AND A.TOURCODE' +
      'S_ID = B.TOURCODES_ID'#13#10'ORDER BY B.TOURCODE'#13#10
    DataSource = ItineraryForm.ItinPackagesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'itineraries_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 648
    Top = 104
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 664
    Top = 104
  end
  object TourCodeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Itineraries_id'
    MasterFields = 'itineraries_id'
    MasterSource = ItineraryForm.ItinPackagesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 680
    Top = 104
    object TourCodeCdsTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCodeCdsTourcode: TStringField
      FieldName = 'Tourcode'
      Size = 10
    end
    object TourCodeCdsItineraries_id: TIntegerField
      FieldName = 'Itineraries_id'
    end
  end
  object TourCodeDs: TDataSource
    DataSet = TourCodeCds
    Left = 696
    Top = 104
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
    Left = 200
    Top = 301
  end
  object AutomobileDsp: TDataSetProvider
    DataSet = AutomobileSds
    Left = 216
    Top = 301
  end
  object AutomobileCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AddressBook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = PackagesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AutomobileDsp'
    Left = 232
    Top = 301
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
    Left = 248
    Top = 301
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
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
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
  object VoucherNoSds: TSQLDataSet
    CommandText = 'Select vouchers_id, yearref, voucherno From vouchers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 656
    Top = 285
  end
  object VoucherNoDsp: TDataSetProvider
    DataSet = VoucherNoSds
    Left = 672
    Top = 285
  end
  object VoucherNoCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherNoDsp'
    Left = 688
    Top = 285
    object VoucherNoCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object VoucherNoCdsyearref: TIntegerField
      FieldName = 'yearref'
    end
    object VoucherNoCdsvoucherno: TIntegerField
      FieldName = 'voucherno'
    end
  end
  object VoucherNoDs: TDataSource
    DataSet = VoucherNoCds
    Left = 704
    Top = 285
  end
end
