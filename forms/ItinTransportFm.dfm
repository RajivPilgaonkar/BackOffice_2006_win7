inherited ItinTransportForm: TItinTransportForm
  Left = 262
  Top = 48
  Height = 473
  BorderIcons = [biSystemMenu]
  Caption = 'ItinTransportForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 398
    TabOrder = 2
    object KeyIdDbText: TDBText
      Left = 658
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
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 292
      Top = 9
      Width = 312
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
      Left = 808
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
    Width = 930
    Height = 357
    Align = alClient
    Color = 15451300
    TabOrder = 1
    object Label1: TcxLabel
      Left = 17
      Top = 60
      Caption = 'City'
    end
    object Label2: TcxLabel
      Left = 633
      Top = 86
      Caption = 'Pax'
    end
    object Label4: TcxLabel
      Left = 17
      Top = 10
      Caption = 'From Date'
    end
    object Label5: TcxLabel
      Left = 17
      Top = 34
      Caption = 'To Date'
    end
    object Label6: TcxLabel
      Left = 17
      Top = 84
      AutoSize = False
      Caption = 'No. of Vehicles'
      Height = 27
      Width = 54
    end
    object Label7: TcxLabel
      Left = 633
      Top = 62
      Caption = 'A/C'
    end
    object Label9: TcxLabel
      Left = 257
      Top = 85
      AutoSize = False
      Caption = 'Vehicle type'
      Height = 30
      Width = 57
    end
    object Label10: TcxLabel
      Left = 258
      Top = 58
      Caption = 'Agent'
    end
    object Label13: TcxLabel
      Left = 17
      Top = 169
      Caption = 'Remarks'
    end
    object Label11: TcxLabel
      Left = 258
      Top = 11
      Caption = 'From Time'
    end
    object Label12: TcxLabel
      Left = 258
      Top = 34
      Caption = 'To Time'
    end
    object Label25: TcxLabel
      Left = 446
      Top = 10
      Caption = 'From City'
    end
    object Label26: TcxLabel
      Left = 446
      Top = 34
      Caption = 'To City'
    end
    object Label27: TcxLabel
      Left = 705
      Top = 9
      Caption = 'From Place'
    end
    object Label28: TcxLabel
      Left = 705
      Top = 34
      Caption = 'To Place'
    end
    object Label29: TcxLabel
      Left = 17
      Top = 117
      AutoSize = False
      Caption = 'Kms Travelled by Pax'
      Height = 38
      Width = 63
    end
    object Label30: TcxLabel
      Left = 256
      Top = 117
      AutoSize = False
      Caption = 'Drop Off Kms'
      Height = 32
      Width = 48
    end
    object Label31: TcxLabel
      Left = 633
      Top = 109
      AutoSize = False
      Caption = 'Drop Off Days'
      Height = 32
      Width = 54
    end
    object Label17: TcxLabel
      Left = 19
      Top = 269
      Caption = 'Drive Type'
    end
    object Label18: TcxLabel
      Left = 257
      Top = 268
      Caption = 'City Group'
    end
    object AgentLcmb: TcxDBLookupComboBox
      Left = 321
      Top = 56
      DataBinding.DataField = 'addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = AgentDs
      Style.Color = 16247513
      TabOrder = 9
      Width = 224
    end
    object cxDBMemo1: TcxDBMemo
      Left = 87
      Top = 170
      DataBinding.DataField = 'remarks'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 18
      Height = 94
      Width = 309
    end
    object CityLcmb: TcxLookupComboBox
      Left = 87
      Top = 55
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end
        item
          FieldName = 'state'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Properties.OnEditValueChanged = CityLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 8
      Width = 150
    end
    object GroupBox1: TcxGroupBox
      Left = 400
      Top = 144
      Caption = 'Tour Details'
      TabOrder = 19
      Height = 119
      Width = 525
      object Label16: TcxLabel
        Left = 244
        Top = 20
        Caption = 'Applicable to the following Tours'
      end
      object Label32: TcxLabel
        Left = 244
        Top = 70
        Caption = 'Voucher No.'
        Transparent = True
      end
      object Label33: TcxLabel
        Left = 242
        Top = 89
        Caption = 'Generate Voucher'
        Transparent = True
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 242
        Top = 38
        DataBinding.DataField = 'tours'
        DataBinding.DataSource = MasterDS
        Style.Color = 14740719
        TabOrder = 1
        Width = 201
      end
      object cxGrid1: TcxGrid
        Left = 3
        Top = 18
        Width = 209
        Height = 98
        Align = alLeft
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = Detail1DS
          DataController.KeyFieldNames = 'itinerarytransporttours_id'
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
      object cxDBTextEdit20: TcxDBTextEdit
        Left = 355
        Top = 65
        DataBinding.DataField = 'VoucherNoLookUp'
        DataBinding.DataSource = MasterDS
        Style.Color = 14740719
        TabOrder = 2
        Width = 86
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 353
        Top = 87
        DataBinding.DataField = 'genvoucher'
        DataBinding.DataSource = MasterDS
        TabOrder = 3
        Transparent = True
        Width = 23
      end
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 87
      Top = 7
      DataBinding.DataField = 'fromdate'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 0
      Width = 150
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 87
      Top = 31
      DataBinding.DataField = 'todate'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 4
      Width = 150
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 688
      Top = 58
      DataBinding.DataField = 'ac'
      DataBinding.DataSource = MasterDS
      TabOrder = 10
      Width = 21
    end
    object GroupBox3: TcxGroupBox
      Left = 1
      Top = 310
      Align = alBottom
      TabOrder = 20
      Height = 46
      Width = 928
      object Label21: TcxLabel
        Left = 24
        Top = 20
        Caption = 'Booked'
        Transparent = True
      end
      object Label22: TcxLabel
        Left = 243
        Top = 20
        Caption = 'Reminder'
        Transparent = True
      end
      object Label23: TcxLabel
        Left = 473
        Top = 22
        Caption = 'Confirmed'
        Transparent = True
      end
      object Label24: TcxLabel
        Left = 707
        Top = 22
        Caption = 'Cancelled'
        Transparent = True
      end
      object cxDBDateEdit4: TcxDBDateEdit
        Left = 83
        Top = 21
        DataBinding.DataField = 'booked'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 0
        Width = 121
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 313
        Top = 21
        DataBinding.DataField = 'reminder'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 1
        Width = 121
      end
      object cxDBDateEdit5: TcxDBDateEdit
        Left = 543
        Top = 22
        DataBinding.DataField = 'confirmed'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 2
        Width = 121
      end
      object cxDBDateEdit6: TcxDBDateEdit
        Left = 777
        Top = 21
        DataBinding.DataField = 'cancelled'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 3
        Width = 121
      end
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 321
      Top = 8
      DataBinding.DataField = 'fromtime'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Style.Color = 16247513
      TabOrder = 1
      Width = 107
    end
    object cxDBTimeEdit2: TcxDBTimeEdit
      Left = 321
      Top = 32
      DataBinding.DataField = 'totime'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Style.Color = 16247513
      TabOrder = 5
      Width = 107
    end
    object FromPlaceEdit: TcxDBTextEdit
      Left = 776
      Top = 6
      DataBinding.DataField = 'fromplace'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 3
      Width = 135
    end
    object ToPlaceEdit: TcxDBTextEdit
      Left = 776
      Top = 31
      DataBinding.DataField = 'toplace'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 7
      Width = 135
    end
    object cxDBTextEdit15: TcxDBTextEdit
      Left = 87
      Top = 87
      DataBinding.DataField = 'noofvehicles'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 11
      Width = 106
    end
    object cxDBTextEdit16: TcxDBTextEdit
      Left = 693
      Top = 80
      DataBinding.DataField = 'noofpax'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 13
      Width = 106
    end
    object cxDBTextEdit17: TcxDBTextEdit
      Left = 87
      Top = 123
      DataBinding.DataField = 'kms'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 14
      Width = 106
    end
    object cxDBTextEdit18: TcxDBTextEdit
      Left = 322
      Top = 120
      DataBinding.DataField = 'dropoffkms'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 15
      Width = 144
    end
    object cxDBTextEdit19: TcxDBTextEdit
      Left = 694
      Top = 110
      DataBinding.DataField = 'dropoffdays'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 17
      Width = 106
    end
    object VehicleTypeLcmb: TcxDBLookupComboBox
      Left = 321
      Top = 85
      DataBinding.DataField = 'vehicles_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'vehicles_id'
      Properties.ListColumns = <
        item
          FieldName = 'vehicle'
        end>
      Properties.ListSource = VehicleDs
      Style.Color = 16247513
      TabOrder = 12
      Width = 224
    end
    object cxDistanceBtn: TcxButton
      Left = 480
      Top = 117
      Width = 129
      Height = 25
      Caption = 'Get Distance'
      TabOrder = 16
      OnClick = cxDistanceBtnClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 505
      Top = 7
      DataBinding.DataField = 'from_cities_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          Caption = 'City'
          FieldName = 'city'
        end
        item
          Caption = 'State'
          FieldName = 'state'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Style.Color = 16247513
      TabOrder = 2
      Width = 173
    end
    object cxDBLookupComboBox3: TcxDBLookupComboBox
      Left = 505
      Top = 31
      DataBinding.DataField = 'to_cities_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          Caption = 'City'
          FieldName = 'city'
        end
        item
          Caption = 'State'
          FieldName = 'state'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Style.Color = 16247513
      TabOrder = 6
      Width = 173
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 87
      Top = 267
      DataBinding.DataField = 'DriveTypes_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'DriveTypes_id'
      Properties.ListColumns = <
        item
          FieldName = 'DriveType'
        end>
      Properties.ListSource = BackOfficeDataModule.DriveTypeDs
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 21
      Width = 158
    end
    object cxDBLookupComboBox4: TcxDBLookupComboBox
      Left = 322
      Top = 266
      DataBinding.DataField = 'CarHireGroups_id'
      DataBinding.DataSource = MasterDS
      Properties.ClearKey = 46
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'CarHireGroups_id'
      Properties.ListColumns = <
        item
          FieldName = 'CarHireGroup'
        end>
      Properties.ListSource = BackOfficeDataModule.CarHireGroupsDs
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 22
      Width = 158
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'itinerarytransport'
    CommandType = ctTable
    Params = <
      item
        DataType = ftInteger
        Name = 'itineraries_id'
        ParamType = ptInput
        Value = 38
      end>
    Left = 16
    Top = 8
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 112
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'itineraries_id;FromDate;FromTime;Tours'
    MasterFields = 'Itineraries_id'
    MasterSource = ItineraryForm.Itinerariesds
    PacketRecords = 0
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 80
    Top = 8
    object MasterCdsitinerarytransport_id: TIntegerField
      FieldName = 'itinerarytransport_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsitineraries_id: TIntegerField
      FieldName = 'itineraries_id'
    end
    object MasterCdsfromplace: TStringField
      FieldName = 'fromplace'
      Size = 30
    end
    object MasterCdsfromdate: TSQLTimeStampField
      FieldName = 'fromdate'
    end
    object MasterCdsfromtime: TSQLTimeStampField
      FieldName = 'fromtime'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdstoplace: TStringField
      FieldName = 'toplace'
      Size = 30
    end
    object MasterCdstodate: TSQLTimeStampField
      FieldName = 'todate'
    end
    object MasterCdstotime: TSQLTimeStampField
      FieldName = 'totime'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdstours: TStringField
      FieldName = 'tours'
      Size = 50
    end
    object MasterCdsestimatednoofpax: TIntegerField
      FieldName = 'estimatednoofpax'
    end
    object MasterCdsnoofpax: TIntegerField
      FieldName = 'noofpax'
    end
    object MasterCdsac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCdsgenvoucher: TBooleanField
      FieldName = 'genvoucher'
    end
    object MasterCdsdropoffdays: TIntegerField
      FieldName = 'dropoffdays'
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
    object MasterCdsexpectedamount: TBCDField
      FieldName = 'expectedamount'
      Precision = 10
      Size = 2
    end
    object MasterCdskms: TIntegerField
      FieldName = 'kms'
    end
    object MasterCdsmastertransport_id: TIntegerField
      FieldName = 'mastertransport_id'
    end
    object MasterCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object MasterCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object MasterCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object MasterCdsdropoffkms: TIntegerField
      FieldName = 'dropoffkms'
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
    object MasterCdsDriveTypes_id: TIntegerField
      FieldName = 'DriveTypes_id'
    end
    object MasterCdsCarHireGroups_id: TIntegerField
      FieldName = 'CarHireGroups_id'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'itinerarytransporttours'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'itinerarytransport_id'
        ParamType = ptInput
        Value = 32
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 184
    Top = 8
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 216
    Top = 8
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 280
    Top = 8
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'itinerarytransport_id'
    MasterFields = 'itinerarytransport_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 248
    Top = 8
    object Detail1Cdsitinerarytransporttours_id: TIntegerField
      FieldName = 'itinerarytransporttours_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdsitinerarytransport_id: TIntegerField
      FieldName = 'itinerarytransport_id'
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
    DataSource = ItineraryForm.ItinTransportDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Itineraries_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 736
    Top = 208
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 752
    Top = 208
  end
  object TourCodeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Itineraries_id'
    MasterFields = 'Itineraries_id'
    MasterSource = ItineraryForm.ItinTransportDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 768
    Top = 208
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
    Left = 784
    Top = 208
  end
  object VehicleSds: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT v.Vehicle, ch.Vehicles_id, ch.AddressBook_id'#13#10'FR' +
      'OM CarHire ch LEFT JOIN Vehicles v ON ch.Vehicles_id = v.Vehicle' +
      's_id'#13#10'WHERE ch.Addressbook_id = :Addressbook_id'#13#10'UNION'#13#10'SELECT D' +
      'ISTINCT v.Vehicle, ch.Vehicles_id, ch.AddressBook_id'#13#10'FROM CarHi' +
      'reP2P ch LEFT JOIN Vehicles v ON ch.Vehicles_id = v.Vehicles_id'#13 +
      #10'WHERE ch.Addressbook_id = 2386'#13#10'ORDER BY Vehicle'
    DataSource = MasterDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Addressbook_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 472
    Top = 120
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 504
    Top = 120
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'AddressBook_id'
    MasterFields = 'addressbook_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'VehicleDsp'
    BeforeInsert = Detail1CdsBeforeInsert
    BeforeEdit = Detail1CdsBeforeEdit
    BeforePost = Detail1CdsBeforePost
    AfterPost = Detail1CdsAfterPost
    BeforeDelete = Detail1CdsBeforeDelete
    Left = 536
    Top = 120
    object VehicleCdsvehicles_id: TIntegerField
      FieldName = 'vehicles_id'
    end
    object VehicleCdsvehicle: TStringField
      FieldName = 'vehicle'
      Size = 35
    end
    object VehicleCdsAddressBook_id: TIntegerField
      FieldName = 'AddressBook_id'
    end
  end
  object VehicleDs: TDataSource
    DataSet = VehicleCds
    Left = 568
    Top = 120
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'SELECT * FROm fn_Addressbook (2,'#39'A'#39')'#13#10'WHERE Cities_id = :Cities_' +
      'id'
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
    Left = 472
    Top = 91
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 504
    Top = 91
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    Params = <>
    ProviderName = 'AgentDsp'
    BeforeInsert = Detail1CdsBeforeInsert
    BeforeEdit = Detail1CdsBeforeEdit
    BeforePost = Detail1CdsBeforePost
    AfterPost = Detail1CdsAfterPost
    BeforeDelete = Detail1CdsBeforeDelete
    Left = 536
    Top = 91
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
    Left = 568
    Top = 91
  end
  object VoucherNoSds: TSQLDataSet
    CommandText = 'Select vouchers_id, yearref, voucherno From vouchers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 824
    Top = 245
  end
  object VoucherNoDsp: TDataSetProvider
    DataSet = VoucherNoSds
    Left = 840
    Top = 245
  end
  object VoucherNoCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherNoDsp'
    Left = 856
    Top = 245
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
    Left = 872
    Top = 245
  end
end
