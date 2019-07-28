inherited ItinTicketsForm: TItinTicketsForm
  Left = 25
  Top = 40
  Width = 836
  Height = 464
  BorderIcons = [biSystemMenu]
  Caption = 'ItinTicketsForm'
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 820
  end
  inherited Panel2: TPanel
    Top = 385
    Width = 820
    object KeyIdDbText: TDBText
      Left = 609
      Top = 10
      Width = 65
      Height = 17
      DataField = 'itinerarytickets_id'
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
      Left = 296
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
      Left = 691
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
    Width = 820
    Height = 344
    Align = alClient
    Color = 15451300
    TabOrder = 2
    object Label1: TcxLabel
      Left = 18
      Top = 9
      Caption = 'From City'
    end
    object Label2: TcxLabel
      Left = 283
      Top = 9
      Caption = 'To City'
    end
    object Label3: TcxLabel
      Left = 573
      Top = 9
      Caption = 'Travel Date'
    end
    object Label4: TcxLabel
      Left = 18
      Top = 33
      Caption = 'Mode of Travel'
    end
    object Label5: TcxLabel
      Left = 283
      Top = 32
      Caption = 'Travel Schedule'
    end
    object Label6: TcxLabel
      Left = 18
      Top = 57
      Caption = 'Arrival'
    end
    object Label7: TcxLabel
      Left = 283
      Top = 56
      Caption = 'Departure'
    end
    object Label8: TcxLabel
      Left = 573
      Top = 56
      Caption = 'Class of Travel'
    end
    object Label9: TcxLabel
      Left = 18
      Top = 81
      Caption = 'City'
    end
    object Label10: TcxLabel
      Left = 283
      Top = 80
      Caption = 'Agent'
    end
    object Label11: TcxLabel
      Left = 18
      Top = 105
      AutoSize = False
      Caption = 'DeadLine for No. of Pax'
      Height = 30
      Width = 79
    end
    object Label12: TcxLabel
      Left = 283
      Top = 104
      AutoSize = False
      Caption = 'DeadLine for Name of Pax'
      Height = 30
      Width = 79
    end
    object Label13: TcxLabel
      Left = 18
      Top = 134
      Caption = 'Remarks'
    end
    object Label14: TcxLabel
      Left = 18
      Top = 247
      Caption = 'Voucher No.'
    end
    object Label15: TcxLabel
      Left = 18
      Top = 269
      AutoSize = False
      Caption = 'Generate Voucher'
      Height = 26
      Width = 65
    end
    object FromCityLcmb: TcxDBLookupComboBox
      Left = 107
      Top = 7
      DataBinding.DataField = 'from_cities_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end
        item
          FieldName = 'Country'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Style.Color = 16247513
      TabOrder = 0
      Width = 145
    end
    object ToCityLcmb: TcxDBLookupComboBox
      Left = 381
      Top = 6
      DataBinding.DataField = 'to_cities_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'city'
        end
        item
          FieldName = 'Country'
        end>
      Properties.ListSource = BackOfficeDataModule.CitiesDS
      Style.Color = 16247513
      TabOrder = 1
      Width = 145
    end
    object ModeLcmb: TcxDBLookupComboBox
      Left = 107
      Top = 30
      DataBinding.DataField = 'tickets_id'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'tickets_id'
      Properties.ListColumns = <
        item
          FieldName = 'details'
        end>
      Properties.ListSource = BackOfficeDataModule.TicketsDS
      Properties.OnEditValueChanged = ModeLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 3
      Width = 145
    end
    object ClassLcmb: TcxDBLookupComboBox
      Left = 664
      Top = 54
      DataBinding.DataField = 'classid'
      DataBinding.DataSource = MasterDS
      Properties.KeyFieldNames = 'Class_id'
      Properties.ListColumns = <
        item
          FieldName = 'class'
        end>
      Properties.ListSource = ClassDs
      Style.Color = 16247513
      TabOrder = 8
      Width = 145
    end
    object AgentLcmb: TcxDBLookupComboBox
      Left = 381
      Top = 78
      DataBinding.DataField = 'addressbook_id'
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
      Properties.ListSource = AgentDS
      Style.Color = 16247513
      TabOrder = 10
      Width = 145
    end
    object TravelSchEdit: TcxDBTextEdit
      Left = 381
      Top = 30
      DataBinding.DataField = 'flightno'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 4
      Width = 277
    end
    object cxButton2: TcxButton
      Left = 666
      Top = 30
      Width = 142
      Height = 21
      Caption = 'Display Schedule'
      TabOrder = 5
      OnClick = cxButton2Click
    end
    object cxDBMemo1: TcxDBMemo
      Left = 107
      Top = 134
      DataBinding.DataField = 'remarks'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 13
      Height = 106
      Width = 257
    end
    object CityLcmb: TcxLookupComboBox
      Left = 107
      Top = 78
      Properties.KeyFieldNames = 'Cities_id'
      Properties.ListColumns = <
        item
          FieldName = 'City'
        end>
      Properties.ListSource = BackOfficeDataModule.AgentCityDs
      Properties.OnEditValueChanged = CityLcmbPropertiesEditValueChanged
      Style.Color = 16247513
      TabOrder = 9
      Width = 145
    end
    object GroupBox1: TcxGroupBox
      Left = 368
      Top = 129
      Caption = 'Tour Details'
      TabOrder = 16
      Height = 169
      Width = 457
      object Label16: TcxLabel
        Left = 250
        Top = 19
        Caption = 'Applicable to the following Tours'
      end
      object Label17: TcxLabel
        Left = 240
        Top = 100
        Caption = 'Number Booked'
        Transparent = True
      end
      object Label18: TcxLabel
        Left = 240
        Top = 76
        Caption = 'Estimated No. of Pax'
        Transparent = True
      end
      object Label19: TcxLabel
        Left = 240
        Top = 124
        Caption = 'Actual No. Pax'
        Transparent = True
      end
      object Label20: TcxLabel
        Left = 240
        Top = 148
        Caption = 'Number Cancelled'
        Transparent = True
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 365
        Top = 73
        DataBinding.DataField = 'estimatednoofpax'
        DataBinding.DataSource = MasterDS
        Enabled = False
        Style.Color = 16247513
        TabOrder = 1
        Width = 85
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 365
        Top = 96
        DataBinding.DataField = 'nobooked'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 2
        Width = 85
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 365
        Top = 120
        DataBinding.DataField = 'noofpax'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 3
        Width = 85
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 365
        Top = 143
        DataBinding.DataField = 'nocancelled'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 4
        Width = 85
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 251
        Top = 37
        DataBinding.DataField = 'tours'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 5
        Width = 201
      end
      object cxGrid1: TcxGrid
        Left = 3
        Top = 18
        Width = 215
        Height = 148
        Align = alLeft
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDblClick = cxGrid1DBTableView1DblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = Detail1DS
          DataController.KeyFieldNames = 'itineraryticketstours_id'
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
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 107
      Top = 244
      DataBinding.DataField = 'VoucherNoLookUp'
      DataBinding.DataSource = MasterDS
      Enabled = False
      Style.Color = 16247513
      TabOrder = 14
      Width = 59
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 664
      Top = 6
      DataBinding.DataField = 'traveldate'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 2
      Width = 145
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 107
      Top = 54
      DataBinding.DataField = 'arrival'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Properties.UseCtrlIncrement = True
      Style.Color = 16247513
      TabOrder = 6
      Width = 145
    end
    object cxDBTimeEdit2: TcxDBTimeEdit
      Left = 381
      Top = 54
      DataBinding.DataField = 'departure'
      DataBinding.DataSource = MasterDS
      Properties.TimeFormat = tfHourMin
      Properties.UseCtrlIncrement = True
      Style.Color = 16247513
      TabOrder = 7
      Width = 145
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 106
      Top = 270
      DataBinding.DataField = 'genvoucher'
      DataBinding.DataSource = MasterDS
      TabOrder = 15
      Width = 23
    end
    object GroupBox2: TcxGroupBox
      Left = 1
      Top = 297
      Align = alBottom
      TabOrder = 17
      Height = 46
      Width = 818
      object Label21: TcxLabel
        Left = 8
        Top = 22
        Caption = 'Booked'
        Transparent = True
      end
      object Label22: TcxLabel
        Left = 201
        Top = 22
        Caption = 'Reminder'
        Transparent = True
      end
      object Label23: TcxLabel
        Left = 406
        Top = 22
        Caption = 'Confirmed'
        Transparent = True
      end
      object Label24: TcxLabel
        Left = 620
        Top = 22
        Caption = 'Cancelled'
        Transparent = True
      end
      object cxDBDateEdit4: TcxDBDateEdit
        Left = 59
        Top = 23
        DataBinding.DataField = 'booked'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 0
        Width = 121
      end
      object cxDBDateEdit5: TcxDBDateEdit
        Left = 267
        Top = 23
        DataBinding.DataField = 'reminder'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 1
        Width = 121
      end
      object cxDBDateEdit6: TcxDBDateEdit
        Left = 472
        Top = 23
        DataBinding.DataField = 'confirmed'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 2
        Width = 121
      end
      object cxDBDateEdit7: TcxDBDateEdit
        Left = 689
        Top = 21
        DataBinding.DataField = 'canceled'
        DataBinding.DataSource = MasterDS
        Style.Color = 16247513
        TabOrder = 3
        Width = 121
      end
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 107
      Top = 102
      DataBinding.DataField = 'advicenoofpax'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 11
      Width = 145
    end
    object cxDBDateEdit3: TcxDBDateEdit
      Left = 381
      Top = 102
      DataBinding.DataField = 'advicenamesofpax'
      DataBinding.DataSource = MasterDS
      Style.Color = 16247513
      TabOrder = 12
      Width = 145
    end
  end
  inherited MasterSds: TSQLDataSet
    CommandText = 'itinerarytickets'
    CommandType = ctTable
    Params = <
      item
        DataType = ftInteger
        Name = 'itineraries_id'
        ParamType = ptInput
        Value = 887
      end>
    Top = 8
  end
  inherited MasterDataSetProvider: TDataSetProvider
    UpdateMode = upWhereKeyOnly
    Left = 72
    Top = 8
  end
  inherited MasterDS: TDataSource
    Left = 104
    Top = 8
  end
  inherited MasterCds: TClientDataSet
    IndexFieldNames = 'itineraries_id;traveldate;departure;arrival;tours'
    MasterFields = 'Itineraries_id'
    MasterSource = ItineraryForm.Itinerariesds
    PacketRecords = 0
    AfterInsert = MasterCdsAfterInsert
    AfterScroll = MasterCdsAfterScroll
    Left = 88
    Top = 8
    object MasterCdsitinerarytickets_id: TIntegerField
      FieldName = 'itinerarytickets_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object MasterCdsitineraries_id: TIntegerField
      FieldName = 'itineraries_id'
    end
    object MasterCdstraveldate: TSQLTimeStampField
      FieldName = 'traveldate'
    end
    object MasterCdsflightno: TStringField
      FieldName = 'flightno'
      Size = 40
    end
    object MasterCdstours: TStringField
      FieldName = 'tours'
      Size = 50
    end
    object MasterCdsadvicenoofpax: TSQLTimeStampField
      FieldName = 'advicenoofpax'
    end
    object MasterCdsadvicenamesofpax: TSQLTimeStampField
      FieldName = 'advicenamesofpax'
    end
    object MasterCdsconfirmed: TSQLTimeStampField
      FieldName = 'confirmed'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsestimatednoofpax: TIntegerField
      FieldName = 'estimatednoofpax'
    end
    object MasterCdsnoofpax: TIntegerField
      FieldName = 'noofpax'
    end
    object MasterCdsclassid: TIntegerField
      FieldName = 'classid'
    end
    object MasterCdsgenvoucher: TBooleanField
      FieldName = 'genvoucher'
    end
    object MasterCdsremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object MasterCdsnobooked: TIntegerField
      FieldName = 'nobooked'
    end
    object MasterCdsnocancelled: TIntegerField
      FieldName = 'nocancelled'
    end
    object MasterCdsbooked: TSQLTimeStampField
      FieldName = 'booked'
    end
    object MasterCdsreminder: TSQLTimeStampField
      FieldName = 'reminder'
    end
    object MasterCdscanceled: TSQLTimeStampField
      FieldName = 'canceled'
    end
    object MasterCdsexpectedamount: TBCDField
      FieldName = 'expectedamount'
      Precision = 10
      Size = 2
    end
    object MasterCdstrainno: TStringField
      FieldName = 'trainno'
      Size = 10
    end
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
    object MasterCdsfrom_cities_id: TIntegerField
      FieldName = 'from_cities_id'
    end
    object MasterCdsto_cities_id: TIntegerField
      FieldName = 'to_cities_id'
    end
    object MasterCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
    object MasterCdsdeparture: TSQLTimeStampField
      FieldName = 'departure'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdsarrival: TSQLTimeStampField
      FieldName = 'arrival'
      DisplayFormat = 'hh:mm'
    end
    object MasterCdsvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCdsmastertickets_id: TIntegerField
      FieldName = 'mastertickets_id'
    end
    object MasterCdsnoofpax_resident: TIntegerField
      FieldName = 'noofpax_resident'
    end
    object MasterCdsfrom_trainstations_id: TIntegerField
      FieldName = 'from_trainstations_id'
    end
    object MasterCdsto_trainstations_id: TIntegerField
      FieldName = 'to_trainstations_id'
    end
    object MasterCdsquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object MasterCdsduration: TStringField
      FieldName = 'duration'
      Size = 254
    end
    object MasterCdsnocancelled_resident: TIntegerField
      FieldName = 'nocancelled_resident'
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
    object MasterCdsLeadpax: TStringField
      FieldName = 'Leadpax'
      Size = 50
    end
    object MasterCdsFromStations_id: TIntegerField
      FieldName = 'FromStations_id'
    end
    object MasterCdsToStations_id: TIntegerField
      FieldName = 'ToStations_id'
    end
  end
  inherited Detail1Sds: TSQLDataSet
    CommandText = 'itineraryticketstours'
    CommandType = ctTable
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'itinerarytickets_id'
        ParamType = ptInput
        Value = 3584
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 208
    Top = 8
  end
  inherited Detail1DataSetProvider: TDataSetProvider
    DataSet = Detail1Sds
    Left = 232
    Top = 8
  end
  inherited Detail1DS: TDataSource
    DataSet = Detail1Cds
    Left = 272
    Top = 8
  end
  inherited Detail1Cds: TClientDataSet
    IndexFieldNames = 'itinerarytickets_id'
    MasterFields = 'itinerarytickets_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 248
    Top = 8
    object Detail1Cdsitineraryticketstours_id: TIntegerField
      FieldName = 'itineraryticketstours_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Detail1Cdsitinerarytickets_id: TIntegerField
      FieldName = 'itinerarytickets_id'
    end
    object Detail1Cdstourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
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
    Left = 504
    Top = 120
  end
  object AgentDsp: TDataSetProvider
    DataSet = AgentSds
    Left = 520
    Top = 120
  end
  object AgentCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Cities_id'
    MasterFields = 'Cities_id'
    MasterSource = BackOfficeDataModule.AgentCityDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDsp'
    Left = 536
    Top = 120
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
    Left = 560
    Top = 120
  end
  object ClassSds: TSQLDataSet
    CommandText = 
      'SELECT Class_id, class, tickets_id FROM class WHERE tickets_id =' +
      ' :tickets_id ORDER BY class'#13#10
    DataSource = BackOfficeDataModule.TicketsDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'tickets_id'
        ParamType = ptInput
        Value = 0
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 704
    Top = 104
  end
  object ClassDsp: TDataSetProvider
    DataSet = ClassSds
    Left = 718
    Top = 105
  end
  object ClassCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'tickets_id'
    MasterFields = 'tickets_id'
    MasterSource = BackOfficeDataModule.TicketsDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ClassDsp'
    Left = 736
    Top = 104
    object ClassCdsClass_id: TIntegerField
      FieldName = 'Class_id'
    end
    object ClassCdsclass: TStringField
      FieldName = 'class'
      Size = 30
    end
    object ClassCdstickets_id: TIntegerField
      FieldName = 'tickets_id'
    end
  end
  object ClassDs: TDataSource
    DataSet = ClassCds
    Left = 748
    Top = 104
  end
  object TourCodeSds: TSQLDataSet
    CommandText = 
      'SELECT b.TourCodes_id, b.Tourcode , I.Itineraries_id'#13#10'FROM TourC' +
      'alendar A, TourCodes B, Itineraries I'#13#10'WHERE I.Itineraries_id = ' +
      ':Itineraries_id'#13#10'AND A.MASTERS_ID = I.Masters_id'#13#10'AND A.TOURCODE' +
      'S_ID = B.TOURCODES_ID'#13#10'ORDER BY B.TOURCODE'#13#10
    DataSource = ItineraryForm.ItinTicketsDs
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'Itineraries_id'
        ParamType = ptInput
      end>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 480
    Top = 216
  end
  object TourCodeDsp: TDataSetProvider
    DataSet = TourCodeSds
    Left = 496
    Top = 216
  end
  object TourCodeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Itineraries_id'
    MasterFields = 'Itineraries_id'
    MasterSource = ItineraryForm.ItinTicketsDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'TourCodeDsp'
    Left = 512
    Top = 216
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
    Left = 528
    Top = 216
  end
  object VoucherNoSds: TSQLDataSet
    CommandText = 'Select vouchers_id, yearref, voucherno From vouchers'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 248
    Top = 285
  end
  object VoucherNoDsp: TDataSetProvider
    DataSet = VoucherNoSds
    Left = 264
    Top = 285
  end
  object VoucherNoCds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'VoucherNoDsp'
    Left = 280
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
    Left = 296
    Top = 285
  end
end
