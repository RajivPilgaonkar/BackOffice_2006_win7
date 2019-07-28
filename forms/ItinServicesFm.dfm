inherited ItinServicesForm: TItinServicesForm
  Left = 170
  Top = 99
  Width = 750
  Height = 542
  BorderIcons = [biSystemMenu]
  Caption = 'ItinServicesForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 742
  end
  inherited Panel2: TPanel
    Top = 467
    Width = 742
    object KeyIdDbText: TDBText
      Left = 514
      Top = 12
      Width = 65
      Height = 17
      DataField = 'itineraryservices_id'
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
      Left = 220
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
      LookAndFeel.NativeStyle = True
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
    Width = 742
    Height = 426
    Align = alClient
    Color = 15451300
    TabOrder = 2
    object Label1: TcxLabel
      Left = 275
      Top = 10
      Caption = 'Service City'
    end
    object Label2: TcxLabel
      Left = 275
      Top = 54
      Caption = 'Hotel'
    end
    object Label4: TcxLabel
      Left = 17
      Top = 10
      Caption = 'Date'
    end
    object Label6: TcxLabel
      Left = 17
      Top = 32
      Caption = 'Service'
    end
    object Label10: TcxLabel
      Left = 275
      Top = 32
      Caption = 'Agent'
    end
    object Label13: TcxLabel
      Left = 17
      Top = 77
      Caption = 'Remarks'
    end
    object Label26: TcxLabel
      Left = 18
      Top = 56
      Caption = 'City'
    end
    object HotelLcmb: TcxDBLookupComboBox
      Left = 350
      Top = 52
      DataBinding.DataField = 'hotel_addressbook_id'
      DataBinding.DataSource = MasterDS
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
      Properties.DropDownWidth = 400
      Properties.KeyFieldNames = 'services_id'
      Properties.ListColumns = <
        item
          MinWidth = 350
          FieldName = 'description'
        end
        item
          MinWidth = 50
          FieldName = 'active'
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
      DataBinding.DataField = 'addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.DropDownWidth = 300
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = AgentDS
      Properties.ReadOnly = False
      Properties.OnEditValueChanged = AgentLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 4
      Width = 178
    end
    object cxDBMemo1: TcxDBMemo
      Left = 69
      Top = 78
      DataBinding.DataField = 'remarks'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 7
      Height = 120
      Width = 252
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
    object GroupBox1: TcxGroupBox
      Left = 331
      Top = 73
      Caption = 'Tour Details'
      TabOrder = 8
      Height = 125
      Width = 409
      object Label16: TcxLabel
        Left = 214
        Top = 29
        Caption = 'Applicable to the following Tours'
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 208
        Top = 55
        DataBinding.DataField = 'tours'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 0
        Width = 197
      end
      object cxGrid1: TcxGrid
        Left = 3
        Top = 18
        Width = 195
        Height = 104
        Align = alLeft
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = Detail1DS
          DataController.KeyFieldNames = 'itineraryservicestours_id'
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
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 69
      Top = 8
      DataBinding.DataField = 'transferdate'
      DataBinding.DataSource = MasterDS
      Properties.ReadOnly = False
      Style.Color = 16247513
      TabOrder = 0
      Width = 178
    end
    object GroupBox2: TcxGroupBox
      Left = 1
      Top = 311
      Align = alBottom
      TabOrder = 10
      Height = 68
      Width = 740
      object Label14: TcxLabel
        Left = 505
        Top = 25
        Caption = 'Voucher No.'
        Transparent = True
      end
      object Label15: TcxLabel
        Left = 505
        Top = 48
        Caption = 'Generate Voucher'
        Transparent = True
      end
      object Label18: TcxLabel
        Left = 7
        Top = 25
        Caption = 'Estimated No. of Pax'
        Transparent = True
      end
      object Label19: TcxLabel
        Left = 8
        Top = 46
        Caption = 'Actual No. Pax'
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 256
        Top = 25
        Caption = 'Automobiles'
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 256
        Top = 46
        Caption = 'No.of Vehicles'
        Transparent = True
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 345
        Top = 45
        DataBinding.DataField = 'noofvehicles'
        DataBinding.DataSource = MasterDS
        Properties.ReadOnly = False
        Style.Color = 16247513
        TabOrder = 3
        OnExit = cxDBTextEdit3Exit
        Width = 114
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 610
        Top = 45
        DataBinding.DataField = 'generatevoucher'
        DataBinding.DataSource = MasterDS
        TabOrder = 5
        Transparent = True
        Width = 23
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 614
        Top = 21
        DataBinding.DataField = 'VoucherNoLookUp'
        DataBinding.DataSource = MasterDS
        Enabled = False
        Style.Color = 16247513
        TabOrder = 4
        Width = 48
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 133
        Top = 21
        DataBinding.DataField = 'estimatednoofpax'
        DataBinding.DataSource = MasterDS
        Enabled = False
        Properties.ReadOnly = False
        Style.Color = 16247513
        TabOrder = 0
        Width = 103
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 133
        Top = 45
        DataBinding.DataField = 'noofpax'
        DataBinding.DataSource = MasterDS
        Properties.ReadOnly = False
        Style.Color = 16247513
        TabOrder = 1
        Width = 103
      end
      object VehicleLcmb: TcxDBLookupComboBox
        Left = 345
        Top = 21
        DataBinding.DataField = 'vehicles_id'
        DataBinding.DataSource = MasterDS
        Properties.DropDownWidth = 200
        Properties.KeyFieldNames = 'vehicles_id'
        Properties.ListColumns = <
          item
            Caption = 'Vehicle'
            MinWidth = 150
            FieldName = 'vehicle'
          end
          item
            Caption = 'Pax'
            MinWidth = 50
            FieldName = 'pax'
          end>
        Properties.ListSource = VehicleDs
        Properties.ReadOnly = False
        Style.Color = 16247513
        TabOrder = 2
        Width = 145
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 207
      Width = 740
      Height = 104
      Align = alBottom
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 9
      object SightSeeingGB: TcxGroupBox
        Left = 448
        Top = 1
        Align = alRight
        ParentColor = False
        Style.Color = 15451300
        TabOrder = 0
        Height = 102
        Width = 291
        object Label11: TcxLabel
          Left = 43
          Top = 49
          Caption = 'Guide'
          Transparent = True
        end
        object Label12: TcxLabel
          Left = 43
          Top = 23
          Caption = 'Transport'
          Transparent = True
        end
        object Label21: TcxLabel
          Left = 182
          Top = 23
          Caption = 'Entrance Fees'
          Transparent = True
        end
        object Label22: TcxLabel
          Left = 182
          Top = 49
          Caption = 'A/C Transport'
          Transparent = True
        end
        object Label23: TcxLabel
          Left = 17
          Top = 76
          Caption = 'Timings'
          Transparent = True
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 15
          Top = 23
          DataBinding.DataField = 'transport'
          DataBinding.DataSource = MasterDS
          ParentColor = False
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 0
          Width = 22
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 154
          Top = 23
          DataBinding.DataField = 'entrancefees'
          DataBinding.DataSource = MasterDS
          ParentColor = False
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 1
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
          Width = 22
        end
        object cxDBTimeEdit1: TcxDBTimeEdit
          Left = 72
          Top = 74
          DataBinding.DataField = 'time'
          DataBinding.DataSource = MasterDS
          Properties.TimeFormat = tfHourMin
          Style.Color = 16247513
          TabOrder = 4
          Width = 65
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 16
          Top = 49
          DataBinding.DataField = 'guide'
          DataBinding.DataSource = MasterDS
          ParentColor = False
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 2
          Width = 22
        end
      end
      object TransferGB: TcxGroupBox
        Left = 1
        Top = 1
        Align = alLeft
        Caption = ' Transfers '
        ParentColor = False
        Style.Color = 15451300
        TabOrder = 1
        Height = 102
        Width = 447
        object Label5: TcxLabel
          Left = 16
          Top = 24
          Caption = 'Transfer Type'
          Transparent = True
        end
        object Label7: TcxLabel
          Left = 16
          Top = 45
          Caption = 'Airline/Train'
          Transparent = True
        end
        object Label9: TcxLabel
          Left = 16
          Top = 65
          Caption = 'Place'
          Transparent = True
        end
        object Label27: TcxLabel
          Left = 281
          Top = 66
          Caption = 'Timings'
          Transparent = True
        end
        object Label28: TcxLabel
          Left = 43
          Top = 84
          Caption = 'Transport'
          Transparent = True
        end
        object Label29: TcxLabel
          Left = 142
          Top = 85
          Caption = 'A/C Transport'
          Transparent = True
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 99
          Top = 43
          DataBinding.DataField = 'flightno'
          DataBinding.DataSource = MasterDS
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 2
          Width = 302
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
          Top = 65
          DataBinding.DataField = 'place'
          DataBinding.DataSource = MasterDS
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 3
          Width = 158
        end
        object cxButton2: TcxButton
          Left = 268
          Top = 20
          Width = 133
          Height = 21
          Hint = 'Displays only when Tickets are entered'
          Caption = 'Travel Schedule'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = cxButton2Click
          NumGlyphs = 2
        end
        object cxDBTimeEdit2: TcxDBTimeEdit
          Left = 336
          Top = 64
          DataBinding.DataField = 'time'
          DataBinding.DataSource = MasterDS
          Properties.TimeFormat = tfHourMin
          Style.Color = 16247513
          TabOrder = 4
          Width = 65
        end
        object cxDBCheckBox6: TcxDBCheckBox
          Left = 15
          Top = 82
          DataBinding.DataField = 'transport'
          DataBinding.DataSource = MasterDS
          ParentColor = False
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 5
          Width = 22
        end
        object cxDBCheckBox7: TcxDBCheckBox
          Left = 114
          Top = 83
          DataBinding.DataField = 'ac'
          DataBinding.DataSource = MasterDS
          ParentColor = False
          Properties.ReadOnly = False
          Style.Color = 16247513
          TabOrder = 6
          Width = 22
        end
      end
    end
    object SightseeingRBG: TcxDBRadioGroup
      Left = 549
      Top = 6
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
      Height = 40
      Width = 177
    end
    object GroupBox5: TcxGroupBox
      Left = 1
      Top = 379
      Align = alBottom
      TabOrder = 11
      Height = 46
      Width = 740
      object Label17: TcxLabel
        Left = 7
        Top = 24
        Caption = 'Booked'
        Transparent = True
      end
      object Label20: TcxLabel
        Left = 185
        Top = 24
        Caption = 'Reminder'
        Transparent = True
      end
      object Label24: TcxLabel
        Left = 370
        Top = 24
        Caption = 'Confirmed'
        Transparent = True
      end
      object Label25: TcxLabel
        Left = 558
        Top = 22
        Caption = 'Cancelled'
        Transparent = True
      end
      object cxDBDateEdit4: TcxDBDateEdit
        Left = 57
        Top = 23
        DataBinding.DataField = 'booked'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 0
        Width = 116
      end
      object cxDBDateEdit2: TcxDBDateEdit
        Left = 245
        Top = 24
        DataBinding.DataField = 'reminder'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 1
        Width = 116
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 432
        Top = 23
        DataBinding.DataField = 'confirmed'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 2
        Width = 116
      end
      object cxDBDateEdit5: TcxDBDateEdit
        Left = 621
        Top = 22
        DataBinding.DataField = 'cancelled'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 3
        Width = 116
      end
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
    object cxDisplayActiveCkb: TcxCheckBox
      Left = 621
      Top = 49
      Caption = 'Display Active'
      State = cbsChecked
      TabOrder = 12
      OnClick = cxDisplayActiveCkbClick
      Width = 111
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'itineraryservices'
    CommandType = ctTable
    Params = <
      item
        DataType = ftInteger
        Name = 'itineraries_id'
        ParamType = ptInput
        Value = 38
      end>
    Left = 32
    Top = 8
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 128
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'itineraries_id;TransferDate;Time;Tours'
    MasterFields = 'Itineraries_id'
    MasterSource = ItineraryForm.Itinerariesds
    PacketRecords = 0
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 96
    Top = 8
    object MasterCdsitineraryservices_id: TIntegerField
      FieldName = 'itineraryservices_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsitineraries_id: TIntegerField
      FieldName = 'itineraries_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
      OnChange = MasterCdsaddressbook_idChange
    end
    object MasterCdstransferdate: TSQLTimeStampField
      FieldName = 'transferdate'
    end
    object MasterCdsservices_id: TIntegerField
      FieldName = 'services_id'
      OnChange = MasterCdsservices_idChange
    end
    object MasterCdstime: TSQLTimeStampField
      FieldName = 'time'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdstours: TStringField
      FieldName = 'tours'
      Size = 50
    end
    object MasterCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object MasterCdsestimatednoofpax: TIntegerField
      FieldName = 'estimatednoofpax'
    end
    object MasterCdsnoofpax: TIntegerField
      FieldName = 'noofpax'
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
    object MasterCdsguide: TBooleanField
      FieldName = 'guide'
    end
    object MasterCdshotel_addressbook_id: TIntegerField
      FieldName = 'hotel_addressbook_id'
    end
    object MasterCdsflightno: TStringField
      FieldName = 'flightno'
      Size = 30
    end
    object MasterCdsplace: TStringField
      FieldName = 'place'
      Size = 30
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
    object MasterCdsmasterservices_id: TIntegerField
      FieldName = 'masterservices_id'
    end
    object MasterCdssightseeing: TBooleanField
      FieldName = 'sightseeing'
      OnChange = MasterCdssightseeingChange
    end
    object MasterCdstransfertypes_id: TIntegerField
      FieldName = 'transfertypes_id'
    end
    object MasterCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object MasterCdsentrancefees: TBooleanField
      FieldName = 'entrancefees'
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
      Size = 80
      Lookup = True
    end
    object MasterCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'itineraryservicestours'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'itineraryservices_id'
        ParamType = ptInput
        Value = 673
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 224
    Top = 8
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 256
    Top = 8
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 320
    Top = 8
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'itineraryservices_id'
    MasterFields = 'itineraryservices_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 288
    Top = 8
    object Detail1Cdsitineraryservicestours_id: TIntegerField
      FieldName = 'itineraryservicestours_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdsitineraryservices_id: TIntegerField
      FieldName = 'itineraryservices_id'
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
    DataSource = ItineraryForm.ItinServiceDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Itineraries_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 544
    Top = 192
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 560
    Top = 192
  end
  object TourCodeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Itineraries_id'
    MasterFields = 'Itineraries_id'
    MasterSource = ItineraryForm.ItinServiceDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 576
    Top = 192
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
    Left = 592
    Top = 192
  end
  object ServicesSds: TSQLDataSet
    CommandText = 
      'SELECT services_id, description, addressbook_id, cities_id, acti' +
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
    Top = 66
  end
  object ServicesDsp: TDataSetProvider
    DataSet = ServicesSds
    Left = 152
    Top = 66
  end
  object ServicesCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.ServiceCitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ServicesDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    Left = 168
    Top = 66
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
    object ServicesCdsactive: TBooleanField
      FieldName = 'active'
    end
  end
  object ServicesDs: TDataSource
    DataSet = ServicesCds
    Left = 184
    Top = 66
  end
  object AgentSds: TSQLDataSet
    CommandText = 
      'SELECT f.*, cs.Services_id FROM fn_Addressbook (2,'#39'A'#39') f, CostSe' +
      'rvicesDistinct cs'#13#10'WHERE f.Addressbook_id = cs.Addressbook_id '#13#10 +
      'AND cs.Services_id = :Services_id'#13#10#13#10
    DataSource = ServicesDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'services_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 432
    Top = 67
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 448
    Top = 67
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Services_id'
    MasterFields = 'services_id'
    MasterSource = ServicesDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 464
    Top = 67
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
    object AgentCdsServices_id: TIntegerField
      FieldName = 'Services_id'
    end
  end
  object AgentDS: TDataSource
    DataSet = AgentCds
    Left = 480
    Top = 67
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
    Left = 528
    Top = 92
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 544
    Top = 92
  end
  object HotelCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.CitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    Left = 560
    Top = 92
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
    Left = 576
    Top = 92
  end
  object VehicleSds: TSQLDataSet
    CommandText = 'SELECT * FROM dbo.fn_GetAgentVehicles (0,0,1)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 392
    Top = 348
  end
  object VehicleDsp: TDataSetProvider
    DataSet = VehicleSds
    Left = 408
    Top = 348
  end
  object VehicleCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VehicleDsp'
    Left = 424
    Top = 348
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
    Left = 440
    Top = 348
  end
  object VoucherNoSds: TSQLDataSet
    CommandText = 'Select vouchers_id, yearref, voucherno From vouchers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 656
    Top = 365
  end
  object VoucherNoDsp: TDataSetProvider
    DataSet = VoucherNoSds
    Left = 672
    Top = 365
  end
  object VoucherNoCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherNoDsp'
    Left = 688
    Top = 365
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
    Top = 365
  end
end
