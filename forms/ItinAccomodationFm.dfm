inherited ItinAccomodationForm: TItinAccomodationForm
  Left = 204
  Top = 125
  Width = 720
  Height = 564
  Caption = 'Itinerary - Accomodation'
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 489
    Width = 712
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel
    Width = 712
    Height = 489
    inherited Label2: TLabel
      Top = 164
    end
    inherited Label3: TLabel
      Left = 12
      Top = 10
      Width = 22
      Caption = 'City'
    end
    inherited Label4: TLabel
      Left = 292
      Top = 12
      Width = 31
      Caption = 'Hotel'
    end
    inherited Label5: TLabel
      Left = 12
      Top = 43
      Width = 43
      Caption = 'Date In'
    end
    inherited Label6: TLabel
      Left = 292
      Top = 40
      Width = 52
      Caption = 'Date Out'
    end
    inherited Label7: TLabel
      Left = 12
      Top = 76
      Width = 65
      Caption = 'Room Type'
    end
    inherited Label8: TLabel
      Left = 12
      Top = 104
      Width = 34
      Caption = 'Agent'
    end
    inherited Label9: TLabel
      Left = 292
      Top = 70
      Width = 23
      Caption = 'A/C'
    end
    inherited Label10: TLabel
      Left = 612
      Top = 72
      Visible = False
    end
    inherited Label11: TLabel
      Left = 628
      Top = 74
      Visible = False
    end
    inherited Label12: TLabel
      Left = 12
      Top = 132
      Width = 53
      Caption = 'MealPlan'
    end
    inherited Label13: TLabel
      Left = 645
      Top = 78
      Visible = False
    end
    inherited GroupBox1: TGroupBox
      Left = 297
      Top = 121
      Width = 411
      Height = 102
      Align = alNone
      TabOrder = 9
      inherited Label1: TLabel
        Left = 220
      end
      inherited DBGrid1: TDBGrid
        Width = 208
        Height = 85
        Columns = <
          item
            Expanded = False
            FieldName = 'itineraryaccommodationtours_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itineraryaccommodation_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'tourcodes_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TourCodeLookUp'
            Title.Caption = 'Tour Code'
            Width = 190
            Visible = True
          end>
      end
      inherited DBEdit1: TDBEdit
        Left = 219
        DataField = 'tours'
      end
    end
    inherited DBMemo1: TDBMemo
      Left = 79
      Top = 164
      Width = 215
      DataField = 'remarks'
      TabOrder = 8
    end
    inherited DBEdit6: TDBEdit
      Left = 560
      Top = 24
      TabOrder = 13
      Visible = False
    end
    inherited DBEdit5: TDBEdit
      Left = 576
      Top = 24
      TabOrder = 14
      Visible = False
    end
    inherited DBEdit4: TDBEdit
      Left = 576
      Top = 48
      TabOrder = 15
      Visible = False
    end
    inherited DBEdit3: TDBEdit
      Left = 352
      Top = 40
      DataField = 'dateout'
      DataSource = MasterDS
      TabOrder = 3
    end
    inherited DBEdit2: TDBEdit
      Left = 79
      Top = 40
      DataField = 'datein'
      DataSource = MasterDS
      TabOrder = 2
    end
    inherited DBLookupComboBox4: TDBLookupComboBox
      Left = 79
      Top = 102
      Width = 209
      DataField = 'agent_addressbook_id'
      DataSource = MasterDS
      KeyField = 'Addressbook_id'
      ListField = 'organisation'
      ListSource = AgentDS
      TabOrder = 6
    end
    inherited DBLookupComboBox3: TDBLookupComboBox
      Left = 79
      Top = 71
      Width = 164
      DataField = 'roomtypes_id'
      DataSource = MasterDS
      KeyField = 'RoomTypes_id'
      ListField = 'RoomType'
      ListSource = RoomTypeDS
      TabOrder = 4
    end
    inherited DBLookupComboBox2: TDBLookupComboBox
      Left = 352
      Top = 8
      Width = 215
      DataField = 'addressbook_id'
      DataSource = MasterDS
      KeyField = 'Addressbook_id'
      ListField = 'organisation'
      ListSource = HotelDS
      TabOrder = 1
    end
    inherited DBLookupComboBox1: TDBLookupComboBox
      Left = 79
      Top = 8
      Width = 152
      KeyField = 'Cities_id'
      ListField = 'City'
      ListSource = CityDS
      TabOrder = 0
    end
    inherited DBLookupComboBox5: TDBLookupComboBox
      Left = 79
      Top = 133
      Width = 148
      DataField = 'mealplans_id'
      DataSource = MasterDS
      KeyField = 'Mealplans_id'
      ListField = 'Plan'
      ListSource = MealPlanDS
      TabOrder = 7
    end
    inherited DBLookupComboBox6: TDBLookupComboBox
      Left = 560
      Top = 0
      TabOrder = 16
      Visible = False
    end
    object DBCheckBox1: TDBCheckBox
      Left = 352
      Top = 72
      Width = 15
      Height = 17
      DataField = 'ac'
      DataSource = MasterDS
      TabOrder = 5
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object GroupBox2: TGroupBox
      Left = 6
      Top = 222
      Width = 701
      Height = 91
      TabOrder = 10
      object Label14: TLabel
        Left = 12
        Top = 16
        Width = 120
        Height = 13
        Caption = 'Estimated No. of Pax'
      end
      object Label15: TLabel
        Left = 12
        Top = 40
        Width = 101
        Height = 13
        Caption = 'Estimated Singles'
      end
      object Label16: TLabel
        Left = 12
        Top = 64
        Width = 106
        Height = 13
        Caption = 'Estimated Doubles'
      end
      object Label17: TLabel
        Left = 252
        Top = 16
        Width = 101
        Height = 13
        Caption = 'Actual No. of Pax'
      end
      object Label18: TLabel
        Left = 252
        Top = 40
        Width = 82
        Height = 13
        Caption = 'Actual Singles'
      end
      object Label19: TLabel
        Left = 252
        Top = 64
        Width = 87
        Height = 13
        Caption = 'Actual Doubles'
      end
      object Label20: TLabel
        Left = 483
        Top = 16
        Width = 72
        Height = 13
        Caption = 'Voucher No.'
      end
      object Label21: TLabel
        Left = 483
        Top = 40
        Width = 104
        Height = 13
        Caption = 'Generate Voucher'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 592
        Top = 38
        Width = 17
        Height = 17
        DataField = 'generatevoucher'
        DataSource = MasterDS
        TabOrder = 7
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit7: TDBEdit
        Left = 139
        Top = 13
        Width = 85
        Height = 21
        DataField = 'estimatednoofpax'
        DataSource = MasterDS
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 139
        Top = 37
        Width = 85
        Height = 21
        DataField = 'estimatednoofsingles'
        DataSource = MasterDS
        TabOrder = 2
      end
      object DBEdit9: TDBEdit
        Left = 139
        Top = 63
        Width = 85
        Height = 21
        DataField = 'estimatednoofdoubles'
        DataSource = MasterDS
        TabOrder = 4
      end
      object DBEdit10: TDBEdit
        Left = 361
        Top = 14
        Width = 85
        Height = 21
        DataField = 'noofpax'
        DataSource = MasterDS
        TabOrder = 1
      end
      object DBEdit11: TDBEdit
        Left = 361
        Top = 40
        Width = 85
        Height = 21
        DataField = 'noofsingles'
        DataSource = MasterDS
        TabOrder = 3
      end
      object DBEdit12: TDBEdit
        Left = 361
        Top = 63
        Width = 85
        Height = 21
        DataField = 'noofdoubles'
        DataSource = MasterDS
        TabOrder = 5
      end
      object DBEdit13: TDBEdit
        Left = 590
        Top = 12
        Width = 85
        Height = 21
        Color = cl3DLight
        DataField = 'VoucherNoLookUp'
        DataSource = MasterDS
        Enabled = False
        TabOrder = 6
      end
    end
    object GroupBox3: TGroupBox
      Left = 4
      Top = 312
      Width = 702
      Height = 112
      TabOrder = 11
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 347
        Height = 95
        Align = alLeft
        DataSource = ItinerariesClientsDS
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'itinerariesclients_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itineraryaccommodation_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itinerarytickets_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itineraryservices_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itinerarytransport_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itinerarypackages_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'bookingsclients_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PaxLookUp'
            Title.Caption = 'Pax'
            Width = 320
            Visible = True
          end>
      end
      object DBGrid3: TDBGrid
        Left = 353
        Top = 15
        Width = 347
        Height = 95
        Align = alRight
        DataSource = ItinerariesPaxDS
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'itinerariespax_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itineraryaccommodation_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itinerarytickets_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itineraryservices_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itinerarytransport_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itinerarypackages_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'paxcategories_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PaxCatagoryLookUp'
            Title.Caption = 'Pax Catagory'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'booked'
            Title.Caption = 'Booked'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cancelled'
            Title.Caption = 'Cancelled'
            Visible = True
          end>
      end
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 435
      Width = 710
      Height = 53
      Align = alBottom
      TabOrder = 12
      object Label24: TLabel
        Left = 7
        Top = 23
        Width = 44
        Height = 13
        Caption = 'Booked'
      end
      object Label25: TLabel
        Left = 172
        Top = 23
        Width = 54
        Height = 13
        Caption = 'Reminder'
      end
      object Label26: TLabel
        Left = 353
        Top = 23
        Width = 57
        Height = 13
        Caption = 'Confirmed'
      end
      object Label27: TLabel
        Left = 537
        Top = 23
        Width = 57
        Height = 13
        Caption = 'Cancelled'
      end
      object DBEdit14: TDBEdit
        Left = 57
        Top = 20
        Width = 95
        Height = 21
        DataField = 'booked'
        DataSource = MasterDS
        TabOrder = 0
      end
      object DBEdit15: TDBEdit
        Left = 232
        Top = 20
        Width = 95
        Height = 21
        DataField = 'reminder'
        DataSource = MasterDS
        TabOrder = 1
      end
      object DBEdit16: TDBEdit
        Left = 419
        Top = 20
        Width = 95
        Height = 21
        DataField = 'confirmed'
        DataSource = MasterDS
        TabOrder = 2
      end
      object DBEdit17: TDBEdit
        Left = 599
        Top = 20
        Width = 95
        Height = 21
        DataField = 'cancelled'
        DataSource = MasterDS
        TabOrder = 3
      end
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 368
    Top = 88
    inherited Clear1: TMenuItem
      OnClick = Clear1Click
    end
  end
  inherited MasterTable: TSQLTable
    TableName = 'itineraryaccommodation'
    Left = 408
    Top = 96
  end
  inherited MasterToursTable: TSQLTable
    TableName = 'itineraryaccommodationtours'
    Left = 496
    Top = 96
  end
  inherited MasterDSP: TDataSetProvider
    Left = 441
    Top = 98
  end
  inherited MasterToursDSP: TDataSetProvider
    Left = 529
    Top = 98
  end
  inherited MasterDS: TDataSource
    Left = 409
    Top = 67
  end
  inherited MasterToursDS: TDataSource
    Left = 497
    Top = 67
  end
  inherited MasterCDS: TClientDataSet
    IndexFieldNames = 'itineraries_id'
    MasterFields = 'Itineraries_id'
    MasterSource = ItineraryForm.GridDS2
    PacketRecords = 0
    AfterInsert = MasterCDSAfterInsert
    AfterScroll = MasterCDSAfterScroll
    Left = 441
    Top = 67
    object MasterCDSitineraryaccommodation_id: TIntegerField
      FieldName = 'itineraryaccommodation_id'
    end
    object MasterCDSitineraries_id: TIntegerField
      FieldName = 'itineraries_id'
    end
    object MasterCDSaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCDSdatein: TSQLTimeStampField
      FieldName = 'datein'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCDSdateout: TSQLTimeStampField
      FieldName = 'dateout'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCDStours: TStringField
      FieldName = 'tours'
      Size = 50
    end
    object MasterCDSremarks: TStringField
      FieldName = 'remarks'
      Size = 255
    end
    object MasterCDSestimatednoofsingles: TIntegerField
      FieldName = 'estimatednoofsingles'
    end
    object MasterCDSestimatednoofdoubles: TIntegerField
      FieldName = 'estimatednoofdoubles'
    end
    object MasterCDSnoofsingles: TIntegerField
      FieldName = 'noofsingles'
    end
    object MasterCDSnoofdoubles: TIntegerField
      FieldName = 'noofdoubles'
    end
    object MasterCDSac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCDSextrabeds: TIntegerField
      FieldName = 'extrabeds'
    end
    object MasterCDSnooftriples: TIntegerField
      FieldName = 'nooftriples'
    end
    object MasterCDSroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object MasterCDSmealplans_id: TIntegerField
      FieldName = 'mealplans_id'
    end
    object MasterCDSgeneratevoucher: TBooleanField
      FieldName = 'generatevoucher'
    end
    object MasterCDSestimatednoofpax: TIntegerField
      FieldName = 'estimatednoofpax'
    end
    object MasterCDSnoofpax: TIntegerField
      FieldName = 'noofpax'
    end
    object MasterCDSagent_addressbook_id: TIntegerField
      FieldName = 'agent_addressbook_id'
    end
    object MasterCDSbooked: TSQLTimeStampField
      FieldName = 'booked'
    end
    object MasterCDSreminder: TSQLTimeStampField
      FieldName = 'reminder'
    end
    object MasterCDSconfirmed: TSQLTimeStampField
      FieldName = 'confirmed'
    end
    object MasterCDScancelled: TSQLTimeStampField
      FieldName = 'cancelled'
    end
    object MasterCDSexpectedcost: TBCDField
      FieldName = 'expectedcost'
      Precision = 10
      Size = 2
    end
    object MasterCDSmasteraccommodation_id: TIntegerField
      FieldName = 'masteraccommodation_id'
    end
    object MasterCDSvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object MasterCDSquoted: TBCDField
      FieldName = 'quoted'
      Precision = 10
      Size = 2
    end
    object MasterCDSeta: TSQLTimeStampField
      FieldName = 'eta'
    end
    object MasterCDSVoucherNoLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'VoucherNoLookUp'
      LookupDataSet = VouNoCDS
      LookupKeyFields = 'vouchers_id'
      LookupResultField = 'voucherno'
      KeyFields = 'vouchers_id'
      Size = 80
      Lookup = True
    end
  end
  inherited MasterToursCDS: TClientDataSet
    IndexFieldNames = 'itineraryaccommodation_id'
    MasterFields = 'itineraryaccommodation_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Left = 529
    Top = 67
    object MasterToursCDSitineraryaccommodationtours_id: TIntegerField
      FieldName = 'itineraryaccommodationtours_id'
    end
    object MasterToursCDSitineraryaccommodation_id: TIntegerField
      FieldName = 'itineraryaccommodation_id'
    end
    object MasterToursCDStourcodes_id: TIntegerField
      FieldName = 'tourcodes_id'
    end
    object MasterToursCDSTourCodeLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'TourCodeLookUp'
      LookupDataSet = TourCodeCDS
      LookupKeyFields = 'TourCodes_id'
      LookupResultField = 'Tourcode'
      KeyFields = 'tourcodes_id'
      Size = 80
      Lookup = True
    end
  end
  object ItinerariesClientsDS: TDataSource
    DataSet = ItinerariesClientsCDS
    Left = 170
    Top = 347
  end
  object ItinerariesClientsCDS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'itineraryaccommodation_id'
    MasterFields = 'itineraryaccommodation_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ItinerariesClientsDSP'
    Left = 202
    Top = 347
    object ItinerariesClientsCDSitinerariesclients_id: TIntegerField
      FieldName = 'itinerariesclients_id'
    end
    object ItinerariesClientsCDSitineraryaccommodation_id: TIntegerField
      FieldName = 'itineraryaccommodation_id'
    end
    object ItinerariesClientsCDSitinerarytickets_id: TIntegerField
      FieldName = 'itinerarytickets_id'
    end
    object ItinerariesClientsCDSitineraryservices_id: TIntegerField
      FieldName = 'itineraryservices_id'
    end
    object ItinerariesClientsCDSitinerarytransport_id: TIntegerField
      FieldName = 'itinerarytransport_id'
    end
    object ItinerariesClientsCDSitinerarypackages_id: TIntegerField
      FieldName = 'itinerarypackages_id'
    end
    object ItinerariesClientsCDSbookingsclients_id: TIntegerField
      FieldName = 'bookingsclients_id'
    end
    object ItinerariesClientsCDSPaxLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'PaxLookUp'
      LookupDataSet = ClientsCDS
      LookupKeyFields = 'BookingsClients_id'
      LookupResultField = 'Paxnamedate'
      KeyFields = 'bookingsclients_id'
      Size = 80
      Lookup = True
    end
  end
  object ItinerariesClientsDSP: TDataSetProvider
    DataSet = ItinerariesClientsTbl
    Left = 202
    Top = 378
  end
  object ItinerariesClientsTbl: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    TableName = 'itinerariesclients'
    Left = 169
    Top = 376
  end
  object ItinerariesPaxDS: TDataSource
    DataSet = ItinerariesPaxCDS
    Left = 562
    Top = 339
  end
  object ItinerariesPaxCDS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'itineraryaccommodation_id'
    MasterFields = 'itineraryaccommodation_id'
    MasterSource = MasterDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'ItinerariesPaxDSP'
    AfterInsert = ItinerariesPaxCDSAfterInsert
    BeforePost = ItinerariesPaxCDSBeforePost
    AfterPost = ItinerariesPaxCDSAfterPost
    Left = 594
    Top = 339
    object ItinerariesPaxCDSitinerariespax_id: TIntegerField
      FieldName = 'itinerariespax_id'
    end
    object ItinerariesPaxCDSitineraryaccommodation_id: TIntegerField
      FieldName = 'itineraryaccommodation_id'
    end
    object ItinerariesPaxCDSitinerarytickets_id: TIntegerField
      FieldName = 'itinerarytickets_id'
    end
    object ItinerariesPaxCDSitineraryservices_id: TIntegerField
      FieldName = 'itineraryservices_id'
    end
    object ItinerariesPaxCDSitinerarytransport_id: TIntegerField
      FieldName = 'itinerarytransport_id'
    end
    object ItinerariesPaxCDSitinerarypackages_id: TIntegerField
      FieldName = 'itinerarypackages_id'
    end
    object ItinerariesPaxCDSpaxcategories_id: TIntegerField
      FieldName = 'paxcategories_id'
    end
    object ItinerariesPaxCDSbooked: TIntegerField
      FieldName = 'booked'
    end
    object ItinerariesPaxCDScancelled: TIntegerField
      FieldName = 'cancelled'
    end
    object ItinerariesPaxCDSPaxCatagoryLookUp: TStringField
      FieldKind = fkLookup
      FieldName = 'PaxCatagoryLookUp'
      LookupDataSet = PaxCatagoriesCDS
      LookupKeyFields = 'paxcategories_id'
      LookupResultField = 'category'
      KeyFields = 'paxcategories_id'
      Size = 80
      Lookup = True
    end
  end
  object ItinerariesPaxDSP: TDataSetProvider
    DataSet = ItinerariesPaxTbl
    Left = 594
    Top = 370
  end
  object ItinerariesPaxTbl: TSQLTable
    MaxBlobSize = -1
    SQLConnection = BackOfficeDataModule.SQLConnection
    TableName = 'itinerariespax'
    Left = 561
    Top = 368
  end
  object PaxCatagoriesQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT paxcategories_id, category from paxcategories'
      'WHERE tickets_id = 0'
      'ORDER BY  category'
      '')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 635
    Top = 370
  end
  object PaxCatagoriesDSP: TDataSetProvider
    DataSet = PaxCatagoriesQry
    Left = 663
    Top = 371
  end
  object PaxCatagoriesCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'PaxCatagoriesDSP'
    Left = 664
    Top = 349
    object PaxCatagoriesCDSpaxcategories_id: TIntegerField
      FieldName = 'paxcategories_id'
    end
    object PaxCatagoriesCDScategory: TStringField
      FieldName = 'category'
      Size = 30
    end
  end
  object ClientsQry: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'itineraryaccommodation_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'itineraryaccommodation_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'itineraryaccommodation_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'itineraryaccommodation_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'itineraryaccommodation_id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'itineraryaccommodation_id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT 1 as val1, BC.BookingsClients_id, '
      'cast('
      
        '  (CASE when bc.male = 1 then '#39'Mr. '#39' + bc.[name] else '#39'Mrs. '#39' + ' +
        ' bc.[name] END) + '#39'  '#39' +'
      
        '  (CASE when bc.dateofbirth is null then cast('#39' '#39' as varchar) el' +
        'se CAST( DATEDIFF(YYYY, cast( bc.dateofbirth as datetime),'
      #9'cast( (select datein FROM itineraryaccommodation'
      
        '        WHERE itineraryaccommodation_id= :itineraryaccommodation' +
        '_id) as datetime) ) AS VARCHAR)'
      '   END) as varchar) as Paxnamedate'
      '   FROM BookingsClients BC, BookingsTours BT, Bookings B'
      '  WHERE BC.Bookings_id = BT.Bookings_id'
      '    AND BC.Bookings_id = B.Bookings_id'
      '    AND BT.TourCode + CAST(BT.TourDate as VARCHAR) IN  '
      
        '                 ( SELECT T.TourCode + CAST((I.DepartureDate+TC.' +
        'DaysOffset) as VARCHAR)'
      '                     FROM itineraryaccommodationtours ITT, '
      '                          itineraryaccommodation IT, '
      '                          tourcodes T, '
      '                          tourcalendar TC, '
      '                          itineraries I'
      
        '                    WHERE ITT.itineraryaccommodation_id = IT.iti' +
        'neraryaccommodation_id'
      '                      AND ITT.TourCodes_id = T.TourCodes_id'
      '                      AND T.TourCodes_id = TC.TourCodes_id'
      '                      AND I.Itineraries_id = IT.Itineraries_id'
      '                      AND I.Masters_id = TC.masters_id'
      
        '                      AND IT.itineraryaccommodation_id = :itiner' +
        'aryaccommodation_id)'
      '   AND B.Cancelled IS NULL'
      '   AND BC.Bookingsclients_id IN '
      
        '  (SELECT bookingsclients_id FROM itinerariesclients WHERE itine' +
        'raryaccommodation_id= :itineraryaccommodation_id)    '
      'UNION '
      
        'SELECT 2 as val1, cast(null as integer) as bookingsclients_id,  ' +
        'cast('#39'**************************'#39' as varchar) as Paxnamedate'
      'UNION'
      'SELECT 3 as val1, BC.BookingsClients_id,'
      
        'cast((case when bc.male = 1 then '#39'Mr. '#39' + bc.name else '#39'Mrs.'#39' + ' +
        'bc.name end) + '#39'  '#39' +'
      
        '     (CASE when bc.dateofbirth is null then cast('#39' '#39' as varchar)' +
        ' else DATEDIFF(YYYY, '
      #9'cast( (select datein FROM itineraryaccommodation'
      
        '        WHERE itineraryaccommodation_id= :itineraryaccommodation' +
        '_id) as datetime) , cast( bc.dateofbirth as datetime) )'
      '   END) as varchar) as Paxnamedate'
      '   FROM BookingsClients BC, BookingsTours BT, Bookings B'
      '  WHERE BC.Bookings_id = BT.Bookings_id'
      '    AND BC.Bookings_id = B.Bookings_id'
      '    AND BT.TourCode + CAST(BT.TourDate as VARCHAR) IN  '
      
        '                 ( SELECT T.TourCode + CAST((I.DepartureDate+TC.' +
        'DaysOffset) as VARCHAR)'
      '                     FROM itineraryaccommodationtours ITT, '
      '                          itineraryaccommodation IT, '
      '                          tourcodes T, '
      '                          tourcalendar TC, '
      '                          itineraries I'
      
        '                    WHERE ITT.itineraryaccommodation_id = IT.iti' +
        'neraryaccommodation_id'
      '                      AND ITT.TourCodes_id = T.TourCodes_id'
      '                      AND T.TourCodes_id = TC.TourCodes_id'
      '                      AND I.Itineraries_id = IT.Itineraries_id'
      '                      AND I.Masters_id = TC.masters_id'
      
        '                      AND IT.itineraryaccommodation_id = :itiner' +
        'aryaccommodation_id)'
      '   AND B.Cancelled IS NULL'
      
        '   AND BC.Bookingsclients_id NOT IN (select bookingsclients_id F' +
        'ROM itinerariesclients WHERE itineraryaccommodation_id= :itinera' +
        'ryaccommodation_id) '
      'order by 1,3'
      ''
      ''
      ''
      ''
      ''
      '')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 275
    Top = 378
  end
  object ClientsDSP: TDataSetProvider
    DataSet = ClientsQry
    Left = 303
    Top = 379
  end
  object ClientsCDS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'ClientsDSP'
    Left = 304
    Top = 357
  end
  object CityDS: TDataSource
    DataSet = CityCDS
    Left = 210
    Top = 65527
  end
  object CityCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'CityDSP'
    Left = 240
    Top = 65529
    object CityCDSCity: TStringField
      FieldName = 'City'
      Size = 50
    end
    object CityCDSCities_id: TIntegerField
      FieldName = 'Cities_id'
    end
  end
  object CityDSP: TDataSetProvider
    DataSet = CityQry
    Left = 240
    Top = 17
  end
  object CityQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT City, Cities_id FROM Cities'
      'WHERE LEN(City) <> 0'
      'ORDER BY City')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 210
    Top = 17
  end
  object HotelQry: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Value = 19
      end>
    SQL.Strings = (
      
        'SELECT organisation, cities_id, Addressbook.Addressbook_id FROM ' +
        '(addressbook LEFT JOIN'
      '     AddressCategories ON addressbook.addressbook_id = '
      '     AddressCategories.addressbook_id) LEFT JOIN'
      '     Categories on AddressCategories.Categories_id = '
      '     Categories.Categories_id WHERE'
      '     Categories.category = '#39'H'#39' '
      '     AND Cities_id = :Cities_id'
      '     ORDER BY organisation'
      '')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 474
    Top = 17
  end
  object HotelDSP: TDataSetProvider
    DataSet = HotelQry
    Left = 504
    Top = 17
  end
  object HotelCDS: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'cities_id'
    MasterFields = 'Cities_id'
    MasterSource = CityDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'HotelDSP'
    Left = 504
    Top = 65529
    object HotelCDSorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object HotelCDSAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object HotelCDScities_id: TIntegerField
      FieldName = 'cities_id'
    end
  end
  object HotelDS: TDataSource
    DataSet = HotelCDS
    Left = 474
    Top = 65527
  end
  object RoomTypeQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT RoomTypes_id, RoomType FROM'
      'RoomTypes ORDER BY RoomType')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 210
    Top = 62
  end
  object RoomTypeDSP: TDataSetProvider
    DataSet = RoomTypeQry
    Left = 240
    Top = 65
  end
  object RoomTypeCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'RoomTypeDSP'
    Left = 240
    Top = 41
    object RoomTypeCDSRoomTypes_id: TIntegerField
      FieldName = 'RoomTypes_id'
    end
    object RoomTypeCDSRoomType: TStringField
      FieldName = 'RoomType'
      Size = 50
    end
  end
  object RoomTypeDS: TDataSource
    DataSet = RoomTypeCDS
    Left = 210
    Top = 39
  end
  object AgentQry: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cities_id'
        ParamType = ptInput
        Value = 19
      end>
    SQL.Strings = (
      
        'SELECT organisation, cities_id, Addressbook.Addressbook_id FROM ' +
        '(addressbook LEFT JOIN'
      '     AddressCategories ON addressbook.addressbook_id = '
      '     AddressCategories.addressbook_id) LEFT JOIN'
      '     Categories on AddressCategories.Categories_id = '
      '     Categories.Categories_id WHERE'
      '     Categories.category = '#39'A'#39' '
      '     AND Cities_id = :Cities_id'
      '     ORDER BY organisation')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 234
    Top = 105
  end
  object AgentDSP: TDataSetProvider
    DataSet = AgentQry
    Left = 264
    Top = 105
  end
  object AgentCDS: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'cities_id'
    MasterFields = 'Cities_id'
    MasterSource = CityDS
    PacketRecords = 0
    Params = <>
    ProviderName = 'AgentDSP'
    Left = 264
    Top = 81
    object AgentCDSorganisation: TStringField
      FieldName = 'organisation'
      Size = 60
    end
    object AgentCDSAddressbook_id: TIntegerField
      FieldName = 'Addressbook_id'
    end
    object AgentCDScities_id: TIntegerField
      FieldName = 'cities_id'
    end
  end
  object AgentDS: TDataSource
    DataSet = AgentCDS
    Left = 234
    Top = 79
  end
  object MealPlanQry: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT Mealplans_id, [Plan] FROM MealPlans'
      'ORDER BY  [Plan]')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 210
    Top = 153
  end
  object MealPlanDSP: TDataSetProvider
    DataSet = MealPlanQry
    Left = 240
    Top = 153
  end
  object MealPlanCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'MealPlanDSP'
    Left = 240
    Top = 129
    object MealPlanCDSMealplans_id: TIntegerField
      FieldName = 'Mealplans_id'
    end
    object MealPlanCDSPlan: TStringField
      FieldName = 'Plan'
      FixedChar = True
      Size = 3
    end
  end
  object MealPlanDS: TDataSource
    DataSet = MealPlanCDS
    Left = 210
    Top = 127
  end
  object VouNoQry: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'vouchers_id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select vouchers_id, yearref, voucherno From vouchers '
      'Where vouchers_id= :vouchers_id')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 644
    Top = 273
  end
  object VouNoDSP: TDataSetProvider
    DataSet = VouNoQry
    Left = 672
    Top = 274
  end
  object VouNoCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'VouNoDSP'
    Left = 672
    Top = 245
    object VouNoCDSvouchers_id: TIntegerField
      FieldName = 'vouchers_id'
    end
    object VouNoCDSyearref: TIntegerField
      FieldName = 'yearref'
    end
    object VouNoCDSvoucherno: TIntegerField
      FieldName = 'voucherno'
    end
  end
  object TourCodeQry: TSQLQuery
    DataSource = ItineraryForm.DepDateDS
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Itineraries_id'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'SELECT distinct TC.TourCodes_id, TC.Tourcode '
      'FROM TourCodes TC'
      #9'INNER JOIN ItineraryAccommodationTours IAT '
      #9#9'INNER JOIN ItineraryAccommodation IA '
      #9#9#9'INNER JOIN Itineraries I '
      #9#9#9#9'ON I.Itineraries_id=IA.Itineraries_id '
      #9#9'ON IA.ItineraryAccommodation_id=IAT.ItineraryAccommodation_id'
      #9'ON IAT.TourCodes_id=TC.TourCodes_id'
      'WHERE I.Itineraries_id=:Itineraries_id'
      'ORDER BY TC.TourCodes_id'
      '')
    SQLConnection = BackOfficeDataModule.SQLConnection
    Left = 448
    Top = 183
  end
  object TourCodeDSP: TDataSetProvider
    DataSet = TourCodeQry
    Left = 480
    Top = 184
  end
  object TourCodeCDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'TourCodeDSP'
    Left = 478
    Top = 155
    object TourCodeCDSTourCodes_id: TIntegerField
      FieldName = 'TourCodes_id'
    end
    object TourCodeCDSTourcode: TStringField
      FieldName = 'Tourcode'
      Size = 10
    end
  end
end
