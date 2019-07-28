inherited BlockBkgRoomsForm: TBlockBkgRoomsForm
  Left = 120
  Top = 124
  Width = 989
  Height = 626
  Caption = 'Block Booking Rooms Form'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TcxGroupBox
    Top = 46
    Caption = ''
    TabOrder = 1
    Height = 458
    Width = 981
    inherited CustomMasterCxGrid: TcxGrid
      Width = 975
      Height = 437
      inherited CustomMasterCxGridDBTableView1: TcxGridDBTableView
        DataController.KeyFieldNames = 'blockbookingrooms_id'
        OptionsView.Indicator = True
        Styles.Background = nil
        Styles.Header = nil
        object CustomMasterCxGridDBTableView1datein: TcxGridDBColumn
          Caption = 'In'
          DataBinding.FieldName = 'datein'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 75
        end
        object CustomMasterCxGridDBTableView1dateout: TcxGridDBColumn
          Caption = 'Out'
          DataBinding.FieldName = 'dateout'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 75
        end
        object CustomMasterCxGridDBTableView1noofnights: TcxGridDBColumn
          Caption = 'No. of Nights'
          DataBinding.FieldName = 'noofnights'
          Width = 97
        end
        object CustomMasterCxGridDBTableView1roomtypes_id: TcxGridDBColumn
          Caption = 'Room Type'
          DataBinding.FieldName = 'roomtypes_id'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'roomtypes_id'
          Properties.ListColumns = <
            item
              FieldName = 'roomtype'
            end
            item
              FieldName = 'AC'
            end>
          Properties.ListSource = RoomTypeDs
          Width = 97
        end
        object CustomMasterCxGridDBTableView1ac: TcxGridDBColumn
          Caption = 'A/C'
          DataBinding.FieldName = 'ac'
          Width = 47
        end
        object CustomMasterCxGridDBTableView1noofrooms: TcxGridDBColumn
          Caption = 'Blocked'
          DataBinding.FieldName = 'noofrooms'
          Width = 71
        end
        object CustomMasterCxGridDBTableView1noconfirmed: TcxGridDBColumn
          Caption = 'No. Confirmed'
          DataBinding.FieldName = 'noconfirmed'
          Width = 103
        end
        object CustomMasterCxGridDBTableView1tourref: TcxGridDBColumn
          Caption = 'Tour Number'
          DataBinding.FieldName = 'tourref'
          Width = 96
        end
        object CustomMasterCxGridDBTableView1reservedon: TcxGridDBColumn
          Caption = 'Reserved On'
          DataBinding.FieldName = 'reservedon'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 98
        end
        object CustomMasterCxGridDBTableView1confirmedon: TcxGridDBColumn
          Caption = 'Confirmed On'
          DataBinding.FieldName = 'confirmedon'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 98
        end
        object CustomMasterCxGridDBTableView1cancelledon: TcxGridDBColumn
          Caption = 'Cancelled On'
          DataBinding.FieldName = 'cancelledon'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          Width = 98
        end
      end
    end
  end
  inherited Panel1: TPanel
    Top = 504
    Width = 981
    Height = 88
    TabOrder = 2
    inherited KeyIdDbText: TDBText
      Left = 787
      Top = 61
      DataField = 'blockbookingrooms_id'
    end
    inherited SearchLbl: TcxLabel
      Top = 56
      Visible = False
    end
    inherited SearchEdit: TcxTextEdit
      Top = 52
      TabOrder = 2
      Visible = False
    end
    inherited CloseBtn: TcxButton
      Left = 873
      Top = 54
    end
    object GroupBox3: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = ' Set for current agent and date range '
      TabOrder = 0
      Height = 47
      Width = 979
      object SpeedButton1: TSpeedButton
        Left = 161
        Top = 21
        Width = 26
        Height = 20
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 418
        Top = 22
        Width = 26
        Height = 20
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 672
        Top = 21
        Width = 26
        Height = 21
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 933
        Top = 23
        Width = 26
        Height = 20
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        OnClick = SpeedButton4Click
      end
      object Label6: TcxLabel
        Left = 5
        Top = 25
        Caption = 'No.Confirmed'
        Transparent = True
      end
      object Label7: TcxLabel
        Left = 220
        Top = 25
        Caption = 'Confirmed on'
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 480
        Top = 25
        Caption = 'Reserved on'
        Transparent = True
      end
      object Label9: TcxLabel
        Left = 734
        Top = 25
        Caption = 'Cancelled on'
        Transparent = True
      end
      object NumConfirmed: TcxTextEdit
        Left = 88
        Top = 21
        Style.Color = 16247513
        TabOrder = 0
        Width = 66
      end
      object ConfirmedDate: TcxDateEdit
        Left = 300
        Top = 22
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 1
        Width = 111
      end
      object ReservedDate: TcxDateEdit
        Left = 557
        Top = 22
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 2
        Width = 111
      end
      object CancelledDate: TcxDateEdit
        Left = 814
        Top = 22
        Properties.ShowTime = False
        Style.Color = 16247513
        TabOrder = 3
        Width = 111
      end
    end
    object cxButton1: TcxButton
      Left = 222
      Top = 54
      Width = 129
      Height = 25
      Caption = 'Regenerate'
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 481
      Top = 54
      Width = 80
      Height = 25
      Caption = 'Print'
      TabOrder = 4
      OnClick = cxButton2Click
    end
  end
  inherited Panel2: TPanel
    Width = 981
    Height = 46
    TabOrder = 0
    object GroupBox2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      TabOrder = 0
      Height = 44
      Width = 979
      object Label1: TcxLabel
        Left = 10
        Top = 24
        Caption = 'City'
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 250
        Top = 24
        Caption = 'Hotel'
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 647
        Top = 24
        Caption = 'From'
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 820
        Top = 24
        Caption = 'To'
        Transparent = True
      end
      object CityLCMB: TcxLookupComboBox
        Left = 42
        Top = 21
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'cities_id'
        Properties.ListColumns = <
          item
            Caption = 'City'
            MinWidth = 150
            FieldName = 'city'
          end
          item
            Caption = 'State'
            MinWidth = 150
            FieldName = 'state'
          end>
        Properties.ListSource = BackOfficeDataModule.CitiesDS
        Properties.ValidateOnEnter = False
        Properties.OnCloseUp = CityLCMBPropertiesCloseUp
        Properties.OnEditValueChanged = CityLCMBPropertiesEditValueChanged
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 0
        OnExit = CityLCMBExit
        OnKeyPress = CityLCMBKeyPress
        Width = 169
      end
      object FromDateEdit: TcxDateEdit
        Left = 688
        Top = 21
        EditValue = 36526d
        Style.Color = 16247513
        TabOrder = 2
        OnExit = FromDateEditExit
        OnKeyPress = FromDateEditKeyPress
        Width = 121
      end
      object ToDateEdit: TcxDateEdit
        Left = 840
        Top = 21
        EditValue = 36526d
        Style.Color = 16247513
        TabOrder = 3
        OnExit = ToDateEditExit
        OnKeyPress = ToDateEditKeyPress
        Width = 121
      end
      object HotelLCMB: TcxLookupComboBox
        Left = 290
        Top = 21
        Properties.DropDownWidth = 300
        Properties.KeyFieldNames = 'Addressbook_id'
        Properties.ListColumns = <
          item
            FieldName = 'Organisation'
          end>
        Properties.ListSource = HotelDs
        Properties.ValidateOnEnter = False
        Properties.OnEditValueChanged = HotelLCMBPropertiesEditValueChanged
        EditValue = 0
        Style.Color = 16247513
        TabOrder = 1
        OnExit = CityLCMBExit
        OnKeyPress = CityLCMBKeyPress
        Width = 300
      end
    end
  end
  inherited MasterSDS: TSQLDataSet
    CommandText = 'blockbookingrooms'
    Left = 712
    Top = 336
  end
  inherited DataSetProvider: TDataSetProvider
    Left = 744
    Top = 336
  end
  inherited MasterDS: TDataSource
    Left = 808
    Top = 336
  end
  inherited MasterCds: TClientDataSet
    AfterInsert = MasterCdsAfterInsert
    Left = 776
    Top = 336
    object MasterCdsblockbookingrooms_id: TIntegerField
      FieldName = 'blockbookingrooms_id'
    end
    object MasterCdsaddressbook_id: TIntegerField
      FieldName = 'addressbook_id'
    end
    object MasterCdsdatein: TSQLTimeStampField
      FieldName = 'datein'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdsdateout: TSQLTimeStampField
      FieldName = 'dateout'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdsnoofnights: TIntegerField
      FieldName = 'noofnights'
    end
    object MasterCdsnoofrooms: TIntegerField
      FieldName = 'noofrooms'
    end
    object MasterCdstourref: TStringField
      FieldName = 'tourref'
      Size = 10
    end
    object MasterCdsreservedby: TStringField
      FieldName = 'reservedby'
      Size = 30
    end
    object MasterCdsreservedon: TSQLTimeStampField
      FieldName = 'reservedon'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdsconfirmedon: TSQLTimeStampField
      FieldName = 'confirmedon'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdscancelledon: TSQLTimeStampField
      FieldName = 'cancelledon'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MasterCdsnoconfirmed: TIntegerField
      FieldName = 'noconfirmed'
    end
    object MasterCdsroomtypes_id: TIntegerField
      FieldName = 'roomtypes_id'
    end
    object MasterCdsac: TBooleanField
      FieldName = 'ac'
    end
    object MasterCdsmasters_id: TIntegerField
      FieldName = 'masters_id'
    end
  end
  object HotelSds: TSQLDataSet
    CommandText = 
      'select * from dbo.fn_addressbook(2,'#39'H'#39') where cities_id = :Citie' +
      's_id'#13#10
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
    Top = 8
  end
  object HotelDsp: TDataSetProvider
    DataSet = HotelSds
    Left = 448
    Top = 8
  end
  object HotelCds: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'HotelDsp'
    BeforeInsert = MasterCdsBeforeInsert
    BeforeEdit = MasterCdsBeforeEdit
    BeforePost = MasterCdsBeforePost
    AfterPost = MasterCdsAfterPost
    BeforeDelete = MasterCdsBeforeDelete
    AfterDelete = MasterCdsAfterDelete
    Left = 464
    Top = 8
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
    Top = 8
  end
  object RoomTypeSds: TSQLDataSet
    CommandText = 
      'SELECT RoomTypes_id, RoomType, Addressbook_id, AC FROM dbo.fn_Ge' +
      'tHotelRoomTypes(:addressbook_id)'
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
    Left = 432
    Top = 88
  end
  object RoomTypeDsp: TDataSetProvider
    DataSet = RoomTypeSds
    Left = 448
    Top = 88
  end
  object RoomTypeCds: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'Addressbook_id'
    MasterFields = 'Addressbook_id'
    MasterSource = HotelDs
    PacketRecords = 0
    Params = <>
    ProviderName = 'RoomTypeDsp'
    Left = 464
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
    Left = 480
    Top = 88
  end
end
