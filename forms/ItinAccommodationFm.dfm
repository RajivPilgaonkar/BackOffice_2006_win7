inherited ItinAccommodationForm: TItinAccommodationForm
  Left = 466
  Top = 0
  Width = 758
  Height = 493
  Caption = 'ItinAccommodationForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 742
    Height = 36
    TabOrder = 2
  end
  inherited Panel2: TPanel
    Top = 414
    Width = 742
    object KeyIdDbText: TDBText
      Left = 537
      Top = 13
      Width = 65
      Height = 14
      DataField = 'itineraryaccommodation_id'
      DataSource = MasterDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 198
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
      LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object cxButton1: TcxButton
      Left = 635
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
    Top = 36
    Width = 742
    Height = 378
    Align = alClient
    Color = 15451300
    TabOrder = 0
    object Label1: TcxLabel
      Left = 17
      Top = 10
      Caption = 'City'
    end
    object Label2: TcxLabel
      Left = 289
      Top = 9
      Caption = 'Hotel'
    end
    object Label4: TcxLabel
      Left = 17
      Top = 34
      Caption = 'Date In'
    end
    object Label5: TcxLabel
      Left = 289
      Top = 33
      Caption = 'Date Out'
    end
    object Label6: TcxLabel
      Left = 17
      Top = 58
      Caption = 'Room Type'
    end
    object Label7: TcxLabel
      Left = 289
      Top = 57
      Caption = 'A/C'
    end
    object Label9: TcxLabel
      Left = 17
      Top = 105
      Caption = 'Meal Plan'
    end
    object Label10: TcxLabel
      Left = 289
      Top = 83
      Caption = 'Agent'
    end
    object Label13: TcxLabel
      Left = 17
      Top = 129
      Caption = 'Remarks'
    end
    object Label11: TcxLabel
      Left = 15
      Top = 83
      Caption = 'Agent City'
    end
    object HotelLcmb: TcxDBLookupComboBox
      Left = 345
      Top = 6
      DataBinding.DataField = 'addressbook_id'
      DataBinding.DataSource = MasterDS
      Properties.DropDownWidth = 150
      Properties.KeyFieldNames = 'Addressbook_id'
      Properties.ListColumns = <
        item
          FieldName = 'Organisation'
        end>
      Properties.ListSource = HotelDs
      Properties.OnEditValueChanged = HotelLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 1
      Width = 178
    end
    object RoomTypeLcmb: TcxDBLookupComboBox
      Left = 87
      Top = 57
      DataBinding.DataField = 'roomtypes_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'roomtypes_id'
      Properties.ListColumns = <
        item
          FieldName = 'roomtype'
        end>
      Properties.ListSource = RoomTypeDs
      Properties.OnEditValueChanged = RoomTypeLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 4
      Width = 178
    end
    object MealPlanLcmb: TcxDBLookupComboBox
      Left = 87
      Top = 104
      DataBinding.DataField = 'mealplans_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'mealplans_id'
      Properties.ListColumns = <
        item
          FieldName = 'mealplan'
        end
        item
          FieldName = 'plan'
        end>
      Properties.ListSource = MealPlanDs
      Style.Color = 16247513
      TabOrder = 8
      Width = 178
    end
    object AgentLcmb: TcxDBLookupComboBox
      Left = 345
      Top = 81
      DataBinding.DataField = 'agent_addressbook_id'
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
      Properties.ListSource = AgentDs
      Style.Color = 16247513
      TabOrder = 7
      Width = 178
    end
    object cxDBMemo1: TcxDBMemo
      Left = 87
      Top = 130
      DataBinding.DataField = 'remarks'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 9
      Height = 71
      Width = 437
    end
    object CityLcmb: TcxLookupComboBox
      Left = 87
      Top = 9
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
      TabOrder = 0
      Width = 178
    end
    object GroupBox1: TcxGroupBox
      Left = 534
      Top = 1
      Caption = 'Tour Details'
      TabOrder = 10
      Height = 199
      Width = 215
      object Label16: TcxLabel
        Left = 10
        Top = 149
        Caption = 'Applicable to the following Tours'
        Transparent = True
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 8
        Top = 167
        DataBinding.DataField = 'tours'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 1
        Width = 201
      end
      object cxGrid1: TcxGrid
        Left = 3
        Top = 18
        Width = 209
        Height = 120
        Align = alTop
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = Detail1DS
          DataController.KeyFieldNames = 'itineraryaccommodationtours_id'
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
      Left = 87
      Top = 33
      DataBinding.DataField = 'datein'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 2
      Width = 178
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 345
      Top = 30
      DataBinding.DataField = 'dateout'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 3
      Width = 178
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 345
      Top = 55
      DataBinding.DataField = 'ac'
      DataBinding.DataSource = MasterDS
      TabOrder = 5
      Width = 25
    end
    object GroupBox2: TcxGroupBox
      Left = 1
      Top = 202
      TabOrder = 11
      Transparent = True
      Height = 131
      Width = 748
      object Label14: TcxLabel
        Left = 478
        Top = 21
        Caption = 'Voucher No.'
        Transparent = True
      end
      object Label15: TcxLabel
        Left = 478
        Top = 42
        Caption = 'Generate Voucher'
        Transparent = True
      end
      object Label18: TcxLabel
        Left = 8
        Top = 21
        Caption = 'Estimated No. of Pax'
        Transparent = True
      end
      object Label17: TcxLabel
        Left = 8
        Top = 45
        Caption = 'Estimated Singles'
        Transparent = True
      end
      object Label19: TcxLabel
        Left = 256
        Top = 19
        Caption = 'Actual No. Pax'
        Transparent = True
      end
      object Label20: TcxLabel
        Left = 256
        Top = 43
        Caption = 'Actual Singles'
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 8
        Top = 68
        Caption = 'Estimated Doubles'
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 256
        Top = 67
        Caption = 'Actual Doubles'
        Transparent = True
      end
      object Label12: TcxLabel
        Left = 256
        Top = 90
        Caption = 'Actual Triples'
        Transparent = True
      end
      object Label25: TcxLabel
        Left = 256
        Top = 112
        Caption = 'Actual Twins'
        Transparent = True
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 588
        Top = 19
        DataBinding.DataField = 'VoucherNoLookup'
        DataBinding.DataSource = MasterDS
        Enabled = False
        ParentFont = False
        Properties.ReadOnly = False
        Style.Color = 14740719
        TabOrder = 6
        Width = 53
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 586
        Top = 41
        DataBinding.DataField = 'generatevoucher'
        DataBinding.DataSource = MasterDS
        TabOrder = 7
        Transparent = True
        Width = 23
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 349
        Top = 42
        DataBinding.DataField = 'noofsingles'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 3
        Width = 103
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 136
        Top = 42
        DataBinding.DataField = 'estimatednoofsingles'
        DataBinding.DataSource = MasterDS
        Enabled = False
        Style.Color = 16247513
        TabOrder = 2
        Width = 103
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 349
        Top = 18
        DataBinding.DataField = 'noofpax'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 1
        Width = 103
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 136
        Top = 19
        DataBinding.DataField = 'estimatednoofpax'
        DataBinding.DataSource = MasterDS
        Enabled = False
        Style.Color = 16247513
        TabOrder = 0
        Width = 103
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 136
        Top = 65
        DataBinding.DataField = 'estimatednoofdoubles'
        DataBinding.DataSource = MasterDS
        Enabled = False
        Style.Color = 16247513
        TabOrder = 4
        Width = 103
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 349
        Top = 65
        DataBinding.DataField = 'noofdoubles'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 5
        Width = 103
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 349
        Top = 88
        DataBinding.DataField = 'nooftriples'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 8
        Width = 103
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Left = 349
        Top = 110
        DataBinding.DataField = 'nooftwins'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 9
        Width = 103
      end
      object cxLabel1: TcxLabel
        Left = 7
        Top = 90
        Caption = 'Estimated Triples'
        Transparent = True
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 136
        Top = 87
        DataBinding.DataField = 'estimatednooftriples'
        DataBinding.DataSource = MasterDS
        Enabled = False
        Style.Color = 16247513
        TabOrder = 21
        Width = 103
      end
      object cxLabel2: TcxLabel
        Left = 6
        Top = 112
        Caption = 'Estimated Twins'
        Transparent = True
      end
      object cxDBTextEdit12: TcxDBTextEdit
        Left = 136
        Top = 109
        DataBinding.DataField = 'estimatednooftwins'
        DataBinding.DataSource = MasterDS
        Enabled = False
        Style.Color = 16247513
        TabOrder = 23
        Width = 103
      end
    end
    object GroupBox3: TcxGroupBox
      Left = 1
      Top = 331
      Align = alBottom
      TabOrder = 12
      Height = 46
      Width = 740
      object Label21: TcxLabel
        Left = 8
        Top = 23
        Caption = 'Booked'
        Transparent = True
      end
      object Label22: TcxLabel
        Left = 186
        Top = 23
        Caption = 'Reminder'
        Transparent = True
      end
      object Label23: TcxLabel
        Left = 372
        Top = 23
        Caption = 'Confirmed'
        Transparent = True
      end
      object Label24: TcxLabel
        Left = 561
        Top = 23
        Caption = 'Cancelled'
        Transparent = True
      end
      object cxDBDateEdit4: TcxDBDateEdit
        Left = 57
        Top = 22
        DataBinding.DataField = 'booked'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 0
        Width = 121
      end
      object cxDBDateEdit3: TcxDBDateEdit
        Left = 244
        Top = 22
        DataBinding.DataField = 'reminder'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 1
        Width = 121
      end
      object cxDBDateEdit5: TcxDBDateEdit
        Left = 434
        Top = 21
        DataBinding.DataField = 'confirmed'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 2
        Width = 121
      end
      object cxDBDateEdit6: TcxDBDateEdit
        Left = 622
        Top = 21
        DataBinding.DataField = 'cancelled'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 3
        Width = 121
      end
    end
    object AgentCityLcmb: TcxLookupComboBox
      Left = 87
      Top = 81
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end>
      Properties.ListSource = BackOfficeDataModule.AgentCityDs
      Properties.OnEditValueChanged = AgentCityLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 6
      Width = 178
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'itineraryaccommodation'
    CommandType = ctTable
    Params = <
      item
        DataType = ftInteger
        Name = 'itineraries_id'
        ParamType = ptInput
        Value = 38
      end>
    Left = 48
    Top = 8
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 144
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'itineraries_id;datein;dateout;tours'
    MasterFields = 'Itineraries_id'
    MasterSource = ItineraryForm.Itinerariesds
    PacketRecords = 0
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 112
    Top = 8
    object MasterCdsitineraryaccommodation_id: TIntegerField
      FieldName = 'itineraryaccommodation_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsitineraries_id: TIntegerField
      FieldName = 'itineraries_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsdatein: TSQLTimeStampField
      FieldName = 'datein'
    end
    object MasterCdsdateout: TSQLTimeStampField
      FieldName = 'dateout'
    end
    object MasterCdstours: TStringField
      FieldName = 'tours'
      Size = 50
    end
    object MasterCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object MasterCdsestimatednoofsingles: TIntegerField
      FieldName = 'estimatednoofsingles'
    end
    object MasterCdsestimatednoofdoubles: TIntegerField
      FieldName = 'estimatednoofdoubles'
    end
    object MasterCdsnoofsingles: TIntegerField
      FieldName = 'noofsingles'
    end
    object MasterCdsnoofdoubles: TIntegerField
      FieldName = 'noofdoubles'
    end
    object MasterCdsac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCdsextrabeds: TIntegerField
      FieldName = 'extrabeds'
    end
    object MasterCdsnooftriples: TIntegerField
      FieldName = 'nooftriples'
    end
    object MasterCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object MasterCdsmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object MasterCdsgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object MasterCdsestimatednoofpax: TIntegerField
      FieldName = 'estimatednoofpax'
    end
    object MasterCdsnoofpax: TIntegerField
      FieldName = 'noofpax'
    end
    object MasterCdsagent_addressbook_id: TIntegerField
      FieldName = 'agent_addressbook_id'
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
    object MasterCdsexpectedcost: TBCDField
      FieldName = 'expectedcost'
      Precision = 10
      Size = 2
    end
    object MasterCdsmasteraccommodation_id: TIntegerField
      FieldName = 'masteraccommodation_id'
    end
    object MasterCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object MasterCdseta: TSQLTimeStampField
      FieldName = 'eta'
    end
    object MasterCdsVoucherNoLookup: TIntegerField
      FieldKind = fkLookup
      FieldName = 'VoucherNoLookup'
      LookupDataSet = VoucherNoCds
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Lookup = True
    end
    object MasterCdsnooftwins: TIntegerField
      FieldName = 'nooftwins'
    end
    object MasterCdsestimatednooftriples: TIntegerField
      FieldName = 'estimatednooftriples'
    end
    object MasterCdsestimatednooftwins: TIntegerField
      FieldName = 'estimatednooftwins'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'itineraryaccommodationtours'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'itineraryaccommodation_id'
        ParamType = ptInput
        Value = 437
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
    IndexFieldNames = 'itineraryaccommodation_id'
    MasterFields = 'itineraryaccommodation_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 288
    Top = 8
    object Detail1Cdsitineraryaccommodationtours_id: TIntegerField
      FieldName = 'itineraryaccommodationtours_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdsitineraryaccommodation_id: TIntegerField
      FieldName = 'itineraryaccommodation_id'
    end
    object Detail1Cdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
  end
  object HotelSds: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT * FROM fn_Addressbook (2,'#39'H'#39')'#13#10'WHERE Cities_id = :Cities_' +
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
    Left = 432
    Top = 40
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 448
    Top = 40
  end
  object HotelCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'cities_id'
    MasterSource = BackOfficeDataModule.CitiesDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    Left = 456
    Top = 40
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
    Left = 472
    Top = 40
  end
  object AgentSds: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT * FROM fn_Addressbook (2,'#39'A'#39')'#13#10'WHERE Cities_id = :cities_' +
      'id'
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
    Left = 456
    Top = 128
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 472
    Top = 128
  end
  object AgentCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = BackOfficeDataModule.AgentCityDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    Left = 480
    Top = 128
    object IntegerField5: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object StringField7: TStringField
      FieldName = 'Organisation'
      Size = 254
    end
    object StringField8: TStringField
      FieldName = 'City'
      Size = 100
    end
    object IntegerField6: TIntegerField
      FieldName = 'Cities_id'
    end
    object StringField9: TStringField
      FieldName = 'Contact'
      Size = 254
    end
  end
  object AgentDs: TDataSource
    DataSet = AgentCds
    Left = 496
    Top = 128
  end
  object TourCodeSds: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT b.TourCodes_id, b.Tourcode , I.Itineraries_id'#13#10'FROM TourC' +
      'alendar A, TourCodes B, Itineraries I'#13#10'WHERE I.Itineraries_id = ' +
      ':Itineraries_id'#13#10'AND A.MASTERS_ID = I.Masters_id'#13#10'AND A.TOURCODE' +
      'S_ID = B.TOURCODES_ID'#13#10'ORDER BY B.TOURCODE'#13#10
    DataSource = ItineraryForm.ItinAccommodationDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Itineraries_id'
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
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Itineraries_id'
    MasterFields = 'Itineraries_id'
    MasterSource = ItineraryForm.ItinAccommodationDs
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
  object RoomTypeSds: TSQLDataSet
    Active = True
    CommandText = 
      'SELECT RoomTypes_id, RoomType, Addressbook_id, AC  FROM dbo.fn_G' +
      'etHotelRoomTypes(:addressbook_id)'
    DataSource = HotelDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 88
  end
  object RoomTypeDsp: TDataSetProvider
    DataSet = RoomTypeSds
    Left = 224
    Top = 88
  end
  object RoomTypeCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = HotelDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'RoomTypeDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    Left = 232
    Top = 88
    object RoomTypeCdsRoomTypes_id: TIntegerField
      FieldName = 'RoomTypes_id'
    end
    object RoomTypeCdsRoomType: TStringField
      FieldName = 'RoomType'
      Size = 100
    end
    object RoomTypeCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object RoomTypeCdsAC: TBooleanField
      FieldName = 'AC'
    end
  end
  object RoomTypeDs: TDataSource
    DataSet = RoomTypeCds
    Left = 248
    Top = 88
  end
  object MealPlanSds: TSQLDataSet
    Active = True
    CommandText = 'SELECT * FROM fn_GetHotelMealPlans(:Addressbook_id,2)'
    DataSource = HotelDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Addressbook_id'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 160
  end
  object MealPlanDsp: TDataSetProvider
    DataSet = MealPlanSds
    Left = 224
    Top = 160
  end
  object MealPlanCds: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = HotelDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'MealPlanDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    Left = 232
    Top = 160
    object MealPlanCdsAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object MealPlanCdsMealPlans_id: TIntegerField
      FieldName = 'MealPlans_id'
    end
    object MealPlanCdsPlan: TStringField
      FieldName = 'Plan'
      Size = 10
    end
    object MealPlanCdsMealPlan: TStringField
      FieldName = 'MealPlan'
      Size = 100
    end
  end
  object MealPlanDs: TDataSource
    DataSet = MealPlanCds
    Left = 248
    Top = 160
  end
  object VoucherNoSds: TSQLDataSet
    CommandText = 'Select vouchers_id, yearref, voucherno From vouchers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 640
    Top = 253
  end
  object VoucherNoDsp: TDataSetProvider
    DataSet = VoucherNoSds
    Left = 664
    Top = 253
  end
  object VoucherNoCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherNoDsp'
    Left = 680
    Top = 253
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
    Left = 696
    Top = 253
  end
end
